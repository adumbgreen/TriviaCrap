// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import com.lifestreet.android.lsmsdk.BannerAdapter;
import com.lifestreet.android.lsmsdk.BannerAdapterListener;
import com.lifestreet.android.lsmsdk.SlotContext;
import com.lifestreet.android.lsmsdk.SlotController;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTask;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTaskResponse;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            Lifestreet2AbstractAdapter, Lifestreet2Parameters, MRAIDAdapter, LSMAdapter

public final class Lifestreet2Adapter extends Lifestreet2AbstractAdapter
    implements BannerAdapter
{

    BannerAdapter mAdapter;
    private BannerAdapterListener mListener;
    private Lifestreet2Parameters mParameters;
    private SlotContext mSlotContext;

    public Lifestreet2Adapter()
    {
    }

    private boolean isAdReady()
    {
        return mParameters != null && mListener != null && mSlotContext != null;
    }

    public void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, Lifestreet2Parameters lifestreet2parameters)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("getBannerAd: ").append(lifestreet2parameters.slotTag).toString());
        if (slotTagIsNotValid(lifestreet2parameters.slotTag))
        {
            throw new AdapterException("Invalid slot tag");
        } else
        {
            mListener = banneradapterlistener;
            mSlotContext = slotcontext;
            mParameters = lifestreet2parameters;
            AsyncHttpTask.execute(this, null, lifestreet2parameters.slotTag, SlotController.USER_AGENT);
            return;
        }
    }

    public volatile void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, Object obj)
    {
        getBannerAd(banneradapterlistener, slotcontext, (Lifestreet2Parameters)obj);
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
                obj = new MRAIDAdapter();
            } else
            {
                obj = new LSMAdapter();
            }
            mAdapter = ((BannerAdapter) (obj));
            try
            {
                mAdapter.getBannerAd(mListener, mSlotContext, createLSMParameters(s, mParameters.slotTag, mParameters.showCloseButton));
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
            mListener.onFailedToReceiveAd(null);
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
            mListener.onFailedToReceiveAd(null);
            return;
        }
    }
}
