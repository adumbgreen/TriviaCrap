// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Timer;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdapterMapping, AdNetwork, AbstractAdapterController, SlotController, 
//            Adapters, AdapterController, SlotContext

public final class AdNetworkQueue
{

    private static final Handler sHandler = new Handler(Looper.getMainLooper());
    private final List mAdNetworks;
    private final AdapterMapping mAdapterMapping;
    private int mCurrentNetworkIndex;
    private final SlotController mSlotController;

    public AdNetworkQueue(List list, SlotController slotcontroller, Context context)
    {
        mCurrentNetworkIndex = -1;
        mAdNetworks = list;
        mSlotController = slotcontroller;
        mAdapterMapping = AdapterMapping.getInstance(context);
    }

    private AdNetwork getCurrentNetwork()
    {
        int i = mCurrentNetworkIndex;
        AdNetwork adnetwork = null;
        if (i >= 0)
        {
            List list = mAdNetworks;
            adnetwork = null;
            if (list != null)
            {
                adnetwork = (AdNetwork)mAdNetworks.get(mCurrentNetworkIndex);
            }
        }
        return adnetwork;
    }

    private void loadNetwork(AdNetwork adnetwork)
    {
        LSMLogger.LOGGER.info(adnetwork.toString());
        AdapterController adaptercontroller = AbstractAdapterController.newInstance(mSlotController, adnetwork);
        mSlotController.setNextAdapterController(adaptercontroller);
        adaptercontroller.setAdapter(Adapters.createAdapterInstance(adnetwork, mAdapterMapping));
        adaptercontroller.requestAd();
    }

    private void loadNextNetwork()
    {
        AdNetwork adnetwork;
        boolean flag;
        SlotController slotcontroller;
        SlotController.LoadingState loadingstate;
        AdNetwork adnetwork1;
        if (isNextNetworkAvailable() && !mSlotController.shouldCancelAsyncHttpTask())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        slotcontroller = mSlotController;
        if (flag)
        {
            loadingstate = SlotController.LoadingState.LOADING;
        } else
        {
            loadingstate = SlotController.LoadingState.NOT_LOADED;
        }
        slotcontroller.setLoadingState(loadingstate);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        mCurrentNetworkIndex = 1 + mCurrentNetworkIndex;
        adnetwork1 = getCurrentNetwork();
        adnetwork = adnetwork1;
        if (adnetwork == null)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        mSlotController.setNextAdapterController(null);
        loadNetwork(adnetwork);
        mSlotController.getRefreshTimer().setDelay(adnetwork.getRefreshRate());
_L2:
        return;
        AdapterException adapterexception;
        adapterexception;
        adnetwork = null;
_L3:
        AdapterController adaptercontroller;
        adapterexception.setSlotContext(SlotContext.newInstance(mSlotController));
        if (adnetwork != null)
        {
            adapterexception.setErrorCode(adnetwork.getAdType());
        }
        LSMLogger.LOGGER.log(Level.SEVERE, adapterexception.getMessage(), adapterexception);
        adaptercontroller = mSlotController.getNextAdapterController();
        if (adaptercontroller == null) goto _L2; else goto _L1
_L1:
        adaptercontroller.onRequestAdFailed();
        mSlotController.setNextAdapterController(null);
        return;
        adapterexception;
          goto _L3
    }

    public void enqueueNextNetwork()
    {
        sHandler.post(new Runnable() {

            final AdNetworkQueue this$0;

            public void run()
            {
                loadNextNetwork();
            }

            
            {
                this$0 = AdNetworkQueue.this;
                super();
            }
        });
    }

    public boolean isNextNetworkAvailable()
    {
        List list = mAdNetworks;
        boolean flag = false;
        if (list != null)
        {
            int i = 1 + mCurrentNetworkIndex;
            flag = false;
            if (i >= 0)
            {
                int j = mAdNetworks.size();
                flag = false;
                if (i < j)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }


}
