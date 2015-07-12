// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;

// Referenced classes of package com.millennialmedia.android:
//            AdViewOverlayView, OverlaySettings, MMLog, MMAdImpl, 
//            BannerExpandedWebViewClient, InterstitialWebViewClient, MMWebViewClient

class er extends er
{

    final AdViewOverlayView a;

    void a()
    {
        AdViewOverlayView.a(a);
    }

    boolean b()
    {
        return a.a.d() && !a.a.e();
    }

    MMWebViewClient c()
    {
        MMLog.b("AdViewOverlayView", (new StringBuilder()).append("Returning a client for user: OverlayWebViewClient, adimpl=").append(a.h).toString());
        if (a.h.n != 0L || a.a.d())
        {
            BannerExpandedWebViewClient bannerexpandedwebviewclient = new BannerExpandedWebViewClient(m, new Impl(this));
            l = bannerexpandedwebviewclient;
            return bannerexpandedwebviewclient;
        } else
        {
            InterstitialWebViewClient interstitialwebviewclient = new InterstitialWebViewClient(m, new Impl(this));
            l = interstitialwebviewclient;
            return interstitialwebviewclient;
        }
    }

    public Impl(AdViewOverlayView adviewoverlayview, Context context)
    {
        a = adviewoverlayview;
        super(adviewoverlayview, context);
        m = new er(this);
    }
}
