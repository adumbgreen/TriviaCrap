// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import com.lifestreet.android.lsmsdk.BannerAdapter;
import com.lifestreet.android.lsmsdk.BannerAdapterListener;
import com.lifestreet.android.lsmsdk.SlotContext;
import com.lifestreet.android.lsmsdk.ads.AdSize;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Utils;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import com.lifestreet.android.lsmsdk.mraid.MRAIDView;
import com.lifestreet.android.lsmsdk.mraid.MRAIDViewListener;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            LSMParameters

public final class MRAIDAdapter
    implements BannerAdapter, MRAIDViewListener
{

    private MRAIDView mAdView;
    private BannerAdapterListener mListener;

    public MRAIDAdapter()
    {
    }

    public void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, LSMParameters lsmparameters)
    {
        LSMLogger.LOGGER.info("getBannerAd");
        mListener = banneradapterlistener;
        Context context = slotcontext.getContext();
        if (!(context instanceof Activity))
        {
            throw new AdapterException("Context should be an instance of activity");
        }
        AdSize adsize = AdSize.findAdSizeThatFits(slotcontext.getWidthInDips(), slotcontext.getHeightInDips());
        android.util.DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        int i = Utils.convertDipsToPixels(adsize.getWidth(), displaymetrics);
        int j = Utils.convertDipsToPixels(adsize.getHeight(), displaymetrics);
        String s;
        if (lsmparameters.baseUrl == null)
        {
            s = slotcontext.getSlotUrl();
        } else
        {
            s = lsmparameters.baseUrl;
        }
        mAdView = new MRAIDView((Activity)context, i, j, com.lifestreet.android.lsmsdk.mraid.MRAIDController.MRAIDPlacementType.INLINE);
        mAdView.setListener(this);
        mAdView.loadHTML(s, lsmparameters.html);
    }

    public volatile void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, Object obj)
    {
        getBannerAd(banneradapterlistener, slotcontext, (LSMParameters)obj);
    }

    public Class getParametersClass()
    {
        return com/lifestreet/android/lsmsdk/adapters/LSMParameters;
    }

    public void onClick(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onClick");
        if (mListener != null)
        {
            mListener.onClick(mraidview);
        }
    }

    public void onClose(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onClose");
        if (mListener != null)
        {
            mListener.onDismissScreen(mraidview);
        }
    }

    public void onDestroy()
    {
        LSMLogger.LOGGER.info("onDestroy");
        mListener = null;
        if (mAdView != null)
        {
            mAdView.destroy();
            mAdView = null;
        }
    }

    public void onExpand(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onExpand");
        if (mListener != null)
        {
            mListener.onPresentScreen(mraidview);
        }
    }

    public void onFailedToReceiveAd(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onFailedToReceiveAd");
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd(mraidview);
        }
    }

    public void onLeaveApplication(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onLeaveApplication");
        if (mListener != null)
        {
            mListener.onLeaveApplication(mraidview);
        }
    }

    public void onNotResponding()
    {
        LSMLogger.LOGGER.info("onNotResponding");
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd(mAdView);
        }
    }

    public void onReceiveAd(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onReceiveAd");
        if (mListener != null)
        {
            mListener.onReceiveAd(mraidview);
        }
    }
}
