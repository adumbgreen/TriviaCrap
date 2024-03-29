// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class ActivityChooserModel extends DataSetObservable
{

    private static final String ATTRIBUTE_ACTIVITY = "activity";
    private static final String ATTRIBUTE_TIME = "time";
    private static final String ATTRIBUTE_WEIGHT = "weight";
    private static final boolean DEBUG = false;
    private static final int DEFAULT_ACTIVITY_INFLATION = 5;
    private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1F;
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
    private static final String HISTORY_FILE_EXTENSION = ".xml";
    private static final int INVALID_INDEX = -1;
    private static final String LOG_TAG = android/support/v7/internal/widget/ActivityChooserModel.getSimpleName();
    private static final String TAG_HISTORICAL_RECORD = "historical-record";
    private static final String TAG_HISTORICAL_RECORDS = "historical-records";
    private static final Map sDataModelRegistry = new HashMap();
    private static final Object sRegistryLock = new Object();
    private final List mActivities = new ArrayList();
    private OnChooseActivityListener mActivityChoserModelPolicy;
    private ActivitySorter mActivitySorter;
    private boolean mCanReadHistoricalData;
    private final Context mContext;
    private final List mHistoricalRecords = new ArrayList();
    private boolean mHistoricalRecordsChanged;
    private final String mHistoryFileName;
    private int mHistoryMaxSize;
    private final Object mInstanceLock = new Object();
    private Intent mIntent;
    private boolean mReadShareHistoryCalled;
    private boolean mReloadActivities;

    private ActivityChooserModel(Context context, String s)
    {
        mActivitySorter = new DefaultSorter();
        mHistoryMaxSize = 50;
        mCanReadHistoricalData = true;
        mReadShareHistoryCalled = false;
        mHistoricalRecordsChanged = true;
        mReloadActivities = false;
        mContext = context.getApplicationContext();
        if (!TextUtils.isEmpty(s) && !s.endsWith(".xml"))
        {
            mHistoryFileName = (new StringBuilder()).append(s).append(".xml").toString();
            return;
        } else
        {
            mHistoryFileName = s;
            return;
        }
    }

    private boolean addHisoricalRecord(HistoricalRecord historicalrecord)
    {
        boolean flag = mHistoricalRecords.add(historicalrecord);
        if (flag)
        {
            mHistoricalRecordsChanged = true;
            pruneExcessiveHistoricalRecordsIfNeeded();
            persistHistoricalDataIfNeeded();
            sortActivitiesIfNeeded();
            notifyChanged();
        }
        return flag;
    }

    private void ensureConsistentState()
    {
        boolean flag = loadActivitiesIfNeeded() | readHistoricalDataIfNeeded();
        pruneExcessiveHistoricalRecordsIfNeeded();
        if (flag)
        {
            sortActivitiesIfNeeded();
            notifyChanged();
        }
    }

    private void executePersistHistoryAsyncTaskBase()
    {
        PersistHistoryAsyncTask persisthistoryasynctask = new PersistHistoryAsyncTask();
        Object aobj[] = new Object[2];
        aobj[0] = new ArrayList(mHistoricalRecords);
        aobj[1] = mHistoryFileName;
        persisthistoryasynctask.execute(aobj);
    }

    private void executePersistHistoryAsyncTaskSDK11()
    {
        PersistHistoryAsyncTask persisthistoryasynctask = new PersistHistoryAsyncTask();
        java.util.concurrent.Executor executor = AsyncTask.SERIAL_EXECUTOR;
        Object aobj[] = new Object[2];
        aobj[0] = new ArrayList(mHistoricalRecords);
        aobj[1] = mHistoryFileName;
        persisthistoryasynctask.executeOnExecutor(executor, aobj);
    }

    public static ActivityChooserModel get(Context context, String s)
    {
        Object obj = sRegistryLock;
        obj;
        JVM INSTR monitorenter ;
        ActivityChooserModel activitychoosermodel = (ActivityChooserModel)sDataModelRegistry.get(s);
        if (activitychoosermodel != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        activitychoosermodel = new ActivityChooserModel(context, s);
        sDataModelRegistry.put(s, activitychoosermodel);
        obj;
        JVM INSTR monitorexit ;
        return activitychoosermodel;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean loadActivitiesIfNeeded()
    {
        boolean flag = mReloadActivities;
        boolean flag1 = false;
        if (flag)
        {
            Intent intent = mIntent;
            flag1 = false;
            if (intent != null)
            {
                mReloadActivities = false;
                mActivities.clear();
                List list = mContext.getPackageManager().queryIntentActivities(mIntent, 0);
                int i = list.size();
                for (int j = 0; j < i; j++)
                {
                    ResolveInfo resolveinfo = (ResolveInfo)list.get(j);
                    mActivities.add(new ActivityResolveInfo(resolveinfo));
                }

                flag1 = true;
            }
        }
        return flag1;
    }

    private void persistHistoricalDataIfNeeded()
    {
        if (!mReadShareHistoryCalled)
        {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (mHistoricalRecordsChanged)
        {
            mHistoricalRecordsChanged = false;
            if (!TextUtils.isEmpty(mHistoryFileName))
            {
                if (android.os.Build.VERSION.SDK_INT >= 11)
                {
                    executePersistHistoryAsyncTaskSDK11();
                    return;
                } else
                {
                    executePersistHistoryAsyncTaskBase();
                    return;
                }
            }
        }
    }

    private void pruneExcessiveHistoricalRecordsIfNeeded()
    {
        int i = mHistoricalRecords.size() - mHistoryMaxSize;
        if (i > 0)
        {
            mHistoricalRecordsChanged = true;
            int j = 0;
            while (j < i) 
            {
                HistoricalRecord _tmp = (HistoricalRecord)mHistoricalRecords.remove(0);
                j++;
            }
        }
    }

    private boolean readHistoricalDataIfNeeded()
    {
        if (mCanReadHistoricalData && mHistoricalRecordsChanged && !TextUtils.isEmpty(mHistoryFileName))
        {
            mCanReadHistoricalData = false;
            mReadShareHistoryCalled = true;
            readHistoricalDataImpl();
            return true;
        } else
        {
            return false;
        }
    }

    private void readHistoricalDataImpl()
    {
        FileInputStream fileinputstream;
        Exception exception;
        IOException ioexception1;
        XmlPullParserException xmlpullparserexception;
        XmlPullParser xmlpullparser;
        int i;
        List list;
        int j;
        try
        {
            fileinputstream = mContext.openFileInput(mHistoryFileName);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return;
        }
        xmlpullparser = Xml.newPullParser();
        xmlpullparser.setInput(fileinputstream, null);
        i = 0;
_L1:
        if (i == 1 || i == 2)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        i = xmlpullparser.next();
          goto _L1
        if (!"historical-records".equals(xmlpullparser.getName()))
        {
            throw new XmlPullParserException("Share records file does not start with historical-records tag.");
        }
          goto _L2
        xmlpullparserexception;
        Log.e(LOG_TAG, (new StringBuilder()).append("Error reading historical recrod file: ").append(mHistoryFileName).toString(), xmlpullparserexception);
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        fileinputstream.close();
_L6:
        return;
_L2:
        list = mHistoricalRecords;
        list.clear();
_L8:
        j = xmlpullparser.next();
        if (j != 1) goto _L4; else goto _L3
_L3:
        if (fileinputstream == null) goto _L6; else goto _L5
_L5:
        try
        {
            fileinputstream.close();
            return;
        }
        catch (IOException ioexception4)
        {
            return;
        }
_L4:
        if (j == 3 || j == 4) goto _L8; else goto _L7
_L7:
        if (!"historical-record".equals(xmlpullparser.getName()))
        {
            throw new XmlPullParserException("Share records file not well-formed.");
        }
        break MISSING_BLOCK_LABEL_246;
        ioexception1;
        Log.e(LOG_TAG, (new StringBuilder()).append("Error reading historical recrod file: ").append(mHistoryFileName).toString(), ioexception1);
        if (fileinputstream == null) goto _L6; else goto _L9
_L9:
        try
        {
            fileinputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            return;
        }
        list.add(new HistoricalRecord(xmlpullparser.getAttributeValue(null, "activity"), Long.parseLong(xmlpullparser.getAttributeValue(null, "time")), Float.parseFloat(xmlpullparser.getAttributeValue(null, "weight"))));
          goto _L8
        exception;
        IOException ioexception3;
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        ioexception3;
    }

    private boolean sortActivitiesIfNeeded()
    {
        if (mActivitySorter != null && mIntent != null && !mActivities.isEmpty() && !mHistoricalRecords.isEmpty())
        {
            mActivitySorter.sort(mIntent, mActivities, Collections.unmodifiableList(mHistoricalRecords));
            return true;
        } else
        {
            return false;
        }
    }

    public Intent chooseActivity(int i)
    {
label0:
        {
            synchronized (mInstanceLock)
            {
                if (mIntent != null)
                {
                    break label0;
                }
            }
            return null;
        }
        ComponentName componentname;
        Intent intent;
        ensureConsistentState();
        ActivityResolveInfo activityresolveinfo = (ActivityResolveInfo)mActivities.get(i);
        componentname = new ComponentName(activityresolveinfo.resolveInfo.activityInfo.packageName, activityresolveinfo.resolveInfo.activityInfo.name);
        intent = new Intent(mIntent);
        intent.setComponent(componentname);
        if (mActivityChoserModelPolicy == null)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        Intent intent1 = new Intent(intent);
        if (!mActivityChoserModelPolicy.onChooseActivity(this, intent1))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        obj;
        JVM INSTR monitorexit ;
        return null;
        addHisoricalRecord(new HistoricalRecord(componentname, System.currentTimeMillis(), 1.0F));
        obj;
        JVM INSTR monitorexit ;
        return intent;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ResolveInfo getActivity(int i)
    {
        ResolveInfo resolveinfo;
        synchronized (mInstanceLock)
        {
            ensureConsistentState();
            resolveinfo = ((ActivityResolveInfo)mActivities.get(i)).resolveInfo;
        }
        return resolveinfo;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getActivityCount()
    {
        int i;
        synchronized (mInstanceLock)
        {
            ensureConsistentState();
            i = mActivities.size();
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getActivityIndex(ResolveInfo resolveinfo)
    {
        Object obj = mInstanceLock;
        obj;
        JVM INSTR monitorenter ;
        List list;
        int i;
        ensureConsistentState();
        list = mActivities;
        i = list.size();
        int j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        if (((ActivityResolveInfo)list.get(j)).resolveInfo != resolveinfo)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        obj;
        JVM INSTR monitorexit ;
        return j;
        obj;
        JVM INSTR monitorexit ;
        return -1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ResolveInfo getDefaultActivity()
    {
        Object obj = mInstanceLock;
        obj;
        JVM INSTR monitorenter ;
        ResolveInfo resolveinfo;
        ensureConsistentState();
        if (mActivities.isEmpty())
        {
            break MISSING_BLOCK_LABEL_44;
        }
        resolveinfo = ((ActivityResolveInfo)mActivities.get(0)).resolveInfo;
        return resolveinfo;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getHistoryMaxSize()
    {
        int i;
        synchronized (mInstanceLock)
        {
            i = mHistoryMaxSize;
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getHistorySize()
    {
        int i;
        synchronized (mInstanceLock)
        {
            ensureConsistentState();
            i = mHistoricalRecords.size();
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Intent getIntent()
    {
        Intent intent;
        synchronized (mInstanceLock)
        {
            intent = mIntent;
        }
        return intent;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setActivitySorter(ActivitySorter activitysorter)
    {
label0:
        {
            synchronized (mInstanceLock)
            {
                if (mActivitySorter != activitysorter)
                {
                    break label0;
                }
            }
            return;
        }
        mActivitySorter = activitysorter;
        if (sortActivitiesIfNeeded())
        {
            notifyChanged();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setDefaultActivity(int i)
    {
        Object obj = mInstanceLock;
        obj;
        JVM INSTR monitorenter ;
        ActivityResolveInfo activityresolveinfo;
        ActivityResolveInfo activityresolveinfo1;
        ensureConsistentState();
        activityresolveinfo = (ActivityResolveInfo)mActivities.get(i);
        activityresolveinfo1 = (ActivityResolveInfo)mActivities.get(0);
        if (activityresolveinfo1 == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        float f = 5F + (activityresolveinfo1.weight - activityresolveinfo.weight);
_L1:
        addHisoricalRecord(new HistoricalRecord(new ComponentName(activityresolveinfo.resolveInfo.activityInfo.packageName, activityresolveinfo.resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        f = 1.0F;
          goto _L1
    }

    public void setHistoryMaxSize(int i)
    {
label0:
        {
            synchronized (mInstanceLock)
            {
                if (mHistoryMaxSize != i)
                {
                    break label0;
                }
            }
            return;
        }
        mHistoryMaxSize = i;
        pruneExcessiveHistoricalRecordsIfNeeded();
        if (sortActivitiesIfNeeded())
        {
            notifyChanged();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setIntent(Intent intent)
    {
label0:
        {
            synchronized (mInstanceLock)
            {
                if (mIntent != intent)
                {
                    break label0;
                }
            }
            return;
        }
        mIntent = intent;
        mReloadActivities = true;
        ensureConsistentState();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setOnChooseActivityListener(OnChooseActivityListener onchooseactivitylistener)
    {
        synchronized (mInstanceLock)
        {
            mActivityChoserModelPolicy = onchooseactivitylistener;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }






/*
    static boolean access$502(ActivityChooserModel activitychoosermodel, boolean flag)
    {
        activitychoosermodel.mCanReadHistoricalData = flag;
        return flag;
    }

*/

    private class DefaultSorter
        implements ActivitySorter
    {

        private static final float WEIGHT_DECAY_COEFFICIENT = 0.95F;
        private final Map mPackageNameToActivityMap;
        final ActivityChooserModel this$0;

        public void sort(Intent intent, List list, List list1)
        {
            Map map = mPackageNameToActivityMap;
            map.clear();
            int i = list.size();
            for (int j = 0; j < i; j++)
            {
                ActivityResolveInfo activityresolveinfo1 = (ActivityResolveInfo)list.get(j);
                activityresolveinfo1.weight = 0.0F;
                map.put(activityresolveinfo1.resolveInfo.activityInfo.packageName, activityresolveinfo1);
            }

            int k = -1 + list1.size();
            float f = 1.0F;
            int l = k;
            while (l >= 0) 
            {
                HistoricalRecord historicalrecord = (HistoricalRecord)list1.get(l);
                ActivityResolveInfo activityresolveinfo = (ActivityResolveInfo)map.get(historicalrecord.activity.getPackageName());
                float f1;
                if (activityresolveinfo != null)
                {
                    activityresolveinfo.weight = activityresolveinfo.weight + f * historicalrecord.weight;
                    f1 = 0.95F * f;
                } else
                {
                    f1 = f;
                }
                l--;
                f = f1;
            }
            Collections.sort(list);
        }

        private DefaultSorter()
        {
            this$0 = ActivityChooserModel.this;
            super();
            mPackageNameToActivityMap = new HashMap();
        }

    }


    private class PersistHistoryAsyncTask extends AsyncTask
    {

        final ActivityChooserModel this$0;

        public volatile Object doInBackground(Object aobj[])
        {
            return doInBackground(aobj);
        }

        public transient Void doInBackground(Object aobj[])
        {
            int i;
            List list;
            String s;
            i = 0;
            list = (List)aobj[0];
            s = (String)aobj[1];
            FileOutputStream fileoutputstream = mContext.openFileOutput(s, 0);
            XmlSerializer xmlserializer = Xml.newSerializer();
            int j;
            xmlserializer.setOutput(fileoutputstream, null);
            xmlserializer.startDocument("UTF-8", Boolean.valueOf(true));
            xmlserializer.startTag(null, "historical-records");
            j = list.size();
_L2:
            if (i >= j)
            {
                break; /* Loop/switch isn't completed */
            }
            HistoricalRecord historicalrecord = (HistoricalRecord)list.remove(0);
            xmlserializer.startTag(null, "historical-record");
            xmlserializer.attribute(null, "activity", historicalrecord.activity.flattenToString());
            xmlserializer.attribute(null, "time", String.valueOf(historicalrecord.time));
            xmlserializer.attribute(null, "weight", String.valueOf(historicalrecord.weight));
            xmlserializer.endTag(null, "historical-record");
            i++;
            if (true) goto _L2; else goto _L1
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            Log.e(ActivityChooserModel.LOG_TAG, (new StringBuilder()).append("Error writing historical recrod file: ").append(s).toString(), filenotfoundexception);
_L3:
            return null;
_L1:
            xmlserializer.endTag(null, "historical-records");
            xmlserializer.endDocument();
            mCanReadHistoricalData = true;
            if (fileoutputstream != null)
            {
                try
                {
                    fileoutputstream.close();
                }
                catch (IOException ioexception5)
                {
                    return null;
                }
                return null;
            }
              goto _L3
            IllegalArgumentException illegalargumentexception;
            illegalargumentexception;
            Log.e(ActivityChooserModel.LOG_TAG, (new StringBuilder()).append("Error writing historical recrod file: ").append(mHistoryFileName).toString(), illegalargumentexception);
            mCanReadHistoricalData = true;
            if (fileoutputstream != null)
            {
                try
                {
                    fileoutputstream.close();
                }
                catch (IOException ioexception4)
                {
                    return null;
                }
                return null;
            }
              goto _L3
            IllegalStateException illegalstateexception;
            illegalstateexception;
            Log.e(ActivityChooserModel.LOG_TAG, (new StringBuilder()).append("Error writing historical recrod file: ").append(mHistoryFileName).toString(), illegalstateexception);
            mCanReadHistoricalData = true;
            if (fileoutputstream != null)
            {
                try
                {
                    fileoutputstream.close();
                }
                catch (IOException ioexception3)
                {
                    return null;
                }
                return null;
            }
              goto _L3
            IOException ioexception1;
            ioexception1;
            Log.e(ActivityChooserModel.LOG_TAG, (new StringBuilder()).append("Error writing historical recrod file: ").append(mHistoryFileName).toString(), ioexception1);
            mCanReadHistoricalData = true;
            if (fileoutputstream == null) goto _L3; else goto _L4
_L4:
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception2)
            {
                return null;
            }
            return null;
            Exception exception;
            exception;
            mCanReadHistoricalData = true;
            if (fileoutputstream != null)
            {
                try
                {
                    fileoutputstream.close();
                }
                catch (IOException ioexception) { }
            }
            throw exception;
        }

        private PersistHistoryAsyncTask()
        {
            this$0 = ActivityChooserModel.this;
            super();
        }

    }


    private class ActivityResolveInfo
        implements Comparable
    {

        public final ResolveInfo resolveInfo;
        final ActivityChooserModel this$0;
        public float weight;

        public int compareTo(ActivityResolveInfo activityresolveinfo)
        {
            return Float.floatToIntBits(activityresolveinfo.weight) - Float.floatToIntBits(weight);
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((ActivityResolveInfo)obj);
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                ActivityResolveInfo activityresolveinfo = (ActivityResolveInfo)obj;
                if (Float.floatToIntBits(weight) != Float.floatToIntBits(activityresolveinfo.weight))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 + Float.floatToIntBits(weight);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("[");
            stringbuilder.append("resolveInfo:").append(resolveInfo.toString());
            stringbuilder.append("; weight:").append(new BigDecimal(weight));
            stringbuilder.append("]");
            return stringbuilder.toString();
        }

        public ActivityResolveInfo(ResolveInfo resolveinfo)
        {
            this$0 = ActivityChooserModel.this;
            super();
            resolveInfo = resolveinfo;
        }
    }


    private class HistoricalRecord
    {

        public final ComponentName activity;
        public final long time;
        public final float weight;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                HistoricalRecord historicalrecord = (HistoricalRecord)obj;
                if (activity == null)
                {
                    if (historicalrecord.activity != null)
                    {
                        return false;
                    }
                } else
                if (!activity.equals(historicalrecord.activity))
                {
                    return false;
                }
                if (time != historicalrecord.time)
                {
                    return false;
                }
                if (Float.floatToIntBits(weight) != Float.floatToIntBits(historicalrecord.weight))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            int i;
            if (activity == null)
            {
                i = 0;
            } else
            {
                i = activity.hashCode();
            }
            return 31 * (31 * (i + 31) + (int)(time ^ time >>> 32)) + Float.floatToIntBits(weight);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("[");
            stringbuilder.append("; activity:").append(activity);
            stringbuilder.append("; time:").append(time);
            stringbuilder.append("; weight:").append(new BigDecimal(weight));
            stringbuilder.append("]");
            return stringbuilder.toString();
        }

        public HistoricalRecord(ComponentName componentname, long l, float f)
        {
            activity = componentname;
            time = l;
            weight = f;
        }

        public HistoricalRecord(String s, long l, float f)
        {
            this(ComponentName.unflattenFromString(s), l, f);
        }
    }


    private class ActivitySorter
    {

        public abstract void sort(Intent intent, List list, List list1);
    }


    private class OnChooseActivityListener
    {

        public abstract boolean onChooseActivity(ActivityChooserModel activitychoosermodel, Intent intent);
    }

}
