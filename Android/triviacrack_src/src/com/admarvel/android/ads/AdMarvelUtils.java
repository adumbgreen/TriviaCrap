// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.a;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            ab, ac, AdMarvelAd, u

public class AdMarvelUtils
{

    protected static final String ADMARVEL_ADAPTER_GUID = "ADMARVELGUID";
    static final int AD_HISTORY_AD_DUMP_DELAY = 1000;
    static final int AD_HISTORY_REDIRECTED_PAGE_DUMP_DELAY = 3000;
    private static AdmarvelOrientationInfo AdmarvelActivityOrientationInfo = null;
    public static final String PATH = "/data/com.admarvel.android.admarvelcachedads";
    private static Map adMarvelOptionalFlags;
    private static boolean enableLogging = false;
    private static boolean isLogDumpEnabled = false;
    private static boolean notificationBarInFullScreenLaunchEnabled = false;
    private WeakReference contextReference;

    public AdMarvelUtils(Context context)
    {
        contextReference = new WeakReference(context);
    }

    public static void appendParams(StringBuilder stringbuilder, String s, String s1)
    {
        com.admarvel.android.ads.ab.a(stringbuilder, s, s1);
    }

    public static String captureTargetingParams(Map map, String s)
    {
        return com.admarvel.android.ads.ab.a(map, s);
    }

    public static void disableLogDump()
    {
        isLogDumpEnabled = false;
    }

    public static void enableLogDump()
    {
        isLogDumpEnabled = true;
    }

    public static void enableLogging(boolean flag)
    {
        enableLogging = flag;
    }

    public static void enableNotificationBarInFullScreenLaunch(boolean flag)
    {
        notificationBarInFullScreenLaunchEnabled = flag;
    }

    public static String encodeString(String s)
    {
        return ab.c(s);
    }

    public static Map getAdMarvelOptionalFlags()
    {
        return adMarvelOptionalFlags;
    }

