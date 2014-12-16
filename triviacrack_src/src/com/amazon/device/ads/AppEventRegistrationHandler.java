// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            ThreadUtils, InternalAdRegistration, IInternalAdRegistration, AppEvent, 
//            Log, JSONUtils

class AppEventRegistrationHandler
{

    protected static final String APP_EVENTS_FILE = "AppEventsJsonFile";
    protected static final long APP_EVENTS_FILE_MAX_SIZE = 0x100000L;
    protected static final String APP_EVENT_NAME_KEY = "evtName";
    protected static final String APP_EVENT_TIMESTAMP_KEY = "ts";
    private static final String LOG_TAG = com/amazon/device/ads/AppEventRegistrationHandler.getSimpleName();
    protected static AppEventRegistrationHandler instance = new AppEventRegistrationHandler();
    protected final Object appEventsFileLock = new Object();
    protected final Set eventsSent = Collections.synchronizedSet(new HashSet());
    protected final Set newEventsToSave = Collections.synchronizedSet(new HashSet());

    protected AppEventRegistrationHandler()
    {
    }

    public static AppEventRegistrationHandler getInstance()
    {
        return instance;
    }

    public void addEventToAppEventsCacheFile(final AppEvent appEvent)
    {
        ThreadUtils.executeRunnable(new Runnable() {

            final AppEventRegistrationHandler this$0;
            final AppEvent val$appEvent;

            public void run()
            {
                appendAppEventToFile(appEvent);
            }

            
            {
                this$0 = AppEventRegistrationHandler.this;
                appEvent = appevent;
                super();
            }
        });
    }

    protected void appendAppEventToFile(AppEvent appevent)
    {
        String s1;
        File file;
        Context context = InternalAdRegistration.getInstance().getApplicationContext();
        if (context == null)
        {
            return;
        }
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("evtName", appevent.getEventName());
            jsonobject.put("ts", appevent.getTimestamp());
            java.util.Map.Entry entry;
            for (Iterator iterator = appevent.getPropertyEntries().iterator(); iterator.hasNext(); jsonobject.put((String)entry.getKey(), entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        catch (JSONException jsonexception)
        {
            String s = LOG_TAG;
            Object aobj[] = new Object[1];
            aobj[0] = appevent.toString();
            Log.w(s, "Internal error while persisting the application event %s.", aobj);
            return;
        }
        newEventsToSave.add(jsonobject.toString());
        synchronized (appEventsFileLock)
        {
            s1 = (new StringBuilder()).append(jsonobject.toString()).append("\n").toString();
            file = new File(context.getFilesDir(), "AppEventsJsonFile");
            if (file.length() + (long)s1.length() <= 0x100000L)
            {
                break MISSING_BLOCK_LABEL_254;
            }
            String s4 = LOG_TAG;
            Object aobj3[] = new Object[1];
            aobj3[0] = appevent.toString();
            Log.w(s4, "Couldn't write the application event %s to the cache file. Maximum size limit reached.", aobj3);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        OutputStreamWriter outputstreamwriter = null;
        OutputStreamWriter outputstreamwriter1 = new OutputStreamWriter(new FileOutputStream(file, true));
        outputstreamwriter1.write(s1);
        String s3 = LOG_TAG;
        Object aobj2[] = new Object[1];
        aobj2[0] = appevent.toString();
        Log.d(s3, "Added the application event %s to the cache file.", aobj2);
        if (outputstreamwriter1 == null)
        {
            break MISSING_BLOCK_LABEL_321;
        }
        outputstreamwriter1.close();
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception3;
        ioexception3;
        Log.w(LOG_TAG, "Problem while closing application events file.");
          goto _L1
        IOException ioexception4;
        ioexception4;
        outputstreamwriter1 = null;
_L6:
        String s2 = LOG_TAG;
        Object aobj1[] = new Object[1];
        aobj1[0] = appevent.toString();
        Log.w(s2, "Couldn't write the application event %s to the file.", aobj1);
        if (outputstreamwriter1 == null) goto _L1; else goto _L2
_L2:
        outputstreamwriter1.close();
          goto _L1
        IOException ioexception2;
        ioexception2;
        Log.w(LOG_TAG, "Problem while closing application events file.");
          goto _L1
        Exception exception2;
        exception2;
_L5:
        if (outputstreamwriter == null)
        {
            break MISSING_BLOCK_LABEL_409;
        }
        outputstreamwriter.close();
_L3:
        throw exception2;
        IOException ioexception1;
        ioexception1;
        Log.w(LOG_TAG, "Problem while closing application events file.");
          goto _L3
        Exception exception1;
        exception1;
        outputstreamwriter = outputstreamwriter1;
        exception2 = exception1;
        if (true) goto _L5; else goto _L4
_L4:
        IOException ioexception;
        ioexception;
          goto _L6
    }

    public JSONArray getAppEventsJSONArray()
    {
        JSONArray jsonarray;
        File file;
        jsonarray = null;
        Context context = InternalAdRegistration.getInstance().getApplicationContext();
        if (context == null)
        {
            return null;
        }
        synchronized (appEventsFileLock)
        {
            file = new File(context.getFilesDir(), "AppEventsJsonFile");
            if (file.exists())
            {
                break MISSING_BLOCK_LABEL_58;
            }
        }
        return null;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        FileInputStream fileinputstream = new FileInputStream(file);
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(fileinputstream));
        JSONArray jsonarray1 = null;
_L3:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_376;
        }
        JSONObject jsonobject = JSONUtils.getJSONObjectFromString(s);
        if (jsonobject != null) goto _L2; else goto _L1
_L1:
        onAppEventsRegistered();
_L13:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        fileinputstream.close();
_L6:
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        bufferedreader.close();
_L5:
        obj;
        JVM INSTR monitorexit ;
        return jsonarray;
_L2:
        if (jsonarray1 != null)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        jsonarray1 = new JSONArray();
        jsonarray1.put(jsonobject);
        eventsSent.add(jsonobject.toString());
          goto _L3
        IOException ioexception2;
        ioexception2;
_L12:
        Log.w(LOG_TAG, "Problem while reading the application events file.");
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        fileinputstream.close();
_L7:
        jsonarray = null;
        if (bufferedreader == null) goto _L5; else goto _L4
_L4:
        bufferedreader.close();
        jsonarray = null;
          goto _L5
        IOException ioexception3;
        ioexception3;
        Log.w(LOG_TAG, "Problem while closing the application events file.");
        jsonarray = null;
          goto _L5
        IOException ioexception6;
        ioexception6;
        Log.w(LOG_TAG, "Problem while closing the application events file.");
          goto _L6
        IOException ioexception5;
        ioexception5;
        Log.w(LOG_TAG, "Problem while closing the application events file.");
          goto _L5
        IOException ioexception4;
        ioexception4;
        Log.w(LOG_TAG, "Problem while closing the application events file.");
          goto _L7
        Exception exception3;
        exception3;
        Exception exception1;
        fileinputstream = null;
        exception1 = exception3;
        bufferedreader = null;
_L11:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        fileinputstream.close();
_L8:
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_309;
        }
        bufferedreader.close();
_L9:
        throw exception1;
        IOException ioexception1;
        ioexception1;
        Log.w(LOG_TAG, "Problem while closing the application events file.");
          goto _L8
        IOException ioexception;
        ioexception;
        Log.w(LOG_TAG, "Problem while closing the application events file.");
          goto _L9
        Exception exception2;
        exception2;
        exception1 = exception2;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        if (true) goto _L11; else goto _L10
_L10:
        IOException ioexception8;
        ioexception8;
        bufferedreader = null;
        fileinputstream = null;
          goto _L12
        IOException ioexception7;
        ioexception7;
        bufferedreader = null;
          goto _L12
        jsonarray = jsonarray1;
          goto _L13
    }

