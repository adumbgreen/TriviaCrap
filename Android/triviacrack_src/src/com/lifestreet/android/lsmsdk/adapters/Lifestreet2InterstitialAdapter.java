// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import com.lifestreet.android.lsmsdk.InterstitialAdapter;
import com.lifestreet.android.lsmsdk.InterstitialAdapterListener;
import com.lifestreet.android.lsmsdk.SlotContext;
import com.lifestreet.android.lsmsdk.SlotController;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTask;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTaskResponse;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            Lifestreet2AbstractAdapter, Lifestreet2Parameters, MRAIDInterstitialAdapter, LSMInterstitialAdapter

public final class Lifestreet2InterstitialAdapter extends Lifestreet2AbstractAdapter
    implements InterstitialAdapter
{

    InterstitialAdapter mAdapter;
    private InterstitialAdapterListener mListener;
    private Lifestreet2Parameters mParameters;
    private SlotContext mSlotContext;

    public Lifestreet2InterstitialAdapter()
    {
    }

    private boolean isAdReady()
    {
        return mParameters != null && mListener != null && mSlotContext != null;
    }

    public void getInterstitialAd(InterstitialAdapterListener interstitialadapterlistener, SlotContext slotcontext, Lifestreet2Parameters lifestreet2parameters)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("getInterstitialAd: ").append(lifestreet2parameters.slotTag).toString());
        if (slotTagIsNotValid(lifestreet2parameters.slotTag))
        {
            throw new AdapterException("Invalid slot tag");
        } else
        {
            mListener = interstitialadapterlistener;
            mSlotContext = slotcontext;
            mParameters = lifestreet2parameters;
            AsyncHttpTask.execute(this, null, lifestreet2parameters.slotTag, SlotController.USER_AGENT);
            return;
        }
    }

    public volatile void getInterstitialAd(InterstitialAdapterListener interstitialadapterlistener, SlotContext slotcontext, Object obj)
    {
        getInterstitialAd(interstitialadapterlistener, slotcontext, (Lifestreet2Parameters)obj);
    }

    public void onAsyncHttpTaskCompleted(AsyncHttpTaskResponse asynchttptaskresponse)
    {
        LSMLogger.LOGGER.info("onAsyncHttpTaskCompleted");
        if (isInvalidContentType(asynchttptaskresponse))
        {
            onAsyncHttpTaskFailed((new StringBuilder()).append("Content-Type of ").append(asynchttptaskresponse.getContentType()).append(" is not supported").toString(), null);
        } else
        if (isAdReady())
        {
            String s = asynchttptaskresponse.getResponseBody();
            Object obj;
            if (isMraid(s))
            {
                obj = new MRAIDInterstitialAdapter();
            } else
            {
                obj = new LSMInterstitialAdapter();
            }
            mAdapter = ((InterstitialAdapter) (obj));
            try
            {
                mAdapter.getInterstitialAd(mListener, mSlotContext, createLSMParameters(s, mParameters.slotTag, mParameters.showCloseButton));
                return;
            }
            catch (AdapterException adapterexception)
            {
                onAsyncHttpTaskFailed(adapterexception.getMessage(), adapterexception);
            }
            return;
        }
    }

    public void onAsyncHttpTaskFailed(String s, Throwable throwable)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("onAsyncHttpTaskFailed: ").append(s).toString());
        if (mListener != null)
        {
            mListener.onFailedToReceiveInterstitialAd(null);
        }
    }

    public void onDestroy()
    {
        mListener = null;
        mSlotContext = null;
        mParameters = null;
        if (mAdapter != null)
        {
            mAdapter.onDestroy();
            mAdapter = null;
        }
        super.onDestroy();
    }

    public void onNotResponding()
    {
        LSMLogger.LOGGER.info("onNotResponding");
        if (mAdapter != null)
        {
            mAdapter.onNotResponding();
        } else
        if (mListener != null)
        {
            mListener.onFailedToReceiveInterstitialAd(null);
            return;
        }
    }

    public void showInterstitial()
    {
        LSMLogger.LOGGER.info("showInterstitial");
        if (mAdapter != null)
        {
            mAdapter.showInterstitial();
        }
    }
}
