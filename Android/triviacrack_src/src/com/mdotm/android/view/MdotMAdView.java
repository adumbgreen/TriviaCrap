// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.mdotm.android.d.a;
import com.mdotm.android.d.b;
import com.mdotm.android.e.d;
import com.mdotm.android.vast.e;
import java.util.Timer;

// Referenced classes of package com.mdotm.android.view:
//            MdotMView

public class MdotMAdView extends MdotMView
{

    public MdotMAdView(Context context)
    {
        super(context);
    }

    public MdotMAdView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public MdotMAdView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void a()
    {
        if (b != null)
        {
            b.cancel();
        }
        c = true;
    }

    public void a(com.mdotm.android.c.d d1, a a1)
    {
        a();
        c = false;
        a1.b(false);
        super.b(d1, a1);
    }

    public volatile void a(b b1)
    {
        super.a(b1);
    }

    public volatile void a(e e1)
    {
        super.a(e1);
    }

    public volatile boolean a(Context context)
    {
        return super.a(context);
    }

    public volatile View b(b b1)
    {
        return super.b(b1);
    }

    public volatile void b(com.mdotm.android.c.d d1, a a1)
    {
        super.b(d1, a1);
    }

    public volatile void c()
    {
        super.c();
    }

    public volatile void d()
    {
        super.d();
    }

    public volatile void didShowInterstitial()
    {
        super.didShowInterstitial();
    }

    public volatile void e()
    {
        super.e();
    }

    public volatile void f()
    {
        super.f();
    }

    public volatile void onBannerAdClick()
    {
        super.onBannerAdClick();
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        com.mdotm.android.e.d.b(this, "Ondetached from window **");
        a();
    }

    public volatile void onDismissScreen()
    {
        super.onDismissScreen();
    }

    public volatile void onFailedToReceiveBannerAd()
    {
        super.onFailedToReceiveBannerAd();
    }

    public volatile void onFailedToReceiveInterstitialAd()
    {
        super.onFailedToReceiveInterstitialAd();
    }

    public volatile void onInterstitialAdClick()
    {
        super.onInterstitialAdClick();
    }

    public volatile void onInterstitialDismiss()
    {
        super.onInterstitialDismiss();
    }

    public volatile void onLeaveApplicationFromBanner()
    {
        super.onLeaveApplicationFromBanner();
    }

    public volatile void onLeaveApplicationFromInterstitial()
    {
        super.onLeaveApplicationFromInterstitial();
    }

    public volatile void onReceiveBannerAd()
    {
        super.onReceiveBannerAd();
    }

    public volatile void onReceiveInterstitialAd()
    {
        super.onReceiveInterstitialAd();
    }

    public volatile void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
    }

    public volatile void willShowInterstitial()
    {
        super.willShowInterstitial();
    }
}
