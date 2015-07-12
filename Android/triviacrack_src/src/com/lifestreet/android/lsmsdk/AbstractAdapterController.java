// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.os.Looper;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import java.lang.reflect.Method;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdapterController, AdapterListener, AdNetwork, AdType, 
//            InterstitialAdapterListener, BannerAdapterListener, InterstitialAdapterController, BannerAdapterController, 
//            BannerAdapter, InterstitialAdapter, Adapter, SlotController, 
//            SlotResponse, AdsParams, AdNetworkController

public abstract class AbstractAdapterController
    implements AdapterController, AdapterListener
{

    protected final AdNetwork mAdNetwork;
    protected final AdNetworkController mAdNetworkController;
    private Adapter mAdapter;
    private final Class mAdapterListenerClass;
    protected final SlotController mSlotController;

    public AbstractAdapterController(SlotController slotcontroller, AdNetwork adnetwork)
    {
        mAdNetwork = adnetwork;
        mAdNetworkController = adnetwork.getAdNetworkController();
        Object obj;
        if (AdType.INTERSTITIAL == adnetwork.getAdType())
        {
            obj = com/lifestreet/android/lsmsdk/InterstitialAdapterListener;
        } else
        {
            obj = com/lifestreet/android/lsmsdk/BannerAdapterListener;
        }
        mAdapterListenerClass = ((Class) (obj));
        mSlotController = slotcontroller;
    }

    public static AdapterController newInstance(SlotController slotcontroller, AdNetwork adnetwork)
    {
        if (AdType.INTERSTITIAL == adnetwork.getAdType())
        {
            return new InterstitialAdapterController(slotcontroller, adnetwork);
        } else
        {
            return new BannerAdapterController(slotcontroller, adnetwork);
        }
    }

    protected void checkCurrentThread()
    {
        if (Looper.getMainLooper().getThread() != Thread.currentThread())
        {
            throw new RuntimeException("An AdapterListener's callback was called by a different thread.");
        } else
        {
            return;
        }
    }

    protected BannerAdapter getBannerAdapter()
    {
        return (BannerAdapter)mAdapter;
    }

    protected InterstitialAdapter getInterstitialAdapter()
    {
        return (InterstitialAdapter)mAdapter;
    }

    public void onDestroy()
    {
        if (mAdapter != null)
        {
            mAdapter.onDestroy();
        }
    }

    protected void onFailedToReceive()
    {
        mSlotController.destroyNextAdapterController();
        SlotResponse slotresponse = mSlotController.getSlotResponse();
        if (slotresponse != null)
        {
            AdsParams adsparams = slotresponse.getAdsParams();
            if (adsparams != null)
            {
                mSlotController.setRequestId(adsparams.getRequestId());
            }
        }
        if (!mSlotController.isNextNetworkAvailable())
        {
            mSlotController.destroyCurrentAdapterController();
        }
        mSlotController.setLoadingState(SlotController.LoadingState.NOT_LOADED);
        mAdNetworkController.trackNoBid();
        mSlotController.startAutoRefreshTimer(false);
        mSlotController.enqueueNextNetwork();
    }

    public void onNotResponding()
    {
        if (mAdapter != null)
        {
            mAdapter.onNotResponding();
        }
    }

    public void onReceiveCustomMethod(String s, String s1)
    {
        checkCurrentThread();
        SlotListener slotlistener = mSlotController.getSlotListener();
        if (slotlistener == null)
        {
            throw new AdapterException("Slot listener can't be null");
        }
        try
        {
            Class class1 = slotlistener.getClass();
            Class aclass[] = new Class[2];
            aclass[0] = mAdapterListenerClass;
            aclass[1] = java/lang/String;
            class1.getMethod(s, aclass).invoke(slotlistener, new Object[] {
                this, s1
            });
            return;
        }
        catch (Exception exception)
        {
            throw new AdapterException((new StringBuilder()).append("Error invoking custom method: ").append(exception.getMessage()).toString());
        }
    }

    public void setAdapter(Adapter adapter)
    {
        mAdapter = adapter;
    }

    public void showAd()
    {
        mSlotController.setLoadingState(SlotController.LoadingState.SHOWN);
        mAdNetworkController.trackImpression();
        mSlotController.startAutoRefreshTimer(false);
    }
}
