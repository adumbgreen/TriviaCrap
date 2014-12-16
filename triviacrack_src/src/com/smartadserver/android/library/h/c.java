// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.h;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.smartadserver.android.library.ui.SASAdView;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.smartadserver.android.library.h:
//            a

public class c
{

    public static boolean a = false;
    public static String b = "unknown app";
    private static a c;
    private static final String d = com/smartadserver/android/library/h/c.getSimpleName();
    private static Boolean e = Boolean.valueOf(false);
    private static final String f = com/smartadserver/android/library/h/c.getSimpleName();
    private static String g = "unkownUserAgent";
    private static com.google.android.gms.ads.identifier.AdvertisingIdClient.Info h = null;
    private static String i = g("3636353630");

    public c()
    {
    }

    public static int a(int j, Resources resources)
    {
        return (int)TypedValue.applyDimension(1, j, resources.getDisplayMetrics());
    }

    public static int a(View view)
    {
        ViewGroup viewgroup = (ViewGroup)view.getParent();
        if (viewgroup != null)
        {
            return viewgroup.indexOfChild(view);
        } else
        {
            return -1;
        }
    }

    public static com.google.android.gms.ads.identifier.AdvertisingIdClient.Info a(Context context, boolean flag)
    {
        com/smartadserver/android/library/h/c;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag1;
        long l;
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        Exception exception1;
        if (h != null && !flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        l = System.currentTimeMillis();
        if (context == null || !flag1)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        h = AdvertisingIdClient.getAdvertisingIdInfo(context);
        a((new StringBuilder()).append("Retrieved Google Advertising id in : ").append(System.currentTimeMillis() - l).append(" ms").toString());
_L1:
        info = h;
        com/smartadserver/android/library/h/c;
        JVM INSTR monitorexit ;
        return info;
        exception1;
        c((new StringBuilder()).append("Can not retrieve Google Advertising id due to exception: ").append(exception1.getMessage()).toString());
          goto _L1
        exception;
        throw exception;
    }

    public static String a(Context context)
    {
        String s = b;
        if (context != null)
        {
            s = context.getPackageName();
        }
        return s;
    }

    public static String a(JSONObject jsonobject)
    {
        String s;
        int j;
        long l;
        JSONArray jsonarray;
        JSONArray jsonarray1;
        JSONArray jsonarray2;
        JSONArray jsonarray3;
        JSONArray jsonarray4;
        String s1;
        s = jsonobject.optString("frequency", "");
        j = jsonobject.optInt("interval", -1);
        l = jsonobject.optLong("expires", -1L);
        jsonarray = jsonobject.optJSONArray("daysInWeek");
        jsonarray1 = jsonobject.optJSONArray("daysInMonth");
        jsonarray2 = jsonobject.optJSONArray("daysInYear");
        jsonarray3 = jsonobject.optJSONArray("weeksInMonth");
        jsonarray4 = jsonobject.optJSONArray("monthsInYear");
        s1 = "";
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!"daily".equals(s)) goto _L4; else goto _L3
_L3:
        s1 = "FREQ=DAILY";
_L2:
        String s5;
        String s2 = "";
        if (j >= 0)
        {
            s2 = (new StringBuilder()).append("INTERVAL=").append(j).toString();
        }
        String s3 = "";
        if (l > 0L)
        {
            String s4 = (new SimpleDateFormat("yyyyMMdd")).format(new Date(l));
            s3 = (new StringBuilder()).append("UNTIL=").append(s4).toString();
        }
        int ai[];
        String s6;
        int k;
        int i1;
        int ai1[];
        String s7;
        int j1;
        int ai2[];
        String s8;
        int k1;
        int l1;
        int i2;
        int ai3[];
        String s9;
        int j2;
        int k2;
        int l2;
        int i3;
        String s10;
        int j3;
        int k3;
        String s11;
        int ai4[];
        String s12;
        int l3;
        int i4;
        int ai5[];
        String as[];
        String s13;
        int j4;
        int k4;
        if (s1.length() <= 0)
        {
            s1 = "";
        }
        if (s2.length() > 0)
        {
            if (s1.length() > 0)
            {
                s1 = (new StringBuilder()).append(s1).append(";").toString();
            }
            s1 = (new StringBuilder()).append(s1).append(s2).toString();
        }
        if (s3.length() > 0)
        {
            if (s1.length() > 0)
            {
                s1 = (new StringBuilder()).append(s1).append(";").toString();
            }
            s1 = (new StringBuilder()).append(s1).append(s3).toString();
        }
        return s1;
_L4:
        if ("weekly".equals(s))
        {
            s5 = "FREQ=WEEKLY";
            if (jsonarray != null)
            {
                ai5 = a(jsonarray);
                as = (new String[] {
                    "SU", "MO", "TU", "WE", "TH", "FR", "SA"
                });
                s13 = "";
                for (j4 = 0; j4 < ai5.length; j4++)
                {
                    k4 = ai5[j4];
                    if (k4 >= 0 && k4 <= 6)
                    {
                        s13 = (new StringBuilder()).append(s13).append(as[k4]).append(",").toString();
                    }
                }

                if (s13.endsWith(","))
                {
                    s13 = s13.substring(0, -1 + s13.length());
                }
                if (s13.length() > 0)
                {
                    s1 = (new StringBuilder()).append(s5).append(";BYDAY=").append(s13).toString();
                    continue; /* Loop/switch isn't completed */
                }
            }
            break MISSING_BLOCK_LABEL_1387;
        }
        if (!"monthly".equals(s))
        {
            break MISSING_BLOCK_LABEL_927;
        }
        s5 = "FREQ=MONTHLY";
        if (jsonarray1 != null)
        {
            ai4 = a(jsonarray1);
            s12 = "";
            for (l3 = 0; l3 < ai4.length; l3++)
            {
                i4 = ai4[l3];
                if (i4 >= -30 && i4 <= 31 && i4 != 0)
                {
                    s12 = (new StringBuilder()).append(s12).append(i4).append(",").toString();
                }
            }

            if (s12.endsWith(","))
            {
                s12 = s12.substring(0, -1 + s12.length());
            }
            if (s12.length() > 0)
            {
                s1 = (new StringBuilder()).append(s5).append(";BYMONTHDAY=").append(s12).toString();
                continue; /* Loop/switch isn't completed */
            }
            break MISSING_BLOCK_LABEL_1387;
        }
        if (jsonarray3 == null)
        {
            break MISSING_BLOCK_LABEL_1387;
        }
        ai3 = a(jsonarray3);
        s9 = "";
        j2 = 0;
_L11:
        if (j2 >= ai3.length)
        {
            break MISSING_BLOCK_LABEL_860;
        }
        k2 = ai3[j2];
        if (k2 < -5 || k2 > 5 || k2 == 0) goto _L6; else goto _L5
_L5:
        if (k2 <= 0) goto _L8; else goto _L7
_L7:
        j3 = 1;
_L12:
        if (j3 >= 8) goto _L6; else goto _L9
_L9:
        k3 = j3 + 7 * (k2 - 1);
        if (k3 <= 31) goto _L10; else goto _L6
_L6:
        j2++;
          goto _L11
_L10:
        s11 = (new StringBuilder()).append(s9).append(k3).append(",").toString();
        j3++;
        s9 = s11;
          goto _L12
_L8:
        l2 = 1;
_L15:
        if (l2 >= 8) goto _L6; else goto _L13
_L13:
        i3 = 7 * (k2 + 1) - l2;
        if (i3 < -31) goto _L6; else goto _L14
_L14:
        s10 = (new StringBuilder()).append(s9).append(i3).append(",").toString();
        l2++;
        s9 = s10;
          goto _L15
        if (s9.endsWith(","))
        {
            s9 = s9.substring(0, -1 + s9.length());
        }
        if (s9.length() > 0)
        {
            s5 = (new StringBuilder()).append(s5).append(";BYMONTHDAY=").append(s9).toString();
        }
        s1 = s5;
        continue; /* Loop/switch isn't completed */
        if (!"yearly".equals(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        s5 = "FREQ=YEARLY";
        if (jsonarray4 != null)
        {
            ai1 = a(jsonarray4);
            s7 = "";
            for (j1 = 0; j1 < ai1.length; j1++)
            {
                i2 = ai1[j1];
                if (i2 >= 0 && i2 <= 12)
                {
                    s7 = (new StringBuilder()).append(s7).append(i2).append(",").toString();
                }
            }

            if (s7.endsWith(","))
            {
                s7 = s7.substring(0, -1 + s7.length());
            }
            if (s7.length() > 0)
            {
                s5 = (new StringBuilder()).append(s5).append(";BYMONTH=").append(s7).toString();
            }
            if (jsonarray1 != null)
            {
                ai2 = a(jsonarray1);
                s8 = "";
                for (k1 = 0; k1 < ai2.length; k1++)
                {
                    l1 = ai2[k1];
                    if (l1 >= -30 && l1 <= 31 && l1 != 0)
                    {
                        s8 = (new StringBuilder()).append(s8).append(l1).append(",").toString();
                    }
                }

                if (s8.endsWith(","))
                {
                    s8 = s8.substring(0, -1 + s8.length());
                }
                if (s8.length() > 0)
                {
                    s1 = (new StringBuilder()).append(s5).append(";BYMONTHDAY=").append(s8).toString();
                    continue; /* Loop/switch isn't completed */
                }
            }
        } else
        if (jsonarray2 != null)
        {
            ai = a(jsonarray2);
            s6 = "";
            for (k = 0; k < ai.length; k++)
            {
                i1 = ai[k];
                if (i1 >= -365 && i1 <= 366 && i1 != 0)
                {
                    s6 = (new StringBuilder()).append(s6).append(i1).append(",").toString();
                }
            }

            if (s6.endsWith(","))
            {
                s6 = s6.substring(0, -1 + s6.length());
            }
            if (s6.length() > 0)
            {
                s1 = (new StringBuilder()).append(s5).append(";BYYEARDAY=").append(s6).toString();
                continue; /* Loop/switch isn't completed */
            }
        }
        s1 = s5;
        if (true) goto _L2; else goto _L16
_L16:
    }

    public static void a(String s)
    {
        if (e.booleanValue() && s != null)
        {
            Log.i(f, s);
        }
    }

    public static void a(String s, String s1)
    {
        if (a && s1 != null)
        {
            Log.d(s, s1);
        }
    }

    public static boolean a()
    {
        return Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper();
    }

    private static int[] a(JSONArray jsonarray)
    {
        int ai[] = null;
        if (jsonarray != null)
        {
            int ai1[] = new int[jsonarray.length()];
            int j = 0;
            while (j < ai1.length) 
            {
                try
                {
                    ai1[j] = ((Integer)jsonarray.get(j)).intValue();
                }
                catch (JSONException jsonexception) { }
                j++;
            }
            ai = ai1;
        }
        return ai;
    }

    public static String b()
    {
        return (new SimpleDateFormat("ddMMyyyyhhmmss")).format(new Date());
    }

    public static String b(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s == null)
        {
            s = "0000000000000000";
        }
        if (SASAdView.e())
        {
            String s1;
            try
            {
                s1 = d(s);
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                nosuchalgorithmexception.printStackTrace();
                return s;
            }
            s = s1;
        }
        return s;
    }

    public static void b(String s)
    {
        if (e.booleanValue() && s != null)
        {
            Log.w(f, s);
        }
    }

    public static ConnectivityManager c(Context context)
    {
        return (ConnectivityManager)context.getSystemService("connectivity");
    }

    public static String c()
    {
        Enumeration enumeration = NetworkInterface.getNetworkInterfaces();
_L2:
        Enumeration enumeration1;
        if (!enumeration.hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_65;
        }
        enumeration1 = ((NetworkInterface)enumeration.nextElement()).getInetAddresses();
_L4:
        if (!enumeration1.hasMoreElements()) goto _L2; else goto _L1
_L1:
        InetAddress inetaddress = (InetAddress)enumeration1.nextElement();
        if (inetaddress.isLoopbackAddress()) goto _L4; else goto _L3
_L3:
        String s = inetaddress.getHostAddress().toString();
        return s;
        SocketException socketexception;
        socketexception;
        return "unknown";
    }

    public static void c(String s)
    {
        if (s != null)
        {
            Log.e(f, s);
        }
    }

    public static String d()
    {
        return i;
    }

    public static String d(String s)
    {
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s.getBytes());
        byte abyte0[] = messagedigest.digest();
        StringBuffer stringbuffer = new StringBuffer();
        for (int j = 0; j < abyte0.length; j++)
        {
            String s1 = Integer.toHexString(0xff & abyte0[j]);
            if (s1.length() < 2)
            {
                stringbuffer.append("0");
            }
            stringbuffer.append(s1);
        }

        return stringbuffer.toString();
    }

