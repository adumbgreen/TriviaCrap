// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            g, AdMarvelActivity, AdMarvelInternalWebView

class a
    implements g
{

    private final WeakReference a;

    public void a(String s)
    {
        AdMarvelActivity admarvelactivity = (AdMarvelActivity)a.get();
        RelativeLayout relativelayout;
        AdMarvelInternalWebView admarvelinternalwebview;
        if (admarvelactivity != null)
        {
            if ((relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)) != null && ((admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(s).append("WEBVIEW").toString())) != null && !admarvelinternalwebview.isSignalShutdown() && admarvelinternalwebview.mInAppBrowserCloseCallback != null && admarvelinternalwebview.mInAppBrowserCloseCallback.length() > 0))
            {
                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(admarvelinternalwebview.mInAppBrowserCloseCallback).append("()").toString());
                return;
            }
        }
    }

    public View(AdMarvelActivity admarvelactivity)
    {
        a = new WeakReference(admarvelactivity);
    }
}
