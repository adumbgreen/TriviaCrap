// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, w

class b extends WebChromeClient
{

    private final WeakReference a;
    private final WeakReference b;

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        if (admarvelinternalwebview == null)
        {
            jsresult.cancel();
            return true;
        }
        if (AdMarvelInternalWebView.a(admarvelinternalwebview))
        {
            jsresult.cancel();
            return true;
        }
        if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
        {
            jsresult.cancel();
            return true;
        }
        if (b.get() != null && (b.get() instanceof Activity))
        {
            return super.onJsAlert(webview, s, s1, jsresult);
        } else
        {
            jsresult.cancel();
            return true;
        }
    }

    public boolean onJsBeforeUnload(WebView webview, String s, String s1, JsResult jsresult)
    {
        jsresult.cancel();
        return true;
    }

    public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        if (admarvelinternalwebview == null)
        {
            jsresult.cancel();
            return true;
        }
        if (AdMarvelInternalWebView.a(admarvelinternalwebview))
        {
            jsresult.cancel();
            return true;
        }
        if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
        {
            jsresult.cancel();
            return true;
        }
        if (b.get() != null && (b.get() instanceof Activity))
        {
            return super.onJsConfirm(webview, s, s1, jsresult);
        } else
        {
            jsresult.cancel();
            return true;
        }
    }

    public boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        if (admarvelinternalwebview == null)
        {
            jspromptresult.cancel();
            return true;
        }
        if (AdMarvelInternalWebView.a(admarvelinternalwebview))
        {
            jspromptresult.cancel();
            return true;
        }
        if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
        {
            jspromptresult.cancel();
            return true;
        }
        if (b.get() != null && (b.get() instanceof Activity))
        {
            return super.onJsPrompt(webview, s, s1, s2, jspromptresult);
        } else
        {
            jspromptresult.cancel();
            return true;
        }
    }

    public void onProgressChanged(WebView webview, int i)
    {
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        break MISSING_BLOCK_LABEL_11;
        if (admarvelinternalwebview != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
        {
            boolean flag = admarvelinternalwebview.getParent() instanceof RelativeLayout;
            w w1 = null;
            if (flag)
            {
                w1 = (w)((RelativeLayout)admarvelinternalwebview.getParent()).findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("CONTROLS").toString());
            }
            if (w1 != null && AdMarvelInternalWebView.e(admarvelinternalwebview).get())
            {
                ((ProgressBar)w1.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("PROGRESS_BAR").toString())).setProgress(i);
                return;
            }
        }
        return;
    }

    public (AdMarvelInternalWebView admarvelinternalwebview, Context context)
    {
        a = new WeakReference(admarvelinternalwebview);
        b = new WeakReference(context);
    }
}
