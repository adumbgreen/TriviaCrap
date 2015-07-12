// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mobfox;

import android.app.Activity;
import com.adsdk.sdk.Ad;
import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.banner.AdView;
import com.etermax.a.a;
import com.google.ads.mediation.customevent.CustomEventBannerListener;

public class MobFoxBannerContainer
    implements AdListener
{

    private AdView mAdView;
    private CustomEventBannerListener mListener;

    public MobFoxBannerContainer(Activity activity, String s, CustomEventBannerListener customeventbannerlistener)
    {
        a.c("admob ads", "MobFoxBannerContainer");
        mListener = customeventbannerlistener;
        mAdView = new AdView(activity, "http://my.mobfox.com/request.php", s, false, false);
        mAdView.setAdListener(this);
    }

    public void adClicked()
    {
        a.c("admob ads", "MobFoxBannerContainer - adClicked");
        mListener.onClick();
    }

    public void adClosed(Ad ad, boolean flag)
    {
        a.c("admob ads", "MobFoxBannerContainer - adClosed");
    }

    public void adLoadSucceeded(Ad ad)
    {
        a.c("admob ads", "MobFoxBannerContainer - adLoadSucceeded");
        mListener.onReceivedAd(mAdView);
    }

    public void adShown(Ad ad, boolean flag)
    {
        a.c("admob ads", "MobFoxBannerContainer - adShown");
    }

    public void destroy()
    {
        mAdView.release();
    }

    public void noAdFound()
    {
        a.c("admob ads", "MobFoxBannerContainer - noAdFound");
        mListener.onFailedToReceiveAd();
    }
}
