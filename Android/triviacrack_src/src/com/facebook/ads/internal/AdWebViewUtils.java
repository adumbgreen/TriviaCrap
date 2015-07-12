// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

// Referenced classes of package com.facebook.ads.internal:
//            AdType, AdWebViewInterface

public class AdWebViewUtils
{

    public static final long DEFAULT_IMPRESSION_DELAY_MS = 1000L;
    public static final String FBAD_SCHEME = "fbad";
    public static final String WEBVIEW_BASE_URL = "https://www.facebook.com/";
    private static String browserUserAgentString = null;

    public AdWebViewUtils()
    {
    }

    public static void config(WebView webview, WebViewClient webviewclient, AdWebViewInterface adwebviewinterface)
    {
        webview.getSettings().setJavaScriptEnabled(true);
        webview.getSettings().setSupportZoom(false);
        webview.setHorizontalScrollBarEnabled(false);
        webview.setHorizontalScrollbarOverlay(false);
        webview.setVerticalScrollBarEnabled(false);
        webview.setVerticalScrollbarOverlay(false);
        webview.addJavascriptInterface(adwebviewinterface, "AdControl");
        webview.setWebViewClient(webviewclient);
    }

    private static String getDefaultUserAgentL17(Context context)
    {
        return WebSettings.getDefaultUserAgent(context);
    }

    public static String getUserAgentString(Context context, AdType adtype)
    {
        if (AdType.NATIVE == adtype)
        {
            return System.getProperty("http.agent");
        }
        if (browserUserAgentString == null)
        {
            if (android.os.Build.VERSION.SDK_INT >= 17)
            {
                browserUserAgentString = getDefaultUserAgentL17(context);
            } else
            {
                try
                {
                    browserUserAgentString = getUserAgentStringByReflection(context, "android.webkit.WebSettings", "android.webkit.WebView");
                }
                catch (Exception exception)
                {
                    try
                    {
                        browserUserAgentString = getUserAgentStringByReflection(context, "android.webkit.WebSettingsClassic", "android.webkit.WebViewClassic");
                    }
                    catch (Exception exception1)
                    {
                        WebView webview = new WebView(context.getApplicationContext());
                        browserUserAgentString = webview.getSettings().getUserAgentString();
                        webview.destroy();
                    }
                }
            }
        }
        return browserUserAgentString;
    }

    private static String getUserAgentStringByReflection(Context context, String s, String s1)
    {
        Constructor constructor;
        Method method;
        Class class1 = Class.forName(s);
        Class aclass[] = new Class[2];
        aclass[0] = android/content/Context;
        aclass[1] = Class.forName(s1);
        constructor = class1.getDeclaredConstructor(aclass);
        constructor.setAccessible(true);
        method = class1.getMethod("getUserAgentString", new Class[0]);
        String s2 = (String)method.invoke(constructor.newInstance(new Object[] {
            context, null
        }), new Object[0]);
        constructor.setAccessible(false);
        return s2;
        Exception exception;
        exception;
        constructor.setAccessible(false);
        throw exception;
    }

}
