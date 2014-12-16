// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import com.lifestreet.android.lsmsdk.BannerAdapter;
import com.lifestreet.android.lsmsdk.BannerAdapterListener;
import com.lifestreet.android.lsmsdk.InterstitialAdapter;
import com.lifestreet.android.lsmsdk.InterstitialAdapterListener;
import com.lifestreet.android.lsmsdk.SlotContext;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            CustomEventParameters

public final class CustomEventAdapter
    implements BannerAdapter, InterstitialAdapter
{

    private InterstitialAdapterListener mInterstitialListener;
    private BannerAdapterListener mListener;
    private String mMethodName;

    public CustomEventAdapter()
    {
    }

    public void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, CustomEventParameters customeventparameters)
    {
        LSMLogger.LOGGER.info("getBannerAd");
        mListener = banneradapterlistener;
        mMethodName = customeventparameters.function;
        LSMLogger.LOGGER.info((new StringBuilder()).append("Function: ").append(mMethodName).toString());
        banneradapterlistener.onReceiveCustomMethod(mMethodName, customeventparameters.data);
    }

    public volatile void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, Object obj)
    {
        getBannerAd(banneradapterlistener, slotcontext, (CustomEventParameters)obj);
    }

    public void getInterstitialAd(InterstitialAdapterListener interstitialadapterlistener, SlotContext slotcontext, CustomEventParameters customeventparameters)
    {
        LSMLogger.LOGGER.info("getInterstitialAd");
        mInterstitialListener = interstitialadapterlistener;
        mMethodName = customeventparameters.function;
        LSMLogger.LOGGER.info((new StringBuilder()).append("Function: ").append(mMethodName).toString());
        interstitialadapterlistener.onReceiveCustomMethod(mMethodName, customeventparameters.data);
    }

    public volatile void getInterstitialAd(InterstitialAdapterListener interstitialadapterlistener, SlotContext slotcontext, Object obj)
    {
        getInterstitialAd(interstitialadapterlistener, slotcontext, (CustomEventParameters)obj);
    }

    public Class getParametersClass()
    {
        return com/lifestreet/android/lsmsdk/adapters/CustomEventParameters;
    }

    public void onDestroy()
    {
        LSMLogger.LOGGER.info("onDestroy");
        if (mListener != null && mMethodName != null)
        {
            mListener.onDestroyCustomEventAdapter(mMethodName);
        }
        mListener = null;
        if (mInterstitialListener != null && mMethodName != null)
        {
            mInterstitialListener.onDestroyCustomEventAdapter(mMethodName);
        }
        mInterstitialListener = null;
        mMethodName = null;
    }

    public void onNotResponding()
    {
        LSMLogger.LOGGER.info("onNotResponding");
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd(null);
        }
        if (mInterstitialListener != null)
        {
            mInterstitialListener.onFailedToReceiveInterstitialAd(null);
        }
    }

    public void showInterstitial()
    {
    }
}
