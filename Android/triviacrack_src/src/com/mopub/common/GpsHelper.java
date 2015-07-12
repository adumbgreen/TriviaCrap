// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.mopub.common.factories.MethodBuilderFactory;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;

// Referenced classes of package com.mopub.common:
//            g, ClientMetadata, SharedPreferencesHelper

public class GpsHelper
{

    public static final String ADVERTISING_ID_KEY = "advertisingId";
    public static final int GOOGLE_PLAY_SUCCESS_CODE = 0;
    public static final String IS_LIMIT_AD_TRACKING_ENABLED_KEY = "isLimitAdTrackingEnabled";
    private static String a = "com.google.android.gms.common.GooglePlayServicesUtil";
    private static String b = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    public GpsHelper()
    {
    }

    static String a()
    {
        return b;
    }

    static String a(Object obj, String s)
    {
        String s1;
        try
        {
            s1 = (String)MethodBuilderFactory.create(obj, "getId").execute();
        }
        catch (Exception exception)
        {
            return s;
        }
        return s1;
    }

    private static void a(Context context, GpsHelperListener gpshelperlistener)
    {
        if (!Reflection.classFound(b))
        {
            if (gpshelperlistener != null)
            {
                gpshelperlistener.onFetchAdInfoCompleted();
            }
        } else
        {
            try
            {
                AsyncTasks.safeExecuteOnExecutor(new g(context, gpshelperlistener), new Void[0]);
                return;
            }
            catch (Exception exception)
            {
                MoPubLog.d("Error executing FetchAdvertisingInfoTask", exception);
            }
            if (gpshelperlistener != null)
            {
                gpshelperlistener.onFetchAdInfoCompleted();
                return;
            }
        }
    }

    static void a(Context context, Object obj)
    {
        String s = a(obj, ((String) (null)));
        boolean flag = a(obj, false);
        ClientMetadata.getInstance(context).setAdvertisingInfo(s, flag);
    }

    static boolean a(Context context)
    {
        Object obj;
        int i;
        try
        {
            obj = MethodBuilderFactory.create(null, "isGooglePlayServicesAvailable").setStatic(Class.forName(a)).addParam(android/content/Context, context).execute();
        }
        catch (Exception exception)
        {
            return false;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        i = ((Integer)obj).intValue();
        if (i == 0)
        {
            return true;
        }
        return false;
    }

    static boolean a(Object obj, boolean flag)
    {
        Boolean boolean1;
        boolean flag1;
        try
        {
            boolean1 = (Boolean)MethodBuilderFactory.create(obj, "isLimitAdTrackingEnabled").execute();
        }
        catch (Exception exception)
        {
            return flag;
        }
        if (boolean1 == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        flag1 = boolean1.booleanValue();
        flag = flag1;
        return flag;
    }

    static boolean b(Context context)
    {
        return ClientMetadata.getInstance(context).isAdvertisingInfoSet();
    }

    public static void fetchAdvertisingInfoAsync(Context context, GpsHelperListener gpshelperlistener)
    {
        boolean flag = a(context);
        if (flag && !b(context))
        {
            a(context, gpshelperlistener);
        } else
        {
            if (gpshelperlistener != null)
            {
                gpshelperlistener.onFetchAdInfoCompleted();
            }
            if (flag)
            {
                a(context, ((GpsHelperListener) (null)));
                return;
            }
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context)
    {
        boolean flag = a(context);
        boolean flag1 = false;
        if (flag)
        {
            flag1 = SharedPreferencesHelper.getSharedPreferences(context).getBoolean("isLimitAdTrackingEnabled", false);
        }
        return flag1;
    }

    public static void setClassNamesForTesting()
    {
        a = "java.lang.Class";
        b = "java.lang.Class";
    }


    private class GpsHelperListener
    {

        public abstract void onFetchAdInfoCompleted();
    }

}
