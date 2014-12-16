// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import android.content.Context;
import android.content.res.Resources;
import android.widget.FrameLayout;
import com.lifestreet.android.lsmsdk.BannerAdapter;
import com.lifestreet.android.lsmsdk.BannerAdapterListener;
import com.lifestreet.android.lsmsdk.SlotContext;
import com.lifestreet.android.lsmsdk.ads.AdListener;
import com.lifestreet.android.lsmsdk.ads.AdSize;
import com.lifestreet.android.lsmsdk.ads.AdView;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Utils;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            LSMParameters

public final class LSMAdapter
    implements BannerAdapter, AdListener
{

    private AdView mAdView;
    private FrameLayout mContainerView;
    private BannerAdapterListener mListener;

    public LSMAdapter()
    {
    }

    private AdView createAdView(Context context, SlotContext slotcontext, LSMParameters lsmparameters)
    {
        AdView adview;
        boolean flag;
        adview = new AdView(context);
        adview.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        adview.setListener(this);
        flag = slotcontext.isShowBannerCloseButton();
        if (lsmparameters.showCloseButton == null) goto _L2; else goto _L1
_L1:
        if (!"true".equalsIgnoreCase(lsmparameters.showCloseButton)) goto _L4; else goto _L3
_L3:
        flag = true;
_L2:
        adview.showCloseButton(flag);
        return adview;
_L4:
        if ("false".equalsIgnoreCase(lsmparameters.showCloseButton))
        {
            flag = false;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private FrameLayout createContainerView(Context context, SlotContext slotcontext, AdView adview)
    {
        int i = slotcontext.getWidthInDips();
        int j = slotcontext.getHeightInDips();
        AdSize adsize = AdSize.findAdSizeThatFits(i, j);
        LSMLogger.LOGGER.info((new StringBuilder()).append("Slot size is: ").append(i).append("x").append(j).toString());
        LSMLogger.LOGGER.info((new StringBuilder()).append("Calculated best size for slot: ").append(adsize.toString()).toString());
        android.util.DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(Utils.convertDipsToPixels(adsize.getWidth(), displaymetrics), Utils.convertDipsToPixels(adsize.getHeight(), displaymetrics));
        layoutparams.addRule(13);
        FrameLayout framelayout = new FrameLayout(context);
        framelayout.setLayoutParams(layoutparams);
        framelayout.addView(adview);
        return framelayout;
    }

    public void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, LSMParameters lsmparameters)
    {
        LSMLogger.LOGGER.info("getBannerAd");
        mListener = banneradapterlistener;
        Context context = slotcontext.getContext();
        if (context == null)
        {
            throw new AdapterException("Context can't be null");
        }
        if ("nobid".equalsIgnoreCase(lsmparameters.html))
        {
            if (mListener != null)
            {
                mListener.onFailedToReceiveAd(null);
            }
            return;
        }
        mAdView = createAdView(context, slotcontext, lsmparameters);
        mContainerView = createContainerView(context, slotcontext, mAdView);
        String s;
        if (lsmparameters.baseUrl == null)
        {
            s = slotcontext.getSlotUrl();
        } else
        {
            s = lsmparameters.baseUrl;
        }
        mAdView.loadHtmlWithBaseURL(s, lsmparameters.html);
    }

    public volatile void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, Object obj)
    {
        getBannerAd(banneradapterlistener, slotcontext, (LSMParameters)obj);
    }

    public Class getParametersClass()
    {
        return com/lifestreet/android/lsmsdk/adapters/LSMParameters;
    }

    public void onClick()
    {
        LSMLogger.LOGGER.info("onClick");
        if (mListener != null)
        {
            mListener.onClick(mContainerView);
        }
    }

    public void onClose()
    {
        LSMLogger.LOGGER.info("onClose");
        if (mListener != null)
        {
            mListener.onClose(mContainerView);
        }
    }

    public void onDestroy()
    {
        LSMLogger.LOGGER.info("onDestroy");
        mListener = null;
        if (mContainerView != null)
        {
            mContainerView.removeAllViews();
            mContainerView = null;
        }
        if (mAdView != null)
        {
            mAdView.destroy();
            mAdView = null;
        }
    }

    public void onDismissScreen(AdView adview)
    {
        LSMLogger.LOGGER.info("onDismissScreen");
        if (mListener != null)
        {
            mListener.onDismissScreen(mContainerView);
        }
    }

    public void onFailedToReceiveAd(AdView adview, String s)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("onFailedToReceiveAd: ").append(s).toString());
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd(mContainerView);
        }
    }

    public void onLeaveApplication(AdView adview)
    {
        LSMLogger.LOGGER.info("onLeaveApplication");
        if (mListener != null)
        {
            mListener.onLeaveApplication(mContainerView);
        }
    }

    public void onNotResponding()
    {
        LSMLogger.LOGGER.info("onNotResponding");
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd(mContainerView);
        }
    }

    public void onPresentScreen(AdView adview)
    {
        LSMLogger.LOGGER.info("onPresentScreen");
        if (mListener != null)
        {
            mListener.onPresentScreen(mContainerView);
        }
    }

    public void onReceiveAd(AdView adview)
    {
        LSMLogger.LOGGER.info("onReceiveAd");
        if (mListener != null)
        {
            mListener.onReceiveAd(mContainerView);
        }
    }
}