    public static Integer getAdmarvelActivityOrientationInfo(Context context)
    {
        if (AdmarvelActivityOrientationInfo == null) goto _L2; else goto _L1
_L1:
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[AdmarvelOrientationInfo.values().length];
                try
                {
                    a[AdmarvelOrientationInfo.SCREEN_ORIENTATION_PORTRAIT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[AdmarvelOrientationInfo.SCREEN_ORIENTATION_LANDSCAPE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[AdmarvelOrientationInfo.SCREEN_ORIENTATION_REVERSE_LANDSCAPE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[AdmarvelOrientationInfo.SCREEN_ORIENTATION_REVERSE_PORTRAIT.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[AdmarvelOrientationInfo.SCREEN_ORIENTATION_CURRENT_ACTIVITY.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        com.admarvel.android.ads._cls1.a[AdmarvelActivityOrientationInfo.ordinal()];
        JVM INSTR tableswitch 1 5: default 52
    //                   1 54
    //                   2 59
    //                   3 64
    //                   4 70
    //                   5 76;
           goto _L2 _L3 _L4 _L5 _L6 _L7
_L2:
        return null;
_L3:
        return Integer.valueOf(1);
_L4:
        return Integer.valueOf(0);
_L5:
        return Integer.valueOf(8);
_L6:
        return Integer.valueOf(9);
_L7:
        return ab.e(context);
    }

    public static int getAndroidSDKVersion()
    {
        return com.admarvel.android.ads.ac.a();
    }

    public static String getDeviceConnectivitiy(Context context)
    {
        return com.admarvel.android.ads.ab.a(context);
    }

    public static int getDeviceHeight(Context context)
    {
        return ab.h(context);
    }

    public static int getDeviceWidth(Context context)
    {
        return ab.g(context);
    }

    public static int getErrorCode(ErrorReason errorreason)
    {
        return com.admarvel.android.ads.ab.a(errorreason);
    }

    public static ErrorReason getErrorReason(int i)
    {
        return com.admarvel.android.ads.ab.a(i);
    }

    public static boolean getPreferenceValueBoolean(Context context, String s, String s1)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        boolean flag = context.getSharedPreferences(s, 0).getBoolean(s1, false);
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public static int getPreferenceValueInt(Context context, String s, String s1)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        int i = context.getSharedPreferences(s, 0).getInt(s1, 0x80000000);
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public static long getPreferenceValueLong(Context context, String s, String s1)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        long l = context.getSharedPreferences(s, 0).getLong(s1, 0xffffffff80000000L);
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    public static String getPreferenceValueString(Context context, String s, String s1)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        String s2 = context.getSharedPreferences(s, 0).getString(s1, "VALUE_NOT_DEFINED");
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return s2;
        Exception exception;
        exception;
        throw exception;
    }

    public static String getSDKVersion()
    {
        return "2.4.5.1";
    }

    public static String getSDKVersionDate()
    {
        return "2014-07-28";
    }

    public static String getSupportedInterfaceOrientations(Activity activity)
    {
        return com.admarvel.android.ads.ab.a(activity);
    }

    public static String getUserAgent(Context context, Handler handler)
    {
        return (new ab(context, handler)).a();
    }

    public static boolean isLogDumpEnabled()
    {
        return isLogDumpEnabled;
    }

    public static boolean isLoggingEnabled()
    {
        return enableLogging;
    }

    public static final boolean isNetworkAvailable(Context context)
    {
        return ab.f(context);
    }

    public static boolean isNotificationBarInFullScreenLaunchEnabled()
    {
        return notificationBarInFullScreenLaunchEnabled;
    }

    public static boolean isTabletDevice(Context context)
    {
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        if (displaymetrics.widthPixels >= 600)
        {
            float f = (float)displaymetrics.widthPixels / displaymetrics.xdpi;
            float f1 = (float)displaymetrics.heightPixels / displaymetrics.ydpi;
            Double double1 = Double.valueOf(Math.sqrt(f * f + f1 * f1));
            Logging.log((new StringBuilder()).append("Device Screen Size : ").append(double1).toString());
            if (double1.doubleValue() > 6.5D)
            {
                return true;
            }
        }
        return false;
    }

    public static void lockAdMarvelActivityOrientation(AdmarvelOrientationInfo admarvelorientationinfo)
    {
        AdmarvelActivityOrientationInfo = admarvelorientationinfo;
    }

    public static String reportAdMarvelAdHistory(int i, Context context)
    {
        String s = "";
        if (isNetworkAvailable(context) && isLogDumpEnabled)
        {
            s = a.b(context).a(i);
        }
        return s;
    }

    public static String reportAdMarvelAdHistory(Context context)
    {
        String s = "";
        if (isNetworkAvailable(context) && isLogDumpEnabled)
        {
            s = a.b(context).a(20);
        }
        return s;
    }

    public static void setAdMarvelOptionalFlags(Map map)
    {
        adMarvelOptionalFlags = map;
    }

    public static AdMarvelAd setAdStatus(AdMarvelAd admarvelad, String s)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        admarvelad.setAdType(AdMarvelAd.AdType.ERROR);
        admarvelad.setErrorCode(306);
        admarvelad.setErrorReason(s);
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return admarvelad;
        Exception exception;
        exception;
        throw exception;
    }

    public static void setFullScreenloadingTimeout(int i)
    {
        if (i > 0)
        {
            com.admarvel.android.ads.u.a = i * 1000;
            return;
        } else
        {
            Logging.log("setFullScreenloadingTimeout :- time cannot be less than zero");
            return;
        }
    }

    public static void setPreferenceValueBoolean(Context context, String s, String s1, boolean flag)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(s, 0).edit();
        editor.putBoolean(s1, flag);
        editor.commit();
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void setPreferenceValueInt(Context context, String s, String s1, int i)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(s, 0).edit();
        editor.putInt(s1, i);
        editor.commit();
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void setPreferenceValueLong(Context context, String s, String s1, long l)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(s, 0).edit();
        editor.putLong(s1, l);
        editor.commit();
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void setPreferenceValueString(Context context, String s, String s1, String s2)
    {
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(s, 0).edit();
        editor.putString(s1, s2);
        editor.commit();
        com/admarvel/android/ads/AdMarvelUtils;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void firePixel(AdMarvelAd admarvelad)
    {
        (new ab((Context)contextReference.get())).a(admarvelad);
    }

    public void firePixel(String s)
    {
        (new ab((Context)contextReference.get())).a(s);
    }

    public void firePixelUsingHTTP(String s, Handler handler)
    {
        (new ab((Context)contextReference.get())).a(s, handler);
    }

    public String getUserAgent()
    {
        return (new ab((Context)contextReference.get())).a();
    }


    private class AdmarvelOrientationInfo extends Enum
    {

        private static final AdmarvelOrientationInfo $VALUES[];
        public static final AdmarvelOrientationInfo SCREEN_ORIENTATION_CURRENT_ACTIVITY;
        public static final AdmarvelOrientationInfo SCREEN_ORIENTATION_LANDSCAPE;
        public static final AdmarvelOrientationInfo SCREEN_ORIENTATION_PORTRAIT;
        public static final AdmarvelOrientationInfo SCREEN_ORIENTATION_REVERSE_LANDSCAPE;
        public static final AdmarvelOrientationInfo SCREEN_ORIENTATION_REVERSE_PORTRAIT;

        public static AdmarvelOrientationInfo valueOf(String s)
        {
            return (AdmarvelOrientationInfo)Enum.valueOf(com/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo, s);
        }

        public static AdmarvelOrientationInfo[] values()
        {
            return (AdmarvelOrientationInfo[])$VALUES.clone();
        }

        static 
        {
            SCREEN_ORIENTATION_CURRENT_ACTIVITY = new AdmarvelOrientationInfo("SCREEN_ORIENTATION_CURRENT_ACTIVITY", 0);
            SCREEN_ORIENTATION_PORTRAIT = new AdmarvelOrientationInfo("SCREEN_ORIENTATION_PORTRAIT", 1);
            SCREEN_ORIENTATION_LANDSCAPE = new AdmarvelOrientationInfo("SCREEN_ORIENTATION_LANDSCAPE", 2);
            SCREEN_ORIENTATION_REVERSE_LANDSCAPE = new AdmarvelOrientationInfo("SCREEN_ORIENTATION_REVERSE_LANDSCAPE", 3);
            SCREEN_ORIENTATION_REVERSE_PORTRAIT = new AdmarvelOrientationInfo("SCREEN_ORIENTATION_REVERSE_PORTRAIT", 4);
            AdmarvelOrientationInfo aadmarvelorientationinfo[] = new AdmarvelOrientationInfo[5];
            aadmarvelorientationinfo[0] = SCREEN_ORIENTATION_CURRENT_ACTIVITY;
            aadmarvelorientationinfo[1] = SCREEN_ORIENTATION_PORTRAIT;
            aadmarvelorientationinfo[2] = SCREEN_ORIENTATION_LANDSCAPE;
            aadmarvelorientationinfo[3] = SCREEN_ORIENTATION_REVERSE_LANDSCAPE;
            aadmarvelorientationinfo[4] = SCREEN_ORIENTATION_REVERSE_PORTRAIT;
            $VALUES = aadmarvelorientationinfo;
        }

        private AdmarvelOrientationInfo(String s, int i)
        {
            super(s, i);
        }
    }

}
