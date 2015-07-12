// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.lifestreet;

import android.app.Activity;
import com.etermax.a.a;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.lifestreet.android.lsmsdk.IntegrationType;
import com.lifestreet.android.lsmsdk.InterstitialAdapter;
import com.lifestreet.android.lsmsdk.InterstitialSlot;

// Referenced classes of package com.etermax.admob.lifestreet:
//            BaseLifeStreetContainer

public class LifeStreetInterstitialContainer extends BaseLifeStreetContainer
{

    InterstitialSlot mInterstitialSlot;
    CustomEventInterstitialListener mListener;

    public LifeStreetInterstitialContainer(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, MediationAdRequest mediationadrequest)
    {
        mListener = customeventinterstitiallistener;
        mInterstitialSlot = new InterstitialSlot(activity);
        mInterstitialSlot.setSlotTag(s);
        mInterstitialSlot.setAutoRefreshEnabled(false);
        mInterstitialSlot.setListener(this);
        mInterstitialSlot.setIntegrationType(IntegrationType.ADMOB);
        mInterstitialSlot.setTargeting(newSlotTargetingInstance(mediationadrequest));
        mInterstitialSlot.fetchAd();
        a.c("admob ads", (new StringBuilder()).append("LifeStreetInterstitialContainer - fetching key: ").append(s).toString());
        mInterstitialSlot.resume();
    }

    public void destroy()
    {
        if (mInterstitialSlot != null)
        {
            mInterstitialSlot.pause();
            mInterstitialSlot.destroy();
            mInterstitialSlot = null;
        }
    }

    public void onClickInterstitialAd(InterstitialAdapter interstitialadapter, Object obj)
    {
        a.c("admob ads", "LifeStreetInterstitialContainer - onClickInterstitialAd");
    }

    public void onDestroyCustomEventInterstitialAdapter(InterstitialAdapter interstitialadapter, String s)
    {
        a.c("admob ads", "LifeStreetInterstitialContainer - onDestroyCustomEventInterstitialAdapter");
    }

    public void onDismissInterstitialScreen(InterstitialAdapter interstitialadapter, Object obj)
    {
        mListener.onDismissScreen();
        a.c("admob ads", "LifeStreetInterstitialContainer - onDismissInterstitialScreen");
    }

    public void onFailedToReceiveInterstitialAd(InterstitialAdapter interstitialadapter, Object obj)
    {
        mListener.onFailedToReceiveAd();
        a.c("admob ads", "LifeStreetInterstitialContainer - onFailedToReceiveInterstitialAd");
    }

    public void onLeaveApplicationInterstitial(InterstitialAdapter interstitialadapter, Object obj)
    {
        mListener.onLeaveApplication();
        a.c("admob ads", "LifeStreetInterstitialContainer - onLeaveApplicationInterstitial");
    }

    public void onPresentInterstitialScreen(InterstitialAdapter interstitialadapter, Object obj)
    {
        mListener.onPresentScreen();
        a.c("admob ads", "LifeStreetInterstitialContainer - onPresentScreen");
    }

    public void onReceiveInterstitialAd(InterstitialAdapter interstitialadapter, Object obj)
    {
        mListener.onReceivedAd();
        a.c("admob ads", "LifeStreetInterstitialContainer - onReceiveInterstitialAd");
    }

    public void showInterstitial()
    {
        mInterstitialSlot.showAd();
    }
}
