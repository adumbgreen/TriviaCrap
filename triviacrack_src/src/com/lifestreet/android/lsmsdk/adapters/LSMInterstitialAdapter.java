// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.lifestreet.android.lsmsdk.InterstitialAdapter;
import com.lifestreet.android.lsmsdk.InterstitialAdapterListener;
import com.lifestreet.android.lsmsdk.SlotContext;
import com.lifestreet.android.lsmsdk.ads.AbstractAdActivity;
import com.lifestreet.android.lsmsdk.ads.InterstitialAdActivity;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            AbstractInterstitialAdapter, LSMParameters

public final class LSMInterstitialAdapter extends AbstractInterstitialAdapter
    implements InterstitialAdapter
{

    private InterstitialAdapterListener mListener;
    private LSMParameters mParameters;
    private BroadcastReceiver mReceiver;
    private SlotContext mSlotContext;

    public LSMInterstitialAdapter()
    {
    }

    public void getInterstitialAd(InterstitialAdapterListener interstitialadapterlistener, SlotContext slotcontext, LSMParameters lsmparameters)
    {
        LSMLogger.LOGGER.info("getInterstitialAd");
        mListener = interstitialadapterlistener;
        mSlotContext = slotcontext;
        mParameters = lsmparameters;
        if ("nobid".equalsIgnoreCase(lsmparameters.html))
        {
            if (mListener != null)
            {
                mListener.onFailedToReceiveInterstitialAd(null);
            }
            return;
        } else
        {
            invokeActionDelayed("com.lifestreet.action.RECEIVE_AD", mListener);
            return;
        }
    }

    public volatile void getInterstitialAd(InterstitialAdapterListener interstitialadapterlistener, SlotContext slotcontext, Object obj)
    {
        getInterstitialAd(interstitialadapterlistener, slotcontext, (LSMParameters)obj);
    }

    public Class getParametersClass()
    {
        return com/lifestreet/android/lsmsdk/adapters/LSMParameters;
    }

    protected void invokeAction(String s, InterstitialAdapterListener interstitialadapterlistener)
    {
        if ("com.lifestreet.action.DISMISS_SCREEN".equals(s) && mSlotContext != null)
        {
            Context context = mSlotContext.getContext();
            if (context != null && mReceiver != null)
            {
                context.unregisterReceiver(mReceiver);
                mReceiver = null;
            }
        }
        super.invokeAction(s, interstitialadapterlistener);
    }

    public void onDestroy()
    {
        LSMLogger.LOGGER.info("onDestroy");
        if (mListener != null && mSlotContext != null)
        {
            Context context = mSlotContext.getContext();
            if (context != null && mReceiver != null)
            {
                context.unregisterReceiver(mReceiver);
                mReceiver = null;
            }
            mListener = null;
            mSlotContext = null;
            mParameters = null;
        }
    }

    public void onNotResponding()
    {
        LSMLogger.LOGGER.info("onNotResponding");
        if (mListener != null)
        {
            mListener.onFailedToReceiveInterstitialAd(null);
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent != null)
        {
            String s = intent.getAction();
            if (intent.getCategories().contains("com.lifestreet.category.ADS") && AbstractAdActivity.BROADCAST_ACTIONS.containsKey(s))
            {
                invokeActionDelayed(s, mListener);
            }
        }
    }

    public void showInterstitial()
    {
        if (mSlotContext != null)
        {
            Context context = mSlotContext.getContext();
            if (context != null)
            {
                if (mReceiver != null)
                {
                    context.unregisterReceiver(mReceiver);
                }
                mReceiver = this;
                registerBroadcastReceiver(context, mReceiver, "com.lifestreet.category.ADS");
                boolean flag = mSlotContext.isShowInterstitialCloseButton();
                String s;
                if (mParameters.showCloseButton != null)
                {
                    if ("true".equalsIgnoreCase(mParameters.showCloseButton))
                    {
                        flag = true;
                    } else
                    if ("false".equalsIgnoreCase(mParameters.showCloseButton))
                    {
                        flag = false;
                    }
                }
                if (mParameters.baseUrl == null)
                {
                    s = mSlotContext.getSlotUrl();
                } else
                {
                    s = mParameters.baseUrl;
                }
                InterstitialAdActivity.show(context, s, mParameters.html, flag);
            }
        }
    }
}
