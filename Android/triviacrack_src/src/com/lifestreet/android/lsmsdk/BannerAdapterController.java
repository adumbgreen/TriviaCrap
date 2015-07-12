// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.view.View;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AbstractAdapterController, BannerAdapterListener, SlotContext, BannerAdapter, 
//            AdNetworkController, SlotController, SlotListener, SlotView, 
//            AdNetwork

public final class BannerAdapterController extends AbstractAdapterController
    implements BannerAdapterListener
{

    private View mBannerView;

    public BannerAdapterController(SlotController slotcontroller, AdNetwork adnetwork)
    {
        super(slotcontroller, adnetwork);
    }

    private void requestBannerAd(BannerAdapter banneradapter)
    {
        banneradapter.getBannerAd(this, SlotContext.newInstance(mSlotController), mAdNetworkController.mapParameters(banneradapter.getParametersClass(), mSlotController));
    }

    public void onClick(View view)
    {
        checkCurrentThread();
        mAdNetworkController.trackClick();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onClick(getBannerAdapter(), view);
        }
    }

    public void onClose(View view)
    {
        checkCurrentThread();
        mSlotController.destroyCurrentAdapterController();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onClose(getBannerAdapter(), view);
        }
    }

    public void onDestroy()
    {
        SlotView slotview = mSlotController.getSlotView();
        if (slotview != null && mBannerView != null)
        {
            slotview.removeView(mBannerView);
        }
        mBannerView = null;
        super.onDestroy();
    }

    public void onDestroyCustomEventAdapter(String s)
    {
        checkCurrentThread();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onDestroyCustomEventBannerAdapter(getBannerAdapter(), s);
        }
    }

    public void onDismissScreen(View view)
    {
        checkCurrentThread();
        mSlotController.startAutoRefreshTimer(false);
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onDismissScreen(getBannerAdapter(), view);
        }
    }

    public void onFailedToReceiveAd(View view)
    {
        checkCurrentThread();
        boolean flag = mSlotController.isNextNetworkAvailable();
        onFailedToReceive();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null && !flag)
        {
            slotlistener.onFailedToReceiveAd(getBannerAdapter(), view);
        }
    }

    public void onLeaveApplication(View view)
    {
        checkCurrentThread();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onLeaveApplication(getBannerAdapter(), view);
        }
    }

    public void onPresentScreen(View view)
    {
        checkCurrentThread();
        mSlotController.pauseAutoRefreshTimer();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onPresentScreen(getBannerAdapter(), view);
        }
    }

    public void onReceiveAd(View view)
    {
        checkCurrentThread();
        if (mSlotController.getSlotView() != null)
        {
            mSlotController.setRequestId(null);
            mSlotController.setLoadingState(SlotController.LoadingState.LOADED);
            mSlotController.destroyCurrentAdapterController();
            mSlotController.setCurrentAdapterController(mSlotController.getNextAdapterController());
            mSlotController.setNextAdapterController(null);
            mBannerView = view;
            if (mSlotController.isShowAdsWhenReady())
            {
                showAd();
            }
            SlotListener slotlistener = mSlotController.getSlotListener();
            if (slotlistener != null)
            {
                slotlistener.onReceiveAd(getBannerAdapter(), view);
            }
            return;
        } else
        {
            onFailedToReceiveAd(view);
            return;
        }
    }

    public void onRequestAdFailed()
    {
        onFailedToReceiveAd(null);
    }

    public void requestAd()
    {
        requestBannerAd(getBannerAdapter());
    }

    public void showAd()
    {
        SlotView slotview = mSlotController.getSlotView();
        if (slotview != null)
        {
            super.showAd();
            slotview.transitionToView(mBannerView, mAdNetwork.getTransitionAnimation());
        }
    }
}
