// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.f;
import com.google.android.gms.common.g;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;
import org.apache.http.conn.util.InetAddressUtils;

// Referenced classes of package com.millennialmedia.android:
//            MMLog, HandShake, AdCache, MMRequest, 
//            MMAdImpl, MMConversionTracker, CachedAd

public final class MMSDK
{

    public static final String DEFAULT_APID = "28911";
    public static final String DEFAULT_BANNER_APID = "28913";
    public static final String DEFAULT_RECT_APID = "28914";
    public static final int LOG_LEVEL_DEBUG = 1;
    public static final int LOG_LEVEL_ERROR = 0;
    public static final int LOG_LEVEL_INFO = 2;
    public static final int LOG_LEVEL_INTERNAL = 4;
    public static final int LOG_LEVEL_PRIVATE_VERBOSE = 5;
    public static final int LOG_LEVEL_VERBOSE = 3;
    public static final String SDKLOG = "MMSDK";
    public static final String VERSION = "5.3.0-c3980670.a";
    static int a;
    static boolean b = false;
    static String c = ",";
    static Handler d = new Handler(Looper.getMainLooper());
    static String e;
    private static boolean f;
    private static int g = 0x711e41a1;
    private static String h = null;
    private static boolean i = false;

    private MMSDK()
    {
    }

    private static AlertDialog a(Context context, String s1)
    {
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(context)).create();
        alertdialog.setTitle("Whoops!");
        alertdialog.setMessage(String.format("The developer has forgot to declare the %s in the manifest file. Please reach out to the developer to remove this error.", new Object[] {
            s1
        }));
        alertdialog.setButton(-3, "OK", new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.cancel();
            }

        });
        alertdialog.show();
        return alertdialog;
    }

    static String a(com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info)
    {
        if (info == null)
        {
            return null;
        } else
        {
            return info.getId();
        }
    }

    static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(2 * abyte0.length);
        for (int i1 = 0; i1 < abyte0.length; i1++)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Byte.valueOf(abyte0[i1]);
            stringbuilder.append(String.format("%02X", aobj));
        }

        return stringbuilder.toString();
    }

    static void a(Context context, Map map)
    {
        String s1;
        MMLog.b("MMSDK", "executing getIDThread");
        map.put("density", x(context));
        map.put("hpx", p(context));
        map.put("wpx", o(context));
        map.put("sk", y(context));
        map.put("mic", Boolean.toString(q(context)));
        s1 = "true";
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) != 0) goto _L2; else goto _L1
_L1:
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = n(context);
        if (info == null) goto _L2; else goto _L3
_L3:
        String s2;
        s2 = a(info);
        if (s2 != null && info.isLimitAdTrackingEnabled())
        {
            s1 = "false";
        }
_L10:
        StatFs statfs;
        String s9;
        String s10;
        String s4;
        Locale locale;
        String s5;
        String s6;
        String s7;
        String s8;
        Intent intent;
        String s11;
        if (s2 != null)
        {
            map.put("aaid", s2);
            map.put("ate", s1);
        } else
        {
            String s3 = d(context);
            if (s3 != null)
            {
                map.put("mmdid", s3);
            }
        }
        if (h(context))
        {
            map.put("cachedvideo", "true");
        } else
        {
            map.put("cachedvideo", "false");
        }
        if (Build.MODEL != null)
        {
            map.put("dm", Build.MODEL);
        }
        if (android.os.Build.VERSION.RELEASE != null)
        {
            map.put("dv", (new StringBuilder()).append("Android").append(android.os.Build.VERSION.RELEASE).toString());
        }
        map.put("sdkversion", "5.3.0-c3980670.a");
        map.put("mcc", i(context));
        map.put("mnc", j(context));
        s4 = m(context);
        if (!TextUtils.isEmpty(s4))
        {
            map.put("cn", s4);
        }
        locale = Locale.getDefault();
        if (locale != null)
        {
            map.put("language", locale.getLanguage());
            map.put("country", locale.getCountry());
        }
        try
        {
            String s12 = context.getPackageName();
            map.put("pkid", s12);
            PackageManager packagemanager = context.getPackageManager();
            map.put("pknm", packagemanager.getApplicationLabel(packagemanager.getApplicationInfo(s12, 0)).toString());
        }
        catch (Exception exception)
        {
            MMLog.a("MMSDK", "Can't insert package information", exception);
        }
        s5 = HandShake.a(context).b(context);
        if (s5 != null)
        {
            map.put("appsids", s5);
        }
        s6 = AdCache.a(context);
        if (s6 != null)
        {
            map.put("vid", s6);
        }
        s7 = c(context);
        if (!AdCache.i(context)) goto _L5; else goto _L4
