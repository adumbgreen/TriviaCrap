// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.res.Configuration;
import android.view.ViewGroup;
import android.view.Window;

// Referenced classes of package com.amazon.device.ads:
//            AdControllerFactory, Log, InterstitialAd, AdController, 
//            AdContainer, AndroidTargetUtils

class InterstitialAdActivityAdapter
    implements AdActivity.IAdActivityAdapter
{

    private static final String LOGTAG = com/amazon/device/ads/InterstitialAdActivityAdapter.getSimpleName();
    private Activity activity;
    private AdController adController;

    InterstitialAdActivityAdapter()
    {
        activity = null;
    }

    Activity getActivity()
    {
        return activity;
    }

    AdController getAdController()
    {
        return AdControllerFactory.getCachedAdController();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public void onCreate()
    {
        adController = getAdController();
        if (adController == null)
        {
            Log.e(LOGTAG, "Failed to show interstitial ad due to an error in the Activity.");
            InterstitialAd.resetIsAdShowing();
            activity.finish();
            return;
        }
        adController.setAdActivity(activity);
        adController.addSDKEventListener(new InterstitialAdSDKEventListener());
        ViewGroup viewgroup = (ViewGroup)adController.getView().getParent();
        if (viewgroup != null)
        {
            viewgroup.removeView(adController.getView());
        }
        activity.setContentView(adController.getView());
        adController.adShown();
    }

    public void onPause()
    {
    }

    public void onResume()
    {
    }

    public void onStop()
    {
        if (activity.isFinishing() && adController != null)
        {
            adController.closeAd();
        }
    }

    public void preOnCreate()
    {
        activity.requestWindowFeature(1);
        activity.getWindow().setFlags(1024, 1024);
        if (android.os.Build.VERSION.SDK_INT > 11)
        {
            AndroidTargetUtils.hideActionAndStatusBars(activity);
        }
    }

    public void setActivity(Activity activity1)
    {
        activity = activity1;
    }




/*
    static AdController access$102(InterstitialAdActivityAdapter interstitialadactivityadapter, AdController adcontroller)
    {
        interstitialadactivityadapter.adController = adcontroller;
        return adcontroller;
    }

*/

    private class InterstitialAdSDKEventListener
        implements SDKEventListener
    {

        final InterstitialAdActivityAdapter this$0;

        public void onSDKEvent(SDKEvent sdkevent, AdControlAccessor adcontrolaccessor)
        {
            if (sdkevent.getEventType().equals(SDKEvent.SDKEventType.CLOSED) && !activity.isFinishing())
            {
                adController = null;
                activity.finish();
            }
        }

        InterstitialAdSDKEventListener()
        {
            this$0 = InterstitialAdActivityAdapter.this;
            super();
        }
    }

}
