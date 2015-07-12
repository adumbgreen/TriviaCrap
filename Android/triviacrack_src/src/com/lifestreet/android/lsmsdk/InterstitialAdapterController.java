// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AbstractAdapterController, InterstitialAdapterListener, SlotContext, InterstitialAdapter, 
//            AdNetworkController, SlotController, SlotListener, SlotView, 
//            AdNetwork

public final class InterstitialAdapterController extends AbstractAdapterController
    implements InterstitialAdapterListener
{

    public InterstitialAdapterController(SlotController slotcontroller, AdNetwork adnetwork)
    {
        super(slotcontroller, adnetwork);
    }

    private void requestInterstitialAd(InterstitialAdapter interstitialadapter)
    {
        interstitialadapter.getInterstitialAd(this, SlotContext.newInstance(mSlotController), mAdNetworkController.mapParameters(interstitialadapter.getParametersClass(), mSlotController));
    }

    public void onClickInterstitialAd(Object obj)
    {
        checkCurrentThread();
        mAdNetworkController.trackClick();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onClickInterstitialAd(getInterstitialAdapter(), obj);
        }
    }

    public void onDestroyCustomEventAdapter(String s)
    {
        checkCurrentThread();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onDestroyCustomEventInterstitialAdapter(getInterstitialAdapter(), s);
        }
    }

    public void onDismissInterstitialScreen(Object obj)
    {
        checkCurrentThread();
        mSlotController.startAutoRefreshTimer(false);
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onDismissInterstitialScreen(getInterstitialAdapter(), obj);
        }
    }

    public void onFailedToReceiveInterstitialAd(Object obj)
    {
        checkCurrentThread();
        boolean flag = mSlotController.isNextNetworkAvailable();
        onFailedToReceive();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null && !flag)
        {
            slotlistener.onFailedToReceiveInterstitialAd(getInterstitialAdapter(), obj);
        }
    }

    public void onLeaveApplicationInterstitial(Object obj)
    {
        checkCurrentThread();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onLeaveApplicationInterstitial(getInterstitialAdapter(), obj);
        }
    }

    public void onPresentInterstitialScreen(Object obj)
    {
        checkCurrentThread();
        mSlotController.pauseAutoRefreshTimer();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onPresentInterstitialScreen(getInterstitialAdapter(), obj);
        }
    }

    public void onReceiveInterstitialAd(Object obj)
    {
        checkCurrentThread();
        SlotView slotview = mSlotController.getSlotView();
        if (slotview != null)
        {
            slotview.cleanup();
        }
        mSlotController.setRequestId(null);
        mSlotController.setLoadingState(SlotController.LoadingState.LOADED);
        mSlotController.destroyCurrentAdapterController();
        mSlotController.setCurrentAdapterController(mSlotController.getNextAdapterController());
        mSlotController.setNextAdapterController(null);
        if (mSlotController.isShowAdsWhenReady())
        {
            showAd();
        }
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener != null)
        {
            slotlistener.onReceiveInterstitialAd(getInterstitialAdapter(), obj);
        }
    }

    public void onRequestAdFailed()
    {
        onFailedToReceiveInterstitialAd(null);
    }

    public void requestAd()
    {
        requestInterstitialAd(getInterstitialAdapter());
    }

    public void showAd()
    {
        InterstitialAdapter interstitialadapter = getInterstitialAdapter();
        if (interstitialadapter != null)
        {
            super.showAd();
            interstitialadapter.showInterstitial();
        }
    }
}
