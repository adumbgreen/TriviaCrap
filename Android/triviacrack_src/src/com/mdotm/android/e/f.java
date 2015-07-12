// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mdotm.android.c.a;
import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.mdotm.android.e:
//            a, d

public class f
{

    public static int a = 2;
    public static int b = 1;
    public static int c = 1;
    private static f d;
    private HashMap e;

    public f()
    {
        e = new HashMap();
    }

    public static f a()
    {
        if (d == null)
        {
            d = new f();
        }
        return d;
    }

    private String b()
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
        return String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1", new Object[] {
            stringbuffer
        });
    }

    private com.google.android.gms.ads.identifier.AdvertisingIdClient.Info f(Context context)
    {
        try
        {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            com.mdotm.android.e.d.b("this", "GPS not found ");
            classnotfoundexception.printStackTrace();
            return null;
        }
        return com.mdotm.android.e.a.a(context);
    }

    public a a(long l)
    {
        return (a)e.get(Long.valueOf(l));
    }

    public String a(Context context)
    {
        String s;
        try
        {
            s = (new WebView(context)).getSettings().getUserAgentString();
        }
        catch (Exception exception)
        {
            com.mdotm.android.e.d.a(this, exception.getMessage());
            return b();
        }
        return s;
    }

    public void a(long l, a a1)
    {
        e.put(Long.valueOf(l), a1);
    }

    public void a(String s, Context context)
    {
        WebView webview = new WebView(context);
        webview.getSettings().setJavaScriptEnabled(true);
        webview.setWebViewClient(new WebViewClient(s) {

            final f a;
            private final String b;

            public void onPageFinished(WebView webview1, String s1)
            {
                super.onPageFinished(webview1, s1);
                com.mdotm.android.e.d.b(this, (new StringBuilder("impression finished ")).append(s1).toString());
            }

            public void onPageStarted(WebView webview1, String s1, Bitmap bitmap)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("started impression Loading url ")).append(s1).toString());
                super.onPageStarted(webview1, s1, bitmap);
            }

            public void onReceivedError(WebView webview1, int i, String s1, String s2)
            {
                super.onReceivedError(webview1, i, s1, s2);
                com.mdotm.android.e.d.a(this, (new StringBuilder("Unable to load impression url : ")).append(s1).append(" impression url is ").append(b).toString());
            }

            public boolean shouldOverrideUrlLoading(WebView webview1, String s1)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("shouldOverrideUrlLoading impression url ")).append(s1).toString());
                return super.shouldOverrideUrlLoading(webview1, s1);
            }

            
            {
                a = f.this;
                b = s;
                super();
            }
        });
        webview.loadUrl(s);
    }

    public String b(Context context)
    {
        Point point;
        WindowManager windowmanager;
        point = new Point();
        windowmanager = (WindowManager)context.getSystemService("window");
        if (android.os.Build.VERSION.SDK_INT < 13) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        com.mdotm.android.e.d.b(this, "Getting conditional display size");
        windowmanager.getDefaultDisplay().getSize(point);
        i = point.x;
        j = point.y;
_L4:
        String s = (new StringBuilder(String.valueOf(i))).append(",").append(j).toString();
        com.mdotm.android.e.d.b(this, (new StringBuilder("SCREEN DISPLAY SIZE ")).append(s).toString());
        return s;
_L2:
        int k;
        com.mdotm.android.e.d.b(this, "Default display");
        Display display1 = windowmanager.getDefaultDisplay();
        i = display1.getWidth();
        k = display1.getHeight();
        j = k;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        exception.printStackTrace();
        com.mdotm.android.e.d.b(this, "Default display");
        Display display = windowmanager.getDefaultDisplay();
        i = display.getWidth();
        j = display.getHeight();
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void b(long l)
    {
        e.remove(Long.valueOf(l));
    }

    public String c(Context context)
    {
        int i;
        int j;
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || !networkinfo.isConnected())
        {
            break MISSING_BLOCK_LABEL_272;
        }
        i = networkinfo.getType();
        j = networkinfo.getSubtype();
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        WifiInfo wifiinfo = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo();
        if (wifiinfo == null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        String s;
        Integer integer = Integer.valueOf(wifiinfo.getLinkSpeed());
        com.mdotm.android.e.d.b(this, (new StringBuilder("Wifi bandwidth ")).append(integer).toString());
        s = (new StringBuilder(String.valueOf(String.valueOf(integer)))).append("000").toString();
        return s;
        Exception exception;
        exception;
        return null;
        if (i == 0)
        {
            switch (j)
            {
            default:
                return null;

            case 7: // '\007'
                return "50";

            case 4: // '\004'
                return "14";

            case 2: // '\002'
                return "50";

            case 5: // '\005'
                return "400";

            case 6: // '\006'
                return "600";

            case 1: // '\001'
                return "100";

            case 8: // '\b'
                return "2000";

            case 10: // '\n'
                return "700";

            case 9: // '\t'
                return "1024";

            case 3: // '\003'
                return "400";

            case 14: // '\016'
                return "1024";

            case 12: // '\f'
                return "5120";

            case 15: // '\017'
                return "10240";

            case 11: // '\013'
                return "25600";

            case 13: // '\r'
                return "10240";

            case 0: // '\0'
                return null;
            }
        } else
        {
            return null;
        }
        return null;
    }

    public String d(Context context)
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = f(context);
        String s = null;
        if (info != null)
        {
            s = info.getId();
            com.mdotm.android.e.d.b(this, (new StringBuilder("Ad Id is ")).append(s).toString());
        }
        return s;
    }

    public boolean e(Context context)
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = f(context);
        boolean flag = false;
        if (info != null)
        {
            String s = info.getId();
            flag = false;
            if (s != null)
            {
                flag = info.isLimitAdTrackingEnabled();
                com.mdotm.android.e.d.b(this, (new StringBuilder("isLAT ")).append(flag).toString());
            }
        }
        return flag;
    }

}
