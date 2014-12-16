// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.os.PowerManager;
import android.util.Log;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView, p

class <init>
    implements Runnable
{

    final AdMarvelActivity a;

    public void run()
    {
        PowerManager powermanager = (PowerManager)a.getSystemService("power");
        if (a.isFinishing() || powermanager == null)
        {
            break MISSING_BLOCK_LABEL_445;
        }
        RelativeLayout relativelayout;
        if (!powermanager.isScreenOn())
        {
            break MISSING_BLOCK_LABEL_445;
        }
        relativelayout = (RelativeLayout)a.findViewById(AdMarvelActivity.b);
        if (relativelayout == null)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("WEBVIEW").toString());
        if (admarvelinternalwebview == null)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        if (!admarvelinternalwebview.isSignalShutdown() && admarvelinternalwebview.visibilityCallback != null && admarvelinternalwebview.visibilityCallback.length() > 0 && admarvelinternalwebview.isLastStateVisible)
        {
            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(admarvelinternalwebview.visibilityCallback).append("(").append(false).append(")").toString());
            admarvelinternalwebview.isLastStateVisible = false;
        }
        if (!a.d)
        {
            break MISSING_BLOCK_LABEL_350;
        }
        if ((p)((RelativeLayout)a.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("BR_VIDEO").toString()) == null || !AdMarvelActivity.r(a))
        {
            break MISSING_BLOCK_LABEL_445;
        }
        if (a.e == null || a.e.length() <= 0 || relativelayout == null)
        {
            break MISSING_BLOCK_LABEL_342;
        }
        AdMarvelInternalWebView admarvelinternalwebview1 = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("WEBVIEW").toString());
        if (admarvelinternalwebview1 == null)
        {
            break MISSING_BLOCK_LABEL_342;
        }
        admarvelinternalwebview1.loadUrl((new StringBuilder()).append("javascript:").append(a.e).append("()").toString());
        a.g();
        return;
        try
        {
            if (a.c && AdMarvelActivity.r(a) && (p)((RelativeLayout)a.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("BR_VIDEO").toString()) != null)
            {
                a.g();
                return;
            }
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            AdMarvelActivity.q(a).sendEmptyMessage(0);
        }
    }

    private View(AdMarvelActivity admarvelactivity)
    {
        a = admarvelactivity;
        super();
    }

    a(AdMarvelActivity admarvelactivity, a a1)
    {
        this(admarvelactivity);
    }
}
