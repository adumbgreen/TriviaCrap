// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.lifestreet;

import android.app.Activity;
import android.view.View;
import com.etermax.a.a;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.lifestreet.android.lsmsdk.BannerAdapter;
import com.lifestreet.android.lsmsdk.IntegrationType;
import com.lifestreet.android.lsmsdk.InterstitialAdapter;
import com.lifestreet.android.lsmsdk.SlotView;

// Referenced classes of package com.etermax.admob.lifestreet:
//            BaseLifeStreetContainer

public class LifeStreetBannerContainer extends BaseLifeStreetContainer
{

    CustomEventBannerListener mListener;
    SlotView mSlotView;

    public LifeStreetBannerContainer(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, AdSize adsize, MediationAdRequest mediationadrequest)
    {
label0:
        {
            super();
            mListener = customeventbannerlistener;
            mSlotView = new SlotView(activity);
            mSlotView.setSlotTag(s);
            mSlotView.setAutoRefreshEnabled(false);
            mSlotView.setListener(this);
            mSlotView.setIntegrationType(IntegrationType.ADMOB);
            mSlotView.setTargeting(newSlotTargetingInstance(mediationadrequest));
            AdSize adsize1 = new AdSize(com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_1024x768.getWidth(), com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_1024x768.getHeight());
            AdSize adsize2 = new AdSize(com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_768x1024.getWidth(), com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_768x1024.getHeight());
            AdSize adsize3 = new AdSize(com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_728x90.getWidth(), com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_728x90.getHeight());
            AdSize adsize4 = new AdSize(com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_320x480.getWidth(), com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_320x480.getHeight());
            AdSize adsize5 = new AdSize(com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_300x250.getWidth(), com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_300x250.getHeight());
            AdSize adsize6 = new AdSize(com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_320x50.getWidth(), com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_320x50.getHeight());
            if (adsize != null)
            {
                AdSize adsize7 = adsize.findBestSize(new AdSize[] {
                    adsize1, adsize2, adsize3, adsize4, adsize5, adsize6
                });
                com.lifestreet.android.lsmsdk.ads.AdSize adsize8;
                if (adsize7 == adsize1)
                {
                    adsize8 = com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_1024x768;
                } else
                if (adsize7 == adsize2)
                {
                    adsize8 = com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_768x1024;
                } else
                if (adsize7 == adsize3)
                {
                    adsize8 = com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_728x90;
                } else
                if (adsize7 == adsize4)
                {
                    adsize8 = com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_320x480;
                } else
                if (adsize7 == adsize5)
                {
                    adsize8 = com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_300x250;
                } else
                if (adsize7 == adsize6)
                {
                    adsize8 = com.lifestreet.android.lsmsdk.ads.AdSize.SIZE_320x50;
                } else
                {
                    adsize8 = null;
                }
                if (adsize8 == null)
                {
                    break label0;
                }
                mSlotView.setSlotSize(adsize8);
            }
            mSlotView.loadAd();
            mSlotView.resume();
            return;
        }
        mListener.onFailedToReceiveAd();
    }

    public void destroy()
    {
        if (mSlotView != null)
        {
            mSlotView.pause();
            mSlotView.destroy();
            mSlotView = null;
        }
        mListener = null;
    }

    public void onClick(BannerAdapter banneradapter, View view)
    {
        if (mListener != null)
        {
            mListener.onClick();
        }
        a.c("admob ads", "LifeStreetBannerContainer - onClick");
    }

    public void onDismissScreen(BannerAdapter banneradapter, View view)
    {
        if (mListener != null)
        {
            mListener.onDismissScreen();
        }
        a.c("admob ads", "LifeStreetBannerContainer - onDismissScreen");
    }

    public void onFailedToLoadSlotView(SlotView slotview)
    {
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd();
        }
        a.c("admob ads", "LifeStreetBannerContainer - onFailedToLoadSlotView");
    }

    public void onFailedToReceiveAd(BannerAdapter banneradapter, View view)
    {
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd();
        }
        a.c("admob ads", "LifeStreetBannerContainer - onFailedToReceiveAd");
    }

    public void onFailedToReceiveInterstitialAd(InterstitialAdapter interstitialadapter, Object obj)
    {
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd();
        }
        a.c("admob ads", "LifeStreetBannerContainer - onFailedToReceiveInterstitialAd");
    }

    public void onLeaveApplication(BannerAdapter banneradapter, View view)
    {
        if (mListener != null)
        {
            mListener.onLeaveApplication();
        }
        a.c("admob ads", "LifeStreetBannerContainer - onLeaveApplication");
    }

    public void onPresentScreen(BannerAdapter banneradapter, View view)
    {
        if (mListener != null)
        {
            mListener.onPresentScreen();
        }
        a.c("admob ads", "LifeStreetBannerContainer - onPresentScreen");
    }

    public void onReceiveAd(BannerAdapter banneradapter, View view)
    {
        if (mListener != null)
        {
            mListener.onReceivedAd(mSlotView);
        }
        a.c("admob ads", "LifeStreetBannerContainer - onReceiveAd");
    }
}