_L4:
        statfs = new StatFs(com.millennialmedia.android.AdCache.f(context).getAbsolutePath());
_L6:
        s8 = Long.toString((long)statfs.getAvailableBlocks() * (long)statfs.getBlockSize());
        intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intent == null)
        {
            break MISSING_BLOCK_LABEL_761;
        }
        Exception exception1;
        if (intent.getIntExtra("plugged", 0) == 0)
        {
            s9 = "false";
        } else
        {
            s9 = "true";
        }
        s10 = Integer.toString((int)((100F / (float)intent.getIntExtra("scale", 100)) * (float)intent.getIntExtra("level", 0)));
_L8:
        if (s10 == null)
        {
            break MISSING_BLOCK_LABEL_566;
        }
        if (s10.length() > 0)
        {
            map.put("bl", s10);
        }
        if (s9 == null)
        {
            break MISSING_BLOCK_LABEL_591;
        }
        if (s9.length() > 0)
        {
            map.put("plugged", s9);
        }
        if (s8.length() > 0)
        {
            map.put("space", s8);
        }
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_628;
        }
        map.put("conn", s7);
        s11 = URLEncoder.encode(b(context), "UTF-8");
        if (!TextUtils.isEmpty(s11))
        {
            map.put("pip", s11);
        }
_L7:
        MMRequest.b(map);
        return;
_L5:
        statfs = new StatFs(context.getFilesDir().getPath());
          goto _L6
        exception1;
        MMLog.a("MMSDK", "Exception inserting common parameters: ", exception1);
          goto _L7
        s10 = null;
        s9 = null;
          goto _L8
