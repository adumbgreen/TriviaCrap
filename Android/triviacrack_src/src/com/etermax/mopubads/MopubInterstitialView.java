// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.etermax.a.a;
import com.etermax.adsinterface.b;
import com.etermax.adsinterface.c;
import com.etermax.adsinterface.d;
import com.etermax.adsinterface.f;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;

public class MopubInterstitialView extends View
    implements b, com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
{

    private MoPubInterstitial a;
    private c b;

    public MopubInterstitialView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a(Activity activity, c c1, String s)
    {
        if (a == null)
        {
            a = new MoPubInterstitial(activity, s);
        }
        b = c1;
        a.setInterstitialAdListener(this);
        a.load();
    }

    public void a(d d1)
    {
        f.a(d1);
        if (a != null && a.isReady())
        {
            a.show();
            return;
        } else
        {
            d1.a();
            return;
        }
    }

    public void b()
    {
        if (a != null)
        {
            a.destroy();
        }
    }

    public void onInterstitialClicked(MoPubInterstitial mopubinterstitial)
    {
        b.d();
    }

    public void onInterstitialDismissed(MoPubInterstitial mopubinterstitial)
    {
        b.c();
    }

    public void onInterstitialFailed(MoPubInterstitial mopubinterstitial, MoPubErrorCode mopuberrorcode)
    {
        com.etermax.a.a.c("MOPUB-INTERSTITIAL", "onInterstitialFailed");
        b.a();
    }

    public void onInterstitialLoaded(MoPubInterstitial mopubinterstitial)
    {
        com.etermax.a.a.c("MOPUB-INTERSTITIAL", "onInterstitialLoaded");
        b.b();
    }

    public void onInterstitialShown(MoPubInterstitial mopubinterstitial)
    {
    }
}