    public static boolean d(Context context)
    {
        if (c == null)
        {
            NetworkInfo networkinfo = c(context).getActiveNetworkInfo();
            if (networkinfo != null)
            {
                return networkinfo.isConnected();
            } else
            {
                return false;
            }
        } else
        {
            return c.a(context);
        }
    }

    public static String e(Context context)
    {
        String s = g;
        try
        {
            WebView webview = new WebView(context.getApplicationContext());
            s = webview.getSettings().getUserAgentString();
            webview.destroy();
        }
        catch (Exception exception)
        {
            return s;
        }
        return s;
    }

    public static String e(String s)
    {
        if (s != null)
        {
            String s1;
            try
            {
                s1 = URLEncoder.encode(s, "UTF-8").replace("+", "%20");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                unsupportedencodingexception.printStackTrace();
                return s;
            }
            s = s1;
        }
        return s;
    }

    public static int f(Context context)
    {
        switch (((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation())
        {
        default:
            return -1;

        case 0: // '\0'
            return 0;

        case 1: // '\001'
            return 90;

        case 2: // '\002'
            return 180;

        case 3: // '\003'
            return 270;
        }
    }

    public static String f(String s)
    {
        if (s != null)
        {
            return s.substring(0, 1 + s.lastIndexOf("/"));
        } else
        {
            return null;
        }
    }

    private static String g(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        char ac[] = s.toCharArray();
        for (int j = 0; j < -1 + ac.length; j += 2)
        {
            int k = Character.digit(ac[j], 16);
            stringbuilder.append((char)(Character.digit(ac[j + 1], 16) + k * 16));
        }

        return stringbuilder.toString();
    }

    public static boolean g(Context context)
    {
        DisplayMetrics displaymetrics;
        int j;
        displaymetrics = context.getResources().getDisplayMetrics();
        j = f(context);
        if (j != 0 && j != 180) goto _L2; else goto _L1
_L1:
        if (displaymetrics.widthPixels <= displaymetrics.heightPixels) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (displaymetrics.widthPixels >= displaymetrics.heightPixels)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public static int h(Context context)
    {
        int j = 1;
        boolean flag = g(context);
        int k = f(context);
        if (!flag)
        {
            if (k == 90 || k == 270)
            {
                j = 0;
            }
        } else
        if (k == 0 || k == 180)
        {
            return 0;
        }
        return j;
    }

}