    public void onAppEventsRegistered()
    {
        Context context;
        context = InternalAdRegistration.getInstance().getApplicationContext();
        if (context == null)
        {
            return;
        }
        Object obj = appEventsFileLock;
        obj;
        JVM INSTR monitorenter ;
        newEventsToSave.removeAll(eventsSent);
        if (newEventsToSave.isEmpty()) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder = new StringBuilder();
        Set set = newEventsToSave;
        set;
        JVM INSTR monitorenter ;
        for (Iterator iterator = newEventsToSave.iterator(); iterator.hasNext(); stringbuilder.append((String)iterator.next()).append("\n")) { }
        break MISSING_BLOCK_LABEL_123;
        Exception exception1;
        exception1;
        set;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        set;
        JVM INSTR monitorexit ;
        File file = new File(context.getFilesDir(), "AppEventsJsonFile");
        BufferedWriter bufferedwriter = null;
        BufferedWriter bufferedwriter1 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false)));
        bufferedwriter1.write(stringbuilder.toString());
        newEventsToSave.clear();
        eventsSent.clear();
        if (bufferedwriter1 == null)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        bufferedwriter1.close();
_L3:
        obj;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception3;
        ioexception3;
        Log.w(LOG_TAG, "Problem while closing application events file.");
          goto _L3
        IOException ioexception4;
        ioexception4;
        bufferedwriter1 = null;
_L7:
        Log.w(LOG_TAG, "Couldn't write the application event(s) to the file.");
        if (bufferedwriter1 == null) goto _L3; else goto _L4
_L4:
        bufferedwriter1.close();
          goto _L3
        IOException ioexception2;
        ioexception2;
        Log.w(LOG_TAG, "Problem while closing application events file.");
          goto _L3
        Exception exception3;
        exception3;
_L6:
        if (bufferedwriter == null)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        bufferedwriter.close();
_L5:
        throw exception3;
        IOException ioexception1;
        ioexception1;
        Log.w(LOG_TAG, "Problem while closing application events file.");
          goto _L5
_L2:
        context.deleteFile("AppEventsJsonFile");
        eventsSent.clear();
          goto _L3
        Exception exception2;
        exception2;
        bufferedwriter = bufferedwriter1;
        exception3 = exception2;
          goto _L6
        IOException ioexception;
        ioexception;
          goto _L7
    }

}
