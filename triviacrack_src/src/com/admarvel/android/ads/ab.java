// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.Camera;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.admarvel.android.b.a;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.b;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectOutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelView, AdMarvelInterstitialAds, n, 
//            AdMarvelUtils, AdMarvelAd, AdMarvelXMLReader, AdMarvelXMLElement

class ab
{

    public static String a = "";
    public static boolean b;
    private WeakReference c;
    private final Handler d;
    private String e;

    public ab(Context context)
    {
        c = new WeakReference(context);
        d = null;
    }

    public ab(Context context, Handler handler)
    {
        c = new WeakReference(context);
        d = handler;
    }

    public static float a(Context context, int i1, int j1)
    {
        WindowManager windowmanager = (WindowManager)context.getApplicationContext().getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        return Math.min(displaymetrics.density, (float)i1 / (float)j1);
    }

    public static int a(float f1, Context context)
    {
        return (int)TypedValue.applyDimension(1, f1, context.getResources().getDisplayMetrics());
    }

    public static int a(AdMarvelUtils.ErrorReason errorreason)
    {
        class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[AdMarvelUtils.ErrorReason.values().length];
                try
                {
                    a[AdMarvelUtils.ErrorReason.SITE_ID_OR_PARTNER_ID_NOT_PRESENT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.BOT_USER_AGENT_FOUND.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.NO_BANNER_FOUND.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.NO_AD_FOUND.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.NO_USER_AGENT_FOUND.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.SITE_ID_NOT_PRESENT.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.PARTNER_ID_NOT_PRESENT.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.NO_NETWORK_CONNECTIVITY.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.NETWORK_CONNECTIVITY_DISRUPTED.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.AD_UNIT_NOT_ABLE_TO_RENDER.ordinal()] = 13;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.AD_REQUEST_MISSING_XML_ELEMENTS.ordinal()] = 14;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.AD_REQUEST_SDK_TYPE_UNSUPPORTED.ordinal()] = 15;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    a[AdMarvelUtils.ErrorReason.AD_UNIT_NOT_ABLE_TO_LOAD.ordinal()] = 16;
                }
                catch (NoSuchFieldError nosuchfielderror15)
                {
                    return;
                }
            }
        }

        switch (com.admarvel.android.ads._cls4.a[errorreason.ordinal()])
        {
        default:
            return -1;

        case 1: // '\001'
            return 201;

        case 2: // '\002'
            return 202;

        case 3: // '\003'
            return 203;

        case 4: // '\004'
            return 204;

        case 5: // '\005'
            return 205;

        case 6: // '\006'
            return 206;

        case 7: // '\007'
            return 207;

        case 8: // '\b'
            return 208;

        case 9: // '\t'
            return 301;

        case 10: // '\n'
            return 302;

        case 11: // '\013'
            return 303;

        case 12: // '\f'
            return 304;

        case 13: // '\r'
            return 305;

        case 14: // '\016'
            return 306;

        case 15: // '\017'
            return 307;

        case 16: // '\020'
            return 308;
        }
    }

    public static AdMarvelUtils.ErrorReason a(int i1)
    {
        switch (i1)
        {
        default:
            return null;

        case 201: 
            return AdMarvelUtils.ErrorReason.SITE_ID_OR_PARTNER_ID_NOT_PRESENT;

        case 202: 
            return AdMarvelUtils.ErrorReason.SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH;

        case 203: 
            return AdMarvelUtils.ErrorReason.BOT_USER_AGENT_FOUND;

        case 204: 
            return AdMarvelUtils.ErrorReason.NO_BANNER_FOUND;

        case 205: 
            return AdMarvelUtils.ErrorReason.NO_AD_FOUND;

        case 206: 
            return AdMarvelUtils.ErrorReason.NO_USER_AGENT_FOUND;

        case 207: 
            return AdMarvelUtils.ErrorReason.SITE_ID_NOT_PRESENT;

        case 208: 
            return AdMarvelUtils.ErrorReason.PARTNER_ID_NOT_PRESENT;

        case 301: 
            return AdMarvelUtils.ErrorReason.NO_NETWORK_CONNECTIVITY;

        case 302: 
            return AdMarvelUtils.ErrorReason.NETWORK_CONNECTIVITY_DISRUPTED;

        case 303: 
            return AdMarvelUtils.ErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION;

        case 304: 
            return AdMarvelUtils.ErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION;

        case 305: 
            return AdMarvelUtils.ErrorReason.AD_UNIT_NOT_ABLE_TO_RENDER;

        case 306: 
            return AdMarvelUtils.ErrorReason.AD_REQUEST_MISSING_XML_ELEMENTS;

        case 307: 
            return AdMarvelUtils.ErrorReason.AD_REQUEST_SDK_TYPE_UNSUPPORTED;

        case 308: 
            return AdMarvelUtils.ErrorReason.AD_UNIT_NOT_ABLE_TO_LOAD;
        }
    }

    public static f a(String s, String s1)
    {
        if (s.startsWith((new StringBuilder()).append(s1).append("://").toString()))
        {
            return com.admarvel.android.ads.f.a;
        }
        if (s.startsWith(s1))
        {
            return com.admarvel.android.ads.f.b;
        } else
        {
            return f.c;
        }
    }

    public static String a(Activity activity)
    {
        int i1 = activity.getRequestedOrientation();
        if (com.admarvel.android.ads.ac.a() < 9)
        {
            switch (i1)
            {
            default:
                return "0";

            case -1: 
                return "0,90";

            case 2: // '\002'
                return "0,90";

            case 3: // '\003'
                return "0,90";

            case 0: // '\0'
                return "90";

            case 1: // '\001'
                return "0";

            case 4: // '\004'
                return "0,90";

            case 5: // '\005'
                return "0";
            }
        }
        switch (i1)
        {
        default:
            return "";

        case -1: 
            return "0,-90,90";

        case 2: // '\002'
            return "0,90,-90";

        case 3: // '\003'
            return "0,90,-90";

        case 0: // '\0'
            return "90";

        case 1: // '\001'
            return "0";

        case 8: // '\b'
            return "-90";

        case 9: // '\t'
            return "180";

        case 6: // '\006'
            return "90,-90";

        case 7: // '\007'
            return "180,-180";

        case 4: // '\004'
            return "0,-90,90";

        case 10: // '\n'
            return "0,-90,90,180";

        case 5: // '\005'
            return "0";
        }
    }

    static String a(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException();
        }
        if (d(context, "android.permission.ACCESS_NETWORK_STATE"))
        {
            ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
            NetworkInfo networkinfo = connectivitymanager.getNetworkInfo(1);
            NetworkInfo networkinfo1 = connectivitymanager.getNetworkInfo(0);
            if (networkinfo != null && networkinfo.isAvailable())
            {
                return "wifi";
            }
            if (networkinfo1 != null && networkinfo1.isAvailable())
            {
                return "mobile";
            } else
            {
                return "none";
            }
        } else
        {
            return "unknown";
        }
    }

    static String a(String s, Context context)
    {
        String s1;
        if (s == null || s.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        s1 = s;
_L1:
        HttpURLConnection httpurlconnection;
        int i1;
        httpurlconnection = (HttpURLConnection)(new URL(s1)).openConnection();
        httpurlconnection.setRequestMethod("GET");
        httpurlconnection.setDoInput(true);
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setRequestProperty("User-Agent", (new ab(context)).a());
        httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpurlconnection.setRequestProperty("Content-Length", "0");
        httpurlconnection.setConnectTimeout(4000);
        httpurlconnection.setReadTimeout(5000);
        httpurlconnection.setInstanceFollowRedirects(false);
        httpurlconnection.connect();
        i1 = httpurlconnection.getResponseCode();
        if (i1 != 301 && i1 != 302)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        String s2 = httpurlconnection.getHeaderField("Location");
        s1 = s2;
          goto _L1
        Exception exception;
        exception;
        if (s1 != null && s1.length() > 0)
        {
            s = s1;
        }
        return s;
    }

    public static String a(String s, String s1, String s2, f f1, Context context)
    {
        if (s != null && s.length() > 0)
        {
            s = s.replace((new StringBuilder()).append("content://").append(context.getPackageName()).append(".AdMarvelLocalFileContentProvider").toString(), "");
        }
        String s3;
        if (f1 == com.admarvel.android.ads.f.a)
        {
            s3 = s.replaceFirst((new StringBuilder()).append(s1).append("://").toString(), s2);
        } else
        {
            f f2 = com.admarvel.android.ads.f.b;
            s3 = null;
            if (f1 == f2)
            {
                return s.replaceFirst(s1, s2);
            }
        }
        return s3;
    }

    public static String a(Map map, String s)
    {
        if (map == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            String s2;
            if (map.get(s1) instanceof String)
            {
                s2 = (String)map.get(s1);
            } else
            {
                s2 = null;
            }
            if (s2 != null && s2.length() > 0)
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(s);
                }
                stringbuilder.append(URLEncoder.encode(s1, "UTF-8")).append("=>").append(URLEncoder.encode(s2, "UTF-8"));
            }
        } while (true);
        return stringbuilder.toString();
    }

    static WeakReference a(ab ab1)
    {
        return ab1.c;
    }

    public static void a(StringBuilder stringbuilder, String s, String s1)
    {
        if (stringbuilder != null && s1 != null && s != null)
        {
            stringbuilder.append("&").append(s).append("=").append(URLEncoder.encode(s1, "UTF-8"));
        }
    }

    public static boolean a(Context context, int i1)
    {
        if (context != null)
        {
            try
            {
                if (d(context, "android.permission.VIBRATE"))
                {
                    ((Vibrator)context.getSystemService("vibrator")).vibrate(i1);
                }
            }
            catch (Exception exception)
            {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Context context, Intent intent)
    {
        return context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0;
    }

    static boolean a(Context context, String s)
    {
        try
        {
            context.getPackageManager().getApplicationInfo(s, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    public static String b()
    {
        StringBuffer stringbuffer = new StringBuffer();
        String s = android.os.Build.VERSION.RELEASE;
        Locale locale;
        String s1;
        String s2;
        String s3;
        if (s.length() > 0)
        {
            stringbuffer.append(s);
        } else
        {
            stringbuffer.append("1.0");
        }
        stringbuffer.append("; ");
        locale = Locale.getDefault();
        s1 = locale.getLanguage();
        if (s1 != null)
        {
            stringbuffer.append(s1.toLowerCase());
            String s4 = locale.getCountry();
            if (s4 != null)
            {
                stringbuffer.append("-");
                stringbuffer.append(s4.toLowerCase());
            }
        } else
        {
            stringbuffer.append("en");
        }
        s2 = Build.MODEL;
        if (s2.length() > 0)
        {
            stringbuffer.append("; ");
            stringbuffer.append(s2);
        }
        s3 = Build.ID;
        if (s3.length() > 0)
        {
            stringbuffer.append(" Build/");
            stringbuffer.append(s3);
        }
        return String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2", new Object[] {
            stringbuffer
        });
    }

    static String b(Context context)
    {
        if (context != null) goto _L2; else goto _L1
_L1:
        return "";
_L2:
        TelephonyManager telephonymanager;
        NetworkInfo networkinfo;
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        networkinfo = connectivitymanager.getActiveNetworkInfo();
        if (networkinfo == null) goto _L1; else goto _L3
_L3:
        networkinfo.getType();
        JVM INSTR tableswitch 0 1: default 64
    //                   0 78
    //                   1 71;
           goto _L4 _L5 _L6
_L4:
        String s = "";
_L7:
        return s;
_L6:
        s = "wifi";
        if (true) goto _L7; else goto _L5
_L5:
        switch (telephonymanager.getNetworkType())
        {
        default:
            s = "";
            break;

        case 13: // '\r'
            s = "lte";
            break;

        case 15: // '\017'
            s = "HSPAP";
            break;

        case 2: // '\002'
            s = "EDGE";
            break;

        case 1: // '\001'
            s = "GPRS";
            break;

        case 7: // '\007'
            s = "1xRTT";
            break;

        case 4: // '\004'
            s = "CDMA";
            break;

        case 14: // '\016'
            s = "EHRPD";
            break;

        case 5: // '\005'
            s = "EVDO_0";
            break;

        case 6: // '\006'
            s = "EVDO_A";
            break;

        case 12: // '\f'
            s = "EVDO_B";
            break;

        case 8: // '\b'
            s = "HSDPA";
            break;

        case 10: // '\n'
            s = "HSPA";
            break;

        case 9: // '\t'
            s = "HSUPA";
            break;

        case 11: // '\013'
            s = "IDEN";
            break;

        case 3: // '\003'
            s = "UMTS";
            break;
        }
        if (true) goto _L7; else goto _L8
_L8:
    }

    static String b(ab ab1)
    {
        return ab1.e;
    }

    static boolean b(Context context, String s)
    {
        if (!com.admarvel.android.ads.AdMarvelView.b && !AdMarvelInterstitialAds.enableOfflineSDK || s == null) goto _L2; else goto _L1
_L1:
        if (!s.contains("/") || URLUtil.isNetworkUrl(s)) goto _L2; else goto _L3
_L3:
        String s3 = s.substring(1 + s.lastIndexOf("/"));
        if (!j(s3)) goto _L5; else goto _L4
_L4:
        Uri uri1 = Uri.parse(s3);
        if (com.admarvel.android.ads.ac.a() <= 18) goto _L7; else goto _L6
_L6:
        String s7;
        if (!s.contains("?body="))
        {
            break MISSING_BLOCK_LABEL_1392;
        }
        s7 = URLDecoder.decode(s.split("\\?body=")[1]);
_L37:
        Intent intent14 = new Intent("android.intent.action.SENDTO", Uri.parse(s));
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        if (s7.trim().length() > 0)
        {
            intent14.putExtra("sms_body", s7);
        }
        if (!a(context, intent14)) goto _L9; else goto _L8
_L8:
        context.startActivity(intent14);
        return true;
_L7:
        Intent intent13 = new Intent("android.intent.action.VIEW");
        if (!s.contains("?body=")) goto _L11; else goto _L10
_L10:
        String as1[] = s.split("\\?body=");
        intent13.putExtra("address", URLDecoder.decode(as1[0]).substring(4));
        intent13.putExtra("sms_body", URLDecoder.decode(as1[1]));
_L13:
        intent13.setType("vnd.android-dir/mms-sms");
        intent13.addFlags(0x10000000);
        if (!a(context, intent13)) goto _L9; else goto _L12
_L12:
        context.startActivity(intent13);
        Exception exception;
        return true;
_L11:
        try
        {
            intent13.putExtra("address", uri1.toString().substring(4));
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Logging.log(" Exception in handling special intents");
            return false;
        }
          goto _L13
_L5:
        if (!i(s3)) goto _L9; else goto _L14
_L14:
        Intent intent8;
        intent8 = new Intent("android.intent.action.DIAL", Uri.parse(s3));
        intent8.addFlags(0x10000000);
        if (!a(context, intent8)) goto _L9; else goto _L15
_L15:
        context.startActivity(intent8);
        return true;
_L9:
        java.io.FileInputStream fileinputstream = com.admarvel.android.b.a.a(s);
        if (fileinputstream == null || s3 == null) goto _L17; else goto _L16
_L16:
        if (!p(s)) goto _L19; else goto _L18
_L18:
        String s6 = com.admarvel.android.b.a.a(fileinputstream, s3);
        if (s6 == null) goto _L2; else goto _L20
_L20:
        Intent intent12 = new Intent("android.intent.action.VIEW");
        intent12.addFlags(0x10000000);
        intent12.setDataAndType(Uri.fromFile(new File(s6)), "video/*");
        if (!a(context, intent12))
        {
            break MISSING_BLOCK_LABEL_1398;
        }
        context.startActivity(intent12);
        return true;
        Exception exception1;
        exception1;
        if (!p(s) && !r(s) && !q(s)) goto _L2; else goto _L21
_L21:
        Logging.log(" ");
        return true;
_L19:
        if (!q(s)) goto _L23; else goto _L22
_L22:
        String s5 = com.admarvel.android.b.a.a(fileinputstream, s3);
        if (s5 == null) goto _L2; else goto _L24
_L24:
        Intent intent11 = new Intent("android.intent.action.VIEW");
        intent11.addFlags(0x10000000);
        intent11.setDataAndType(Uri.fromFile(new File(s5)), "audio/*");
        if (!a(context, intent11))
        {
            break MISSING_BLOCK_LABEL_1398;
        }
        context.startActivity(intent11);
        return true;
_L23:
        if (!r(s)) goto _L2; else goto _L25
_L25:
        String s4 = com.admarvel.android.b.a.a(fileinputstream, s3);
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_1398;
        }
        Intent intent9 = new Intent("android.intent.action.VIEW", Uri.parse(s4));
        intent9.setDataAndType(Uri.fromFile(new File(s4)), "application/pdf");
        intent9.setFlags(0x10000000);
        if (!a(context, intent9))
        {
            break MISSING_BLOCK_LABEL_630;
        }
        context.startActivity(intent9);
        return true;
        Intent intent10 = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent10.addFlags(0x10000000);
        if (!a(context, intent10))
        {
            break MISSING_BLOCK_LABEL_1398;
        }
        context.startActivity(intent10);
        return true;
_L17:
        if (!p(s) && !r(s) && !q(s)) goto _L2; else goto _L26
_L26:
        Logging.log(" ");
        return true;
_L2:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_752;
        }
        String s2;
        if (s.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_752;
        }
        s2 = s.replace((new StringBuilder()).append("content://").append(context.getPackageName()).append(".AdMarvelLocalFileContentProvider").toString(), "");
        s = s2;
        if (!f(context) || !f(s)) goto _L28; else goto _L27
_L27:
        Intent intent7 = new Intent("android.intent.action.VIEW");
        intent7.addFlags(0x10000000);
        intent7.setDataAndType(Uri.parse(s), "video/*");
        if (!a(context, intent7))
        {
            break MISSING_BLOCK_LABEL_853;
        }
        context.startActivity(intent7);
        return true;
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        boolean flag;
        Logging.log(" ActivityNotFoundException");
        b = e(s);
        if (!com.admarvel.android.ads.AdMarvelView.b && !AdMarvelInterstitialAds.enableOfflineSDK)
        {
            break MISSING_BLOCK_LABEL_853;
        }
        flag = b;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_1398;
        }
_L30:
        return false;
_L28:
        Intent intent6;
        if (!f(context) || !g(s))
        {
            break MISSING_BLOCK_LABEL_920;
        }
        intent6 = new Intent("android.intent.action.VIEW");
        intent6.addFlags(0x10000000);
        intent6.setDataAndType(Uri.parse(s), "audio/*");
        if (!a(context, intent6)) goto _L30; else goto _L29
_L29:
        context.startActivity(intent6);
        return true;
        if (!f(context) || !m(s))
        {
            break MISSING_BLOCK_LABEL_1031;
        }
        Intent intent4 = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent4.setDataAndType(Uri.parse(s), "application/pdf");
        intent4.setFlags(0x10000000);
        if (!a(context, intent4))
        {
            break MISSING_BLOCK_LABEL_989;
        }
        context.startActivity(intent4);
        return true;
        Intent intent5 = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent5.addFlags(0x10000000);
        if (!a(context, intent5))
        {
            break MISSING_BLOCK_LABEL_1398;
        }
        context.startActivity(intent5);
        return true;
        boolean flag1;
        if (!j(s))
        {
            break MISSING_BLOCK_LABEL_1266;
        }
        if (com.admarvel.android.ads.ac.a() < 19)
        {
            break MISSING_BLOCK_LABEL_1137;
        }
        flag1 = s.contains("?body=");
        String s1;
        s1 = null;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_1077;
        }
        s1 = URLDecoder.decode(s.split("\\?body=")[1]);
        Intent intent3 = new Intent("android.intent.action.SENDTO", Uri.parse(s));
        if (s1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s1.trim().length() > 0)
        {
            intent3.putExtra("sms_body", s1);
        }
        if (!a(context, intent3)) goto _L30; else goto _L31
