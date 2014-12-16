// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mobfox;

import android.app.Activity;
import com.adsdk.sdk.Ad;
import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.AdManager;
import com.etermax.a.a;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;

public class MobFoxInterstitialContainer
    implements AdListener
{

    private AdManager mAdManager;
    private CustomEventInterstitialListener mListener;

    public MobFoxInterstitialContainer(Activity activity, String s, CustomEventInterstitialListener customeventinterstitiallistener)
    {
        a.c("admob ads", "MobFoxInterstitialContainer");
        mListener = customeventinterstitiallistener;
        mAdManager = new AdManager(activity, "http://my.mobfox.com/vrequest.php", s, false);
        mAdManager.setListener(this);
        mAdManager.requestAd();
    }

    public void adClicked()
    {
        a.c("admob ads", "MobFoxInterstitialContainer - adClicked");
    }

    public void adClosed(Ad ad, boolean flag)
    {
        a.c("admob ads", "MobFoxInterstitialContainer - adClosed");
        mListener.onDismissScreen();
    }

    public void adLoadSucceeded(Ad ad)
    {
        a.c("admob ads", "MobFoxInterstitialContainer - adLoadSucceeded");
        mListener.onReceivedAd();
    }

    public void adShown(Ad ad, boolean flag)
    {
        a.c("admob ads", "MobFoxInterstitialContainer - adShown");
        mListener.onPresentScreen();
    }

    public void destroy()
    {
        if (mAdManager != null)
        {
            mAdManager.release();
            mAdManager = null;
        }
    }

    public boolean isAdLoaded()
    {
        if (mAdManager != null)
        {
            a.c("admob ads", (new StringBuilder()).append("MobFoxInterstitialContainer - isAdLoaded - ").append(mAdManager.isAdLoaded()).toString());
            return mAdManager.isAdLoaded();
        } else
        {
            a.c("admob ads", "MobFoxInterstitialContainer - isAdLoaded - false - mAdManager == null");
            return false;
        }
    }

    public void noAdFound()
    {
        a.c("admob ads", "MobFoxInterstitialContainer - noAdFound");
        mListener.onFailedToReceiveAd();
    }

    public void showInterstitial()
    {
        a.c("admob ads", "MobFoxInterstitialContainer - showInterstitial");
        if (mAdManager != null)
        {
            mAdManager.showAd();
        }
    }
}
