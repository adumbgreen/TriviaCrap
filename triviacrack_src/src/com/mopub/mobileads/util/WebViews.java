// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;

import android.util.Log;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.lang.reflect.Method;

public class WebViews
{

    public WebViews()
    {
    }

    public static void onPause(WebView webview)
    {
        try
        {
            android/webkit/WebView.getDeclaredMethod("onPause", new Class[0]).invoke(webview, new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void onResume(WebView webview)
    {
        try
        {
            android/webkit/WebView.getDeclaredMethod("onResume", new Class[0]).invoke(webview, new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void setDisableJSChromeClient(WebView webview)
    {
        webview.setWebChromeClient(new WebChromeClient() {

            public boolean onJsAlert(WebView webview1, String s, String s1, JsResult jsresult)
            {
                Log.d("MoPub - WebViewsUtil", s1);
                return true;
            }

            public boolean onJsBeforeUnload(WebView webview1, String s, String s1, JsResult jsresult)
            {
                Log.d("MoPub - WebViewsUtil", s1);
                return true;
            }

            public boolean onJsConfirm(WebView webview1, String s, String s1, JsResult jsresult)
            {
                Log.d("MoPub - WebViewsUtil", s1);
                return true;
            }

            public boolean onJsPrompt(WebView webview1, String s, String s1, String s2, JsPromptResult jspromptresult)
            {
                Log.d("MoPub - WebViewsUtil", s1);
                return true;
            }

        });
    }
}