_L31:
        context.startActivity(intent3);
        return true;
        Uri uri;
        Intent intent2;
        uri = Uri.parse(s);
        intent2 = new Intent("android.intent.action.VIEW");
        if (!s.contains("?body="))
        {
            break MISSING_BLOCK_LABEL_1245;
        }
        String as[] = s.split("\\?body=");
        intent2.putExtra("address", URLDecoder.decode(as[0]).substring(4));
        intent2.putExtra("sms_body", URLDecoder.decode(as[1]));
_L33:
        intent2.setType("vnd.android-dir/mms-sms");
        intent2.addFlags(0x10000000);
        if (!a(context, intent2)) goto _L30; else goto _L32
_L32:
        context.startActivity(intent2);
        return true;
        intent2.putExtra("address", uri.toString().substring(4));
          goto _L33
        Intent intent;
        if (!i(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        intent = new Intent("android.intent.action.DIAL", Uri.parse(s));
        intent.addFlags(0x10000000);
        if (!a(context, intent)) goto _L30; else goto _L34
_L34:
        context.startActivity(intent);
        return true;
        if (!l(s) && !h(s) && !n(s) && !o(s) && !k(s)) goto _L30; else goto _L35
_L35:
        Intent intent1;
        intent1 = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent1.addFlags(0x10000000);
        if (!a(context, intent1)) goto _L30; else goto _L36
_L36:
        context.startActivity(intent1);
        return true;
        s7 = null;
          goto _L37
        return true;
    }

    static String c(Context context)
    {
        if (context != null) goto _L2; else goto _L1
_L1:
        try
        {
            throw new NullPointerException();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
_L4:
        return "unknown-network";
_L2:
        String s;
        int i1;
        s = ((TelephonyManager)context.getSystemService("phone")).getNetworkOperatorName();
        i1 = s.length();
        if (i1 > 0)
        {
            return s;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static String c(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(com.admarvel.android.util.b.b(s.getBytes(), 8), "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Logging.log(Log.getStackTraceString(unsupportedencodingexception));
            return "";
        }
        return s1;
    }

    public static boolean c()
    {
        return com.admarvel.android.ads.ac.a() == 16;
    }

    public static boolean c(Context context, String s)
    {
        Boolean boolean1;
        boolean1 = Boolean.valueOf(false);
        if (com.admarvel.android.ads.ac.a() >= 7 && s.equals("camera"))
        {
            return Boolean.valueOf(com.admarvel.android.ads.c.a(context, s)).booleanValue();
        }
        if (com.admarvel.android.ads.ac.a() >= 8)
        {
            return Boolean.valueOf(com.admarvel.android.ads.c.a(context, s)).booleanValue();
        }
        if (!s.equals("camera")) goto _L2; else goto _L1
_L1:
        Camera camera1 = Camera.open();
        Camera camera = camera1;
_L5:
        RuntimeException runtimeexception;
        Boolean boolean2;
        if (camera != null)
        {
            boolean2 = Boolean.valueOf(true);
        } else
        {
            boolean2 = boolean1;
        }
        boolean1 = boolean2;
_L4:
        return boolean1.booleanValue();
_L2:
        if (s.equals("location"))
        {
            if ((LocationManager)context.getSystemService("location") != null)
            {
                boolean1 = Boolean.valueOf(true);
            }
        } else
        if (s.equals("accelerometer"))
        {
            if (com.admarvel.android.ads.n.a().a(context))
            {
                boolean1 = Boolean.valueOf(true);
            }
        } else
        if (s.equals("compass") && com.admarvel.android.ads.n.a().b(context))
        {
            boolean1 = Boolean.valueOf(true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        runtimeexception;
        camera = null;
          goto _L5
    }

    static int d(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException();
        }
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        return display.getWidth() <= display.getHeight() ? 1 : 2;
    }

    public static boolean d(Context context, String s)
    {
        return context.checkCallingOrSelfPermission(s) == 0;
    }

    static boolean d(String s)
    {
        return s != null && s.length() > 0 && (s.equals("admarvelsdk://noclick") || s.equals("admarvelsdk://nothing"));
    }

    public static Integer e(Context context)
    {
        if (context != null)
        {
            if (d(context) == 1)
            {
                return Integer.valueOf(1);
            } else
            {
                return Integer.valueOf(0);
            }
        } else
        {
            return null;
        }
    }

    public static boolean e(String s)
    {
        return a(s, "admarvelsdk") != f.c || a(s, "admarvelinternal") != f.c || a(s, "admarvelvideo") != f.c || a(s, "admarvelexternal") != f.c || a(s, "admarvelcustomvideo") != f.c;
    }

    public static final boolean f(Context context)
    {
        if (d(context, "android.permission.ACCESS_NETWORK_STATE"))
        {
            ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
            if (connectivitymanager.getActiveNetworkInfo() != null && connectivitymanager.getActiveNetworkInfo().isAvailable() && connectivitymanager.getActiveNetworkInfo().isConnected())
            {
                return true;
            }
        }
        return false;
    }

    private static boolean f(String s)
    {
label0:
        {
            boolean flag = false;
            if (s == null)
            {
                break label0;
            }
            int i1 = s.length();
            flag = false;
            if (i1 <= 0)
            {
                break label0;
            }
            if (!s.toLowerCase().endsWith(".mp4"))
            {
                boolean flag2 = s.toLowerCase().endsWith(".3gp");
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            URL url;
            String s1;
            int j1;
            try
            {
                url = new URL(s);
            }
            catch (MalformedURLException malformedurlexception)
            {
                return false;
            }
            s1 = url.getPath();
            flag = false;
            if (s1 == null)
            {
                break label0;
            }
            j1 = s1.length();
            flag = false;
            if (j1 <= 0)
            {
                break label0;
            }
            if (!s1.toLowerCase().endsWith(".mp4"))
            {
                boolean flag1 = s1.toLowerCase().endsWith(".3gp");
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public static int g(Context context)
    {
        WindowManager windowmanager = (WindowManager)context.getApplicationContext().getSystemService("window");
        if (com.admarvel.android.ads.ac.a() >= 13)
        {
            Point point = new Point();
            windowmanager.getDefaultDisplay().getSize(point);
            return point.x;
        } else
        {
            return windowmanager.getDefaultDisplay().getWidth();
        }
    }

    private static boolean g(String s)
    {
label0:
        {
            boolean flag = false;
            if (s == null)
            {
                break label0;
            }
            int i1 = s.length();
            flag = false;
            if (i1 <= 0)
            {
                break label0;
            }
            if (!s.toLowerCase().endsWith(".flac") && !s.toLowerCase().endsWith(".mp3") && !s.toLowerCase().endsWith(".mid") && !s.toLowerCase().endsWith(".xmf") && !s.toLowerCase().endsWith(".mxmf") && !s.toLowerCase().endsWith(".rtttl") && !s.toLowerCase().endsWith(".rtx") && !s.toLowerCase().endsWith(".ota"))
            {
                boolean flag2 = s.toLowerCase().endsWith(".imy");
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            URL url;
            String s1;
            int j1;
            try
            {
                url = new URL(s);
            }
            catch (MalformedURLException malformedurlexception)
            {
                return false;
            }
            s1 = url.getPath();
            flag = false;
            if (s1 == null)
            {
                break label0;
            }
            j1 = s1.length();
            flag = false;
            if (j1 <= 0)
            {
                break label0;
            }
            if (!s1.toLowerCase().endsWith(".flac") && !s1.toLowerCase().endsWith(".mp3") && !s1.toLowerCase().endsWith(".mid") && !s1.toLowerCase().endsWith(".xmf") && !s1.toLowerCase().endsWith(".mxmf") && !s1.toLowerCase().endsWith(".rtttl") && !s1.toLowerCase().endsWith(".rtx") && !s1.toLowerCase().endsWith(".ota"))
            {
                boolean flag1 = s1.toLowerCase().endsWith(".imy");
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public static int h(Context context)
    {
        WindowManager windowmanager = (WindowManager)context.getApplicationContext().getSystemService("window");
        if (com.admarvel.android.ads.ac.a() >= 13)
        {
            Point point = new Point();
            windowmanager.getDefaultDisplay().getSize(point);
            return point.y;
        } else
        {
            return windowmanager.getDefaultDisplay().getHeight();
        }
    }

    private static boolean h(String s)
    {
        return s != null && s.length() > 0 && s.toLowerCase().startsWith("google.streetview:");
    }

    public static float i(Context context)
    {
        WindowManager windowmanager = (WindowManager)context.getApplicationContext().getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.density;
    }

    private static boolean i(String s)
    {
        return s != null && s.length() > 0 && (s.toLowerCase().startsWith("tel:") || s.toLowerCase().startsWith("voicemail:"));
    }

    public static boolean j(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getPhoneType() != 0;
    }

    private static boolean j(String s)
    {
        return s != null && s.length() > 0 && s.toLowerCase().startsWith("sms:");
    }

    public static boolean k(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        return connectivitymanager.getActiveNetworkInfo() != null && connectivitymanager.getActiveNetworkInfo().isAvailable() && connectivitymanager.getActiveNetworkInfo().isConnected();
    }

    private static boolean k(String s)
    {
        return s != null && s.length() > 0 && s.toLowerCase().startsWith("mailto:");
    }

    public static void l(Context context)
    {
        long l1;
        long l2;
        l1 = Calendar.getInstance().getTimeInMillis();
        l2 = AdMarvelUtils.getPreferenceValueLong(context, "adm_viewport", "adm_viewport_timestamp");
        if (l2 == 0xffffffff80000000L)
        {
            l2 = 0L;
        }
        if (l1 - l2 < 0x5265c00L) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader((new URL("http://admarvel.s3.amazonaws.com/sdk/admarvel_android_sdk_dynamic_viewport.js")).openConnection().getInputStream()));
_L5:
        String s = bufferedreader.readLine();
        if (s == null) goto _L4; else goto _L3
_L3:
        MalformedURLException malformedurlexception;
        stringbuilder.append(s);
          goto _L5
_L7:
        AdMarvelUtils.setPreferenceValueString(context, "adm_viewport", "adm_viewport_data", stringbuilder.toString());
        AdMarvelUtils.setPreferenceValueLong(context, "adm_viewport", "adm_viewport_timestamp", Calendar.getInstance().getTimeInMillis());
_L2:
        a = AdMarvelUtils.getPreferenceValueString(context, "adm_viewport", "adm_viewport_data");
        if (a.equals("VALUE_NOT_DEFINED"))
        {
            Logging.log("Viewport data fetch failed - Setting blank string");
            a = "";
        }
        return;
_L4:
        try
        {
            bufferedreader.close();
        }
        // Misplaced declaration of an exception variable
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static boolean l(String s)
    {
        return s != null && s.length() > 0 && s.toLowerCase().startsWith("geo:");
    }

    public static void m(Context context)
    {
        long l1 = Calendar.getInstance().getTimeInMillis();
        long l2 = AdMarvelUtils.getPreferenceValueLong(context, "adm_viewport", "adm_video_cleanup_timestamp");
        if (l2 == 0xffffffff80000000L)
        {
            l2 = 0L;
        }
        if (l1 - l2 >= 0xdbba0L)
        {
            (new Thread(new Runnable(context) {

                final Context a;

                public void run()
                {
                    int i1 = 0;
                    File file = a.getDir("adm_cache_files", 0);
                    if (!file.isDirectory())
                    {
                        break MISSING_BLOCK_LABEL_89;
                    }
                    File afile[];
                    int j1;
                    File file1;
                    try
                    {
                        afile = file.listFiles();
                        j1 = afile.length;
                    }
                    catch (Exception exception)
                    {
                        break; /* Loop/switch isn't completed */
                    }
_L2:
                    if (i1 >= j1)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    file1 = afile[i1];
                    if (System.currentTimeMillis() - file1.lastModified() > 0xcd140L)
                    {
                        file1.delete();
                    }
                    i1++;
                    continue; /* Loop/switch isn't completed */
                    if (true) goto _L2; else goto _L1
_L1:
                    AdMarvelUtils.setPreferenceValueLong(a, "adm_viewport", "adm_video_cleanup_timestamp", Calendar.getInstance().getTimeInMillis());
                }

            
            {
                a = context;
                super();
            }
            })).start();
        }
    }

    private static boolean m(String s)
    {
label0:
        {
            boolean flag = false;
            if (s == null)
            {
                break label0;
            }
            int i1 = s.length();
            flag = false;
            if (i1 <= 0)
            {
                break label0;
            }
            if (!s.toLowerCase().endsWith(".pdf"))
            {
                boolean flag2 = s.toLowerCase().endsWith(".pdf");
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            URL url;
            String s1;
            int j1;
            try
            {
                url = new URL(s);
            }
            catch (MalformedURLException malformedurlexception)
            {
                return false;
            }
            s1 = url.getPath();
            flag = false;
            if (s1 == null)
            {
                break label0;
            }
            j1 = s1.length();
            flag = false;
            if (j1 <= 0)
            {
                break label0;
            }
            if (!s1.toLowerCase().endsWith(".pdf"))
            {
                boolean flag1 = s1.toLowerCase().endsWith(".pdf");
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    private static boolean n(String s)
    {
        return s != null && s.length() > 0 && s.toLowerCase().startsWith("market://");
    }

    private static boolean o(String s)
    {
        return s != null && s.length() > 0 && s.toLowerCase().startsWith("vzw://");
    }

    private static boolean p(String s)
    {
        return s != null && s.length() > 0 && (s.toLowerCase().endsWith(".mp4") || s.toLowerCase().endsWith(".3gp"));
    }

    private static boolean q(String s)
    {
        return s != null && s.length() > 0 && (s.toLowerCase().endsWith(".flac") || s.toLowerCase().endsWith(".mp3") || s.toLowerCase().endsWith(".mid") || s.toLowerCase().endsWith(".xmf") || s.toLowerCase().endsWith(".mxmf") || s.toLowerCase().endsWith(".rtttl") || s.toLowerCase().endsWith(".rtx") || s.toLowerCase().endsWith(".ota") || s.toLowerCase().endsWith(".imy"));
    }

    private static boolean r(String s)
    {
        return s != null && s.length() > 0 && (s.toLowerCase().endsWith(".pdf") || s.toLowerCase().endsWith(".pdf"));
    }

    public String a()
    {
        Context context1;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        context1 = (Context)c.get();
        if (context1 == null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        Constructor constructor;
        constructor = android/webkit/WebSettings.getDeclaredConstructor(new Class[] {
            android/content/Context, android/webkit/WebView
        });
        constructor.setAccessible(true);
        String s1;
        Object aobj[] = new Object[2];
        aobj[0] = context1.getApplicationContext();
        aobj[1] = null;
        s1 = ((WebSettings)constructor.newInstance(aobj)).getUserAgentString();
        constructor.setAccessible(false);
        return s1;
        Exception exception1;
        exception1;
        try
        {
            constructor.setAccessible(false);
            throw exception1;
        }
        catch (Exception exception) { }
        if (Thread.currentThread().getName().equalsIgnoreCase("main") && c != null)
        {
            Context context = (Context)c.get();
            if (context != null)
            {
                return (new WebView(context)).getSettings().getUserAgentString();
            }
        }
        break MISSING_BLOCK_LABEL_167;
        String s = b();
        return s;
        return b();
    }

    public void a(AdMarvelAd admarvelad)
    {
        StringBuilder stringbuilder;
label0:
        {
            stringbuilder = new StringBuilder();
            if (admarvelad != null && admarvelad.getPixels() != null)
            {
                String s;
                for (Iterator iterator = admarvelad.getPixels().iterator(); iterator.hasNext(); stringbuilder.append("<img src=\"").append(s).append("\" />"))
                {
                    s = (String)iterator.next();
                }

            }
            if (stringbuilder != null && stringbuilder.length() > 0)
            {
                if (!Thread.currentThread().getName().equalsIgnoreCase("main"))
                {
                    break label0;
                }
                if (c != null)
                {
                    Context context = (Context)c.get();
                    if (context != null)
                    {
                        (new WebView(context)).loadDataWithBaseURL(null, stringbuilder.toString(), "text/html", "utf-8", null);
                    }
                }
            }
            return;
        }
        e = stringbuilder.toString();
        d.post(new Runnable() {

            final ab a;

            public void run()
            {
                if (com.admarvel.android.ads.ab.a(a) != null)
                {
                    Context context1 = (Context)com.admarvel.android.ads.ab.a(a).get();
                    if (context1 != null)
                    {
                        (new WebView(context1)).loadDataWithBaseURL(null, com.admarvel.android.ads.ab.b(a), "text/html", "utf-8", null);
                    }
                }
            }

            
            {
                a = ab.this;
                super();
            }
        });
    }

    public void a(String s)
    {
        if (s != null && s.length() > 0)
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("<img src=\"").append(s).append("\" />");
            if (stringbuilder != null && stringbuilder.length() > 0)
            {
                if (Thread.currentThread().getName().equalsIgnoreCase("main"))
                {
                    if (c != null)
                    {
                        Context context = (Context)c.get();
                        if (context != null)
                        {
                            (new WebView(context)).loadDataWithBaseURL(null, stringbuilder.toString(), "text/html", "utf-8", null);
                            return;
                        }
                    }
                } else
                {
                    e = stringbuilder.toString();
                    d.post(new Runnable() {

                        final ab a;

                        public void run()
                        {
                            if (com.admarvel.android.ads.ab.a(a) != null)
                            {
                                Context context1 = (Context)com.admarvel.android.ads.ab.a(a).get();
                                if (context1 != null)
                                {
                                    (new WebView(context1)).loadDataWithBaseURL(null, com.admarvel.android.ads.ab.b(a), "text/html", "utf-8", null);
                                }
                            }
                        }

            
            {
                a = ab.this;
                super();
            }
                    });
                    return;
                }
            }
        }
    }

    public void a(String s, Handler handler)
    {
        if (com.admarvel.android.ads.ac.a() >= 11 && handler != null)
        {
            try
            {
                handler.post(new e(s));
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_50;
        }
        (new d(s)).execute(new Void[0]);
        return;
    }

    void b(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (com.admarvel.android.ads.ac.a() < 11) goto _L4; else goto _L3
_L3:
        d.post(new b());
_L14:
        String s1;
        AdMarvelXMLElement admarvelxmlelement1;
        AdMarvelXMLReader admarvelxmlreader = new AdMarvelXMLReader();
        admarvelxmlreader.parseXMLString(s);
        AdMarvelXMLElement admarvelxmlelement = admarvelxmlreader.getParsedXMLData();
        if (!admarvelxmlelement.c().containsKey("trackers"))
        {
            break MISSING_BLOCK_LABEL_458;
        }
        admarvelxmlelement1 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("trackers")).get(0);
        s1 = (String)admarvelxmlelement1.getAttributes().get("id");
        if (!admarvelxmlelement1.c().containsKey("tracker")) goto _L6; else goto _L5
_L5:
        int i1 = ((ArrayList)admarvelxmlelement1.c().get("tracker")).size();
        ArrayList arraylist;
        int j1;
        j1 = 0;
        arraylist = null;
_L13:
        if (j1 >= i1) goto _L8; else goto _L7
_L7:
        AdMarvelXMLElement admarvelxmlelement2 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("tracker")).get(j1);
        if (admarvelxmlelement2 == null) goto _L10; else goto _L9
_L9:
        String s2 = admarvelxmlelement2.b();
        if (arraylist != null) goto _L12; else goto _L11
_L11:
        ArrayList arraylist1 = new ArrayList();
_L19:
        arraylist1.add(s2);
_L20:
        j1++;
        arraylist = arraylist1;
          goto _L13
_L4:
        d.post(new a());
          goto _L14
        Exception exception;
        exception;
        arraylist = null;
        s1 = null;
_L18:
        Logging.log(Log.getStackTraceString(exception));
_L8:
        if (s1 == null || s1.length() <= 0) goto _L1; else goto _L15
_L15:
        Context context;
        Exception exception1;
        if (c != null)
        {
            context = (Context)c.get();
        } else
        {
            context = null;
        }
        if (context == null || a(context, s1) || arraylist == null) goto _L1; else goto _L16
_L16:
        if (arraylist.isEmpty() || !"mounted".equals(Environment.getExternalStorageState())) goto _L1; else goto _L17
_L17:
        File file = new File(Environment.getExternalStorageDirectory(), (new StringBuilder()).append("/").append(c("adm_tracker_dir")).append("/").append(c(s1)).toString());
        file.getParentFile().mkdirs();
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(new FileOutputStream(file));
        objectoutputstream.writeObject(arraylist);
        objectoutputstream.close();
        return;
        exception1;
        Logging.log(Log.getStackTraceString(exception1));
        return;
        exception;
        arraylist = null;
          goto _L18
        exception;
        arraylist = arraylist1;
          goto _L18
        exception;
          goto _L18
_L12:
        arraylist1 = arraylist;
          goto _L19
_L10:
        arraylist1 = arraylist;
          goto _L20
_L6:
        arraylist = null;
          goto _L8
        s1 = null;
        arraylist = null;
          goto _L8
    }


    private class f extends Enum
    {

        public static final f a;
        public static final f b;
        public static final f c;
        private static final f d[];

        public static f valueOf(String s)
        {
            return (f)Enum.valueOf(com/admarvel/android/ads/ab$f, s);
        }

        public static f[] values()
        {
            return (f[])d.clone();
        }

        static 
        {
            a = new f("WITH_SLASH", 0);
            b = new f("WITHOUT_SLASH", 1);
            c = new f("NONE", 2);
            f af[] = new f[3];
            af[0] = a;
            af[1] = b;
            af[2] = c;
            d = af;
        }

        private f(String s, int i1)
        {
            super(s, i1);
        }
    }


    private class c
    {

        public static boolean a(Context context, String s)
        {
            PackageManager packagemanager = context.getPackageManager();
            if (s.equals("camera"))
            {
                return packagemanager.hasSystemFeature("android.hardware.camera");
            }
            if (com.admarvel.android.ads.ac.a() >= 8)
            {
                if (s.equals("location"))
                {
                    return packagemanager.hasSystemFeature("android.hardware.location");
                }
                if (s.equals("accelerometer"))
                {
                    return packagemanager.hasSystemFeature("android.hardware.sensor.accelerometer");
                }
                if (s.equals("compass"))
                {
                    return packagemanager.hasSystemFeature("android.hardware.sensor.compass");
                }
            }
            return false;
        }
    }


    private class e
        implements Runnable
    {

        final ab a;
        private String b;

        public void run()
        {
            (a. new d(b)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }

        public e(String s)
        {
            a = ab.this;
            super();
            b = s;
        }
    }


    private class d extends AsyncTask
    {

        final ab a;
        private String b;

        protected transient Boolean a(Void avoid[])
        {
            Context context = (Context)com.admarvel.android.ads.ab.a(a).get();
            if (context != null)
            {
                break MISSING_BLOCK_LABEL_23;
            }
            return Boolean.valueOf(false);
            Boolean boolean1;
            if (!((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo().isConnected())
            {
                break MISSING_BLOCK_LABEL_111;
            }
            HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(b)).openConnection();
            httpurlconnection.setReadTimeout(10000);
            httpurlconnection.setConnectTimeout(5000);
            httpurlconnection.connect();
            if (httpurlconnection.getResponseCode() == 200)
            {
                return Boolean.valueOf(true);
            }
            boolean1 = Boolean.valueOf(false);
            return boolean1;
            IOException ioexception;
            ioexception;
            ioexception.printStackTrace();
            return Boolean.valueOf(false);
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

        public d(String s)
        {
            a = ab.this;
            super();
            b = s;
        }
    }


    private class b
        implements Runnable
    {

        public void run()
        {
            h h1 = new h();
            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Object aobj[] = new Object[1];
            aobj[0] = (Object)null;
            h1.executeOnExecutor(executor, aobj);
        }

        private b()
        {
        }

    }


    private class a
        implements Runnable
    {

        public void run()
        {
            h h1 = new h();
            Object aobj[] = new Object[1];
            aobj[0] = (Object)null;
            h1.execute(aobj);
        }

        private a()
        {
        }

    }

}