_L2:
        s2 = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    static void a(MMAdImpl mmadimpl)
    {
        if (mmadimpl != null)
        {
            Context context = mmadimpl.j();
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(mmadimpl.e());
            MMLog.c("MMSDK", String.format("MMAd External ID: %d", aobj));
            Object aobj1[] = new Object[1];
            aobj1[0] = Long.valueOf(mmadimpl.h);
            MMLog.c("MMSDK", String.format("MMAd Internal ID: %d", aobj1));
            Object aobj2[] = new Object[1];
            aobj2[0] = mmadimpl.e;
            MMLog.c("MMSDK", String.format("APID: %s", aobj2));
            Object aobj3[] = new Object[1];
            String s1;
            if (AdCache.i(context))
            {
                s1 = "";
            } else
            {
                s1 = "not ";
            }
            aobj3[0] = s1;
            MMLog.c("MMSDK", String.format("SD card is %savailable.", aobj3));
            if (context != null)
            {
                Object aobj4[] = new Object[1];
                aobj4[0] = context.getPackageName();
                MMLog.c("MMSDK", String.format("Package: %s", aobj4));
                Object aobj5[] = new Object[1];
                aobj5[0] = d(context);
                MMLog.c("MMSDK", String.format("MMDID: %s", aobj5));
                MMLog.c("MMSDK", "Permissions:");
                Object aobj6[] = new Object[1];
                String s2;
                Object aobj7[];
                String s3;
                Object aobj8[];
                String s4;
                Object aobj9[];
                String s5;
                Object aobj10[];
                String s6;
                Object aobj11[];
                String s7;
                if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
                {
                    s2 = "not ";
                } else
                {
                    s2 = "";
                }
                aobj6[0] = s2;
                MMLog.c("MMSDK", String.format("android.permission.ACCESS_NETWORK_STATE is %spresent", aobj6));
                aobj7 = new Object[1];
                if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1)
                {
                    s3 = "not ";
                } else
                {
                    s3 = "";
                }
                aobj7[0] = s3;
                MMLog.c("MMSDK", String.format("android.permission.INTERNET is %spresent", aobj7));
                aobj8 = new Object[1];
                if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == -1)
                {
                    s4 = "not ";
                } else
                {
                    s4 = "";
                }
                aobj8[0] = s4;
                MMLog.c("MMSDK", String.format("android.permission.WRITE_EXTERNAL_STORAGE is %spresent", aobj8));
                aobj9 = new Object[1];
                if (context.checkCallingOrSelfPermission("android.permission.VIBRATE") == -1)
                {
                    s5 = "not ";
                } else
                {
                    s5 = "";
                }
                aobj9[0] = s5;
                MMLog.c("MMSDK", String.format("android.permission.VIBRATE is %spresent", aobj9));
                aobj10 = new Object[1];
                if (context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == -1)
                {
                    s6 = "not ";
                } else
                {
                    s6 = "";
                }
                aobj10[0] = s6;
                MMLog.c("MMSDK", String.format("android.permission.ACCESS_COARSE_LOCATION is %spresent", aobj10));
                aobj11 = new Object[1];
                if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == -1)
                {
                    s7 = "not ";
                } else
                {
                    s7 = "";
                }
                aobj11[0] = s7;
                MMLog.c("MMSDK", String.format("android.permission.ACCESS_FINE_LOCATION is %spresent", aobj11));
                MMLog.c("MMSDK", "Cached Ads:");
                AdCache.a(context, 2, new AdCache.Iterator(context) {

                    final Context a;

                    boolean a(CachedAd cachedad)
                    {
                        Object aobj12[] = new Object[4];
                        aobj12[0] = cachedad.d();
                        aobj12[1] = cachedad.e();
                        String s8;
                        String s9;
                        if (cachedad.d(a))
                        {
                            s8 = "";
                        } else
                        {
                            s8 = "not ";
                        }
                        aobj12[2] = s8;
                        if (cachedad.a())
                        {
                            s9 = "";
                        } else
                        {
                            s9 = "not ";
                        }
                        aobj12[3] = s9;
                        MMLog.c("MMSDK", String.format("%s %s is %son disk. Is %sexpired.", aobj12));
                        return true;
                    }

            
            {
                a = context;
                super();
            }
                });
                return;
            }
        }
    }

    static void a(Runnable runnable)
    {
        if (a())
        {
            runnable.run();
            return;
        } else
        {
            d.post(runnable);
            return;
        }
    }

    static void a(Runnable runnable, long l1)
    {
        d.postDelayed(runnable, l1);
    }

    static void a(String s1)
    {
        com/millennialmedia/android/MMSDK;
        JVM INSTR monitorenter ;
        h = s1;
        com/millennialmedia/android/MMSDK;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean a()
    {
        return d.getLooper() == Looper.myLooper();
    }

    static boolean a(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager == null)
        {
            return false;
        }
        boolean flag;
        if (connectivitymanager.getActiveNetworkInfo() != null && connectivitymanager.getActiveNetworkInfo().isConnected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    static String b(Context context)
    {
        StringBuilder stringbuilder;
        Enumeration enumeration;
        stringbuilder = new StringBuilder();
        enumeration = NetworkInterface.getNetworkInterfaces();
_L6:
        Enumeration enumeration1;
        if (!enumeration.hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_158;
        }
        enumeration1 = ((NetworkInterface)enumeration.nextElement()).getInetAddresses();
_L3:
        String s2;
        InetAddress inetaddress;
        do
        {
            if (!enumeration1.hasMoreElements())
            {
                continue; /* Loop/switch isn't completed */
            }
            inetaddress = (InetAddress)enumeration1.nextElement();
        } while (inetaddress.isLoopbackAddress());
        if (stringbuilder.length() > 0)
        {
            stringbuilder.append(',');
        }
        s2 = inetaddress.getHostAddress().toUpperCase();
        if (!InetAddressUtils.isIPv4Address(s2)) goto _L2; else goto _L1
_L1:
        Exception exception;
        stringbuilder.append(s2);
          goto _L3
_L2:
        int i1;
        try
        {
            i1 = s2.indexOf('%');
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            MMLog.a("MMSDK", "Exception getting ip information: ", exception);
            return "";
        }
        if (i1 >= 0)
        {
            break MISSING_BLOCK_LABEL_145;
        }
_L4:
        stringbuilder.append(s2);
          goto _L3
        continue; /* Loop/switch isn't completed */
        s2 = s2.substring(0, i1);
          goto _L4
        String s1 = stringbuilder.toString();
        return s1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static boolean b()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }

    static String c(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager == null)
        {
            return "unknown";
        }
        if (connectivitymanager.getActiveNetworkInfo() != null && connectivitymanager.getActiveNetworkInfo().isConnected())
        {
            int i1 = connectivitymanager.getActiveNetworkInfo().getType();
            int j1 = connectivitymanager.getActiveNetworkInfo().getSubtype();
            if (i1 == 1)
            {
                return "wifi";
            }
            if (i1 == 0)
            {
                switch (j1)
                {
                default:
                    return "unknown";

                case 7: // '\007'
                    return "1xrtt";

                case 4: // '\004'
                    return "cdma";

                case 2: // '\002'
                    return "edge";

                case 14: // '\016'
                    return "ehrpd";

                case 5: // '\005'
                    return "evdo_0";

                case 6: // '\006'
                    return "evdo_a";

                case 12: // '\f'
                    return "evdo_b";

                case 1: // '\001'
                    return "gprs";

                case 8: // '\b'
                    return "hsdpa";

                case 10: // '\n'
                    return "hspa";

                case 15: // '\017'
                    return "hspap";

                case 9: // '\t'
                    return "hsupa";

                case 11: // '\013'
                    return "iden";

                case 13: // '\r'
                    return "lte";

                case 3: // '\003'
                    return "umts";
                }
            } else
            {
                return "unknown";
            }
        } else
        {
            return "offline";
        }
    }

    static boolean c()
    {
        return Integer.parseInt(android.os.Build.VERSION.SDK) >= 11;
    }

    static String d(Context context)
    {
        com/millennialmedia/android/MMSDK;
        JVM INSTR monitorenter ;
        if (h == null) goto _L2; else goto _L1
_L1:
        String s2 = h;
_L4:
        com/millennialmedia/android/MMSDK;
        JVM INSTR monitorexit ;
        return s2;
_L2:
        String s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        s2 = null;
        if (s1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        StringBuilder stringbuilder = new StringBuilder("mmh_");
        stringbuilder.append(a(MessageDigest.getInstance("MD5").digest(s1.getBytes())));
        stringbuilder.append("_");
        stringbuilder.append(a(MessageDigest.getInstance("SHA1").digest(s1.getBytes())));
        s2 = stringbuilder.toString();
        h = s2;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        MMLog.a("MMSDK", "Exception calculating hash: ", exception1);
        s2 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static boolean d()
    {
        return f;
    }

    static float e(Context context)
    {
        return context.getResources().getDisplayMetrics().density;
    }

    static void f(Context context)
    {
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1)
        {
            a(context, "INTERNET permission").show();
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
        {
            a(context, "ACCESS_NETWORK_STATE permission").show();
        }
    }

    static void g(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            packagemanager.getActivityInfo(new ComponentName(context, "com.millennialmedia.android.MMActivity"), 128);
            return;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            MMLog.a("MMSDK", "Activity MMActivity not declared in AndroidManifest.xml", namenotfoundexception);
            namenotfoundexception.printStackTrace();
            a(context, "MMActivity class").show();
            return;
        }
    }

    public static boolean getBroadcastEvents()
    {
        return f;
    }

    public static int getDefaultAdId()
    {
        com/millennialmedia/android/MMSDK;
        JVM INSTR monitorenter ;
        int i1;
        i1 = 1 + g;
        g = i1;
        com/millennialmedia/android/MMSDK;
        JVM INSTR monitorexit ;
        return i1;
        Exception exception;
        exception;
        com/millennialmedia/android/MMSDK;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static int getLogLevel()
    {
        return MMLog.getLogLevel();
    }

    static boolean h(Context context)
    {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != -1 && (!android.os.Build.VERSION.SDK.equalsIgnoreCase("8") || Environment.getExternalStorageState().equals("mounted") && AdCache.a);
    }

    static String i(Context context)
    {
        Configuration configuration = k(context);
        if (configuration.mcc == 0)
        {
            String s1 = l(context);
            if (s1 != null && s1.length() >= 6)
            {
                return s1.substring(0, 3);
            }
        }
        return String.valueOf(configuration.mcc);
    }

    public static void initialize(Context context)
    {
        HandShake handshake = HandShake.a(context);
        handshake.b();
        handshake.c();
    }

    static String j(Context context)
    {
        Configuration configuration = k(context);
        if (configuration.mnc == 0)
        {
            String s1 = l(context);
            if (s1 != null && s1.length() >= 6)
            {
                return s1.substring(3);
            }
        }
        return String.valueOf(configuration.mnc);
    }

    static Configuration k(Context context)
    {
        return context.getResources().getConfiguration();
    }

    static String l(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getNetworkOperator();
    }

    static String m(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getNetworkOperatorName();
    }

    static com.google.android.gms.ads.identifier.AdvertisingIdClient.Info n(Context context)
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        try
        {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        }
        catch (IOException ioexception)
        {
            MMLog.a("MMSDK", "Unrecoverable error connecting to Google Play services (e.g.,the old version of the service doesnt support getting AdvertisingId", ioexception);
            return null;
        }
        catch (f f1)
        {
            MMLog.a("MMSDK", "Google Play services is not available entirely.", f1);
            return null;
        }
        catch (IllegalStateException illegalstateexception)
        {
            MMLog.a("MMSDK", "IllegalStateException: ", illegalstateexception);
            return null;
        }
        catch (g g1)
        {
            MMLog.a("MMSDK", "Google Play Services is not installed, up-to-date, or enabled", g1);
            return null;
        }
        return info;
    }

    static String o(Context context)
    {
        return Integer.toString(context.getResources().getDisplayMetrics().widthPixels);
    }

    static String p(Context context)
    {
        return Integer.toString(context.getResources().getDisplayMetrics().heightPixels);
    }

    static boolean q(Context context)
    {
        return context.getPackageManager().hasSystemFeature("android.hardware.microphone");
    }

    static boolean r(Context context)
    {
        return context.checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") == 0;
    }

    public static void resetCache(Context context)
    {
        AdCache.e(context);
    }

    static int s(Context context)
    {
        return ((AudioManager)context.getApplicationContext().getSystemService("audio")).getStreamVolume(3);
    }

    public static void setBroadcastEvents(boolean flag)
    {
        f = flag;
    }

    public static void setLogLevel(int i1)
    {
        switch (i1)
        {
        default:
            MMLog.setLogLevel(4);
            return;

        case 1: // '\001'
            MMLog.setLogLevel(3);
            return;

        case 2: // '\002'
            MMLog.setLogLevel(4);
            return;

        case 3: // '\003'
            MMLog.setLogLevel(2);
            return;

        case 0: // '\0'
            MMLog.setLogLevel(6);
            return;
        }
    }

    static String t(Context context)
    {
        return String.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.telephony"));
    }

    public static void trackConversion(Context context, String s1)
    {
        MMConversionTracker.a(context, s1, null);
    }

    public static void trackConversion(Context context, String s1, MMRequest mmrequest)
    {
        MMConversionTracker.a(context, s1, mmrequest);
    }

    public static void trackEvent(Context context, String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            String s2 = d(context);
            if (!TextUtils.isEmpty(s2))
            {
                Utils.HttpUtils.a((new StringBuilder()).append("http://ads.mp.mydas.mobi/pixel?id=").append(s1).append("&mmdid=").append(s2).toString());
            }
        }
    }

    static String u(Context context)
    {
        return String.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.telephony"));
    }

    static String v(Context context)
    {
        switch (context.getResources().getConfiguration().orientation)
        {
        default:
            return "default";

        case 1: // '\001'
            return "portrait";

        case 2: // '\002'
            return "landscape";

        case 3: // '\003'
            return "square";
        }
    }

    static final String w(Context context)
    {
        if (android.provider.Settings.System.getString(context.getContentResolver(), "accelerometer_rotation").equals("1"))
        {
            return "false";
        } else
        {
            return "true";
        }
    }

    private static String x(Context context)
    {
        return Float.toString(e(context));
    }

    private static String y(Context context)
    {
        if (i && r(context))
        {
            return "true";
        } else
        {
            return "false";
        }
    }

    static 
    {
        try
        {
            System.loadLibrary("nmsp_speex");
            i = true;
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror) { }
    }
}
