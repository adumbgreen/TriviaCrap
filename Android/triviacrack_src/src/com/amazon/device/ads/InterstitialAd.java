// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.amazon.device.ads:
//            Ad, AdListener, AdControllerFactory, AdController, 
//            InternalAdRegistration, IInternalAdRegistration, DefaultAdListener, MetricsCollector, 
//            AdSize, AdState, Log, AdSlot, 
//            AdLoader, AdActivity, InterstitialAdActivityAdapter, AdProperties, 
//            AdError, AdControlCallback, AdTargetingOptions

public class InterstitialAd
    implements Ad
{

    protected static final String ACTION_INTERSTITIAL_DISMISSED = "dismissed";
    protected static final String ACTION_INTERSTITIAL_FINISHED_LOADING = "finished";
    protected static final String BROADCAST_ACTION = "action";
    protected static final String BROADCAST_CREATIVE = "creative";
    protected static final String BROADCAST_INTENT = "amazon.mobile.ads.interstitial";
    protected static final String BROADCAST_UNIQUE_IDENTIFIER_KEY = "uniqueIdentifier";
    private static final String LOG_TAG = "InterstitialAd";
    protected static final String MSG_PREPARE_AD_DESTROYED = "This interstitial ad has been destroyed and can no longer be used. Create a new InterstitialAd object to load a new ad.";
    protected static final String MSG_PREPARE_AD_LOADING = "An interstitial ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad.";
    protected static final String MSG_PREPARE_AD_READY_TO_SHOW = "An interstitial ad is ready to show. Please call showAd() to show the ad before loading another ad.";
    protected static final String MSG_PREPARE_AD_SHOWING = "An interstitial ad is currently showing. Please wait for the user to dismiss the ad before loading an ad.";
    protected static final String MSG_SHOW_AD_ANOTHER_SHOWING = "Another interstitial ad is currently showing. Please wait for the InterstitialAdListener.onAdDismissed callback of the other ad.";
    protected static final String MSG_SHOW_AD_DESTROYED = "The interstitial ad cannot be shown because it has been destroyed. Create a new InterstitialAd object to load a new ad.";
    protected static final String MSG_SHOW_AD_DISMISSED = "The interstitial ad cannot be shown because it has already been displayed to the user. Please call loadAd(AdTargetingOptions) to load a new ad.";
    protected static final String MSG_SHOW_AD_EXPIRED = "This interstitial ad has expired. Please load another ad.";
    protected static final String MSG_SHOW_AD_LOADING = "The interstitial ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad.";
    protected static final String MSG_SHOW_AD_READY_TO_LOAD = "The interstitial ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first.";
    protected static final String MSG_SHOW_AD_SHOWING = "The interstitial ad cannot be shown because it is already displayed on the screen. Please wait for the InterstitialAdListener.onAdDismissed() callback and then load a new ad.";
    private static final AtomicBoolean isAdShowing = new AtomicBoolean(false);
    private final Activity activity;
    private AdController adController;
    private AdListener adListener;
    private boolean isInitialized;
    private boolean isThisAdShowing;
    private int timeout;

    public InterstitialAd(Activity activity1)
    {
        isThisAdShowing = false;
        adListener = null;
        timeout = 20000;
        isInitialized = false;
        if (activity1 == null)
        {
            throw new IllegalArgumentException("InterstitialAd requires a non-null Activity");
        } else
        {
            activity = activity1;
            return;
        }
    }

    private void callOnAdLoaded(AdProperties adproperties)
    {
        adListener.onAdLoaded(this, adproperties);
    }

    private void clearCachedAdController()
    {
        AdControllerFactory.removeCachedAdController();
    }

    private AdController getAdController()
    {
        initializeIfNecessary();
        if (adController == null)
        {
            initializeAdController();
        }
        return adController;
    }

    private MetricsCollector getMetricsCollector()
    {
        return getAdController().getMetricsCollector();
    }

    private void initializeAdController()
    {
        setAdController(createAdController(activity));
    }

    private void initializeIfNecessary()
    {
        if (isInitialized())
        {
            return;
        }
        isInitialized = true;
        InternalAdRegistration.getInstance().contextReceived(activity.getApplicationContext());
        if (adListener == null)
        {
            adListener = new DefaultAdListener("InterstitialAd");
        }
        initializeAdController();
        setAdditionalMetrics();
    }

    public static boolean isAdShowing()
    {
        return isAdShowing.get();
    }

    private boolean isInitialized()
    {
        return isInitialized;
    }

    static void resetIsAdShowing()
    {
        isAdShowing.set(false);
    }

    private void setAdController(AdController adcontroller)
    {
        adController = adcontroller;
        adcontroller.setCallback(constructAdControlCallback());
    }

    private void setAdditionalMetrics()
    {
        getMetricsCollector().setAdType(AdProperties.AdType.INTERSTITIAL);
        getMetricsCollector().incrementMetric(Metrics.MetricType.AD_IS_INTERSTITIAL);
    }

    void callOnAdDismissed()
    {
        adListener.onAdDismissed(this);
    }

    void callOnAdDismissedOnMainThread()
    {
        (new Handler(activity.getApplicationContext().getMainLooper())).post(new Runnable() {

            final InterstitialAd this$0;

            public void run()
            {
                callOnAdDismissed();
                submitAndResetMetrics();
            }

            
            {
                this$0 = InterstitialAd.this;
                super();
            }
        });
    }

    void callOnAdFailedOnMainThread(final AdError error)
    {
        (new Handler(activity.getApplicationContext().getMainLooper())).post(new Runnable() {

            final InterstitialAd this$0;
            final AdError val$error;

            public void run()
            {
                callOnAdFailedToLoad(error);
            }

            
            {
                this$0 = InterstitialAd.this;
                error = aderror;
                super();
            }
        });
    }

    void callOnAdFailedToLoad(AdError aderror)
    {
        adListener.onAdFailedToLoad(this, aderror);
    }

    void callOnAdLoadedOnMainThread(final AdProperties adProperties)
    {
        (new Handler(activity.getApplicationContext().getMainLooper())).post(new Runnable() {

            final InterstitialAd this$0;
            final AdProperties val$adProperties;

            public void run()
            {
                callOnAdLoaded(adProperties);
            }

            
            {
                this$0 = InterstitialAd.this;
                adProperties = adproperties;
                super();
            }
        });
    }

    AdControlCallback constructAdControlCallback()
    {
        return new InterstitialAdControlCallback();
    }

    AdController createAdController(Activity activity1)
    {
        return AdControllerFactory.buildAdController(activity1, AdSize.SIZE_INTERSTITIAL);
    }

    boolean didAdActivityFail()
    {
        boolean flag;
        if (isThisAdShowing && !isAdShowing.get())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            getMetricsCollector().incrementMetric(Metrics.MetricType.INTERSTITIAL_AD_ACTIVITY_FAILED);
            getAdController().closeAd();
        }
        return flag;
    }

    AdListener getAdListener()
    {
        return adListener;
    }

    public int getTimeout()
    {
        return timeout;
    }

    void handleDismissed()
    {
        getMetricsCollector().stopMetric(Metrics.MetricType.AD_SHOW_DURATION);
        AdControllerFactory.removeCachedAdController();
        isAdShowing.set(false);
        isThisAdShowing = false;
        callOnAdDismissedOnMainThread();
    }

    public boolean isLoading()
    {
        return getAdController().getAdState().equals(AdState.LOADING) || getAdController().getAdState().equals(AdState.LOADED) || getAdController().getAdState().equals(AdState.RENDERING);
    }

    boolean isReadyToLoad()
    {
        return getAdController().getAdState().equals(AdState.READY_TO_LOAD);
    }

    boolean isReadyToShow()
    {
        return getAdController().getAdState().equals(AdState.RENDERED);
    }

    public boolean isShowing()
    {
        return getAdController().getAdState().equals(AdState.SHOWING);
    }

    public boolean loadAd()
    {
        return loadAd(null);
    }

    public boolean loadAd(AdTargetingOptions adtargetingoptions)
    {
        didAdActivityFail();
        if (!isReadyToLoad())
        {
            class _cls4
            {

                static final int $SwitchMap$com$amazon$device$ads$AdState[];

                static 
                {
                    $SwitchMap$com$amazon$device$ads$AdState = new int[AdState.values().length];
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdState[AdState.RENDERED.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdState[AdState.SHOWING.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdState[AdState.INVALID.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdState[AdState.DESTROYED.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3)
                    {
                        return;
                    }
                }
            }

            switch (_cls4..SwitchMap.com.amazon.device.ads.AdState[getAdController().getAdState().ordinal()])
            {
            default:
                Log.d("InterstitialAd", "An interstitial ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad.");
                return false;

            case 1: // '\001'
                Log.d("InterstitialAd", "An interstitial ad is ready to show. Please call showAd() to show the ad before loading another ad.");
                return false;

            case 2: // '\002'
                Log.d("InterstitialAd", "An interstitial ad is currently showing. Please wait for the user to dismiss the ad before loading an ad.");
                return false;

            case 3: // '\003'
                Log.e("InterstitialAd", "An interstitial ad could not be loaded because of an unknown issue with the web views.");
                return false;

            case 4: // '\004'
                Log.e("InterstitialAd", "An interstitial ad could not be loaded because the view has been destroyed.");
                break;
            }
            return false;
        } else
        {
            int i = getTimeout();
            AdSlot aadslot[] = new AdSlot[1];
            aadslot[0] = new AdSlot(getAdController(), adtargetingoptions);
            AdLoader.loadAds(i, adtargetingoptions, aadslot);
            return getAdController().isPrepared();
        }
    }

    public void setListener(AdListener adlistener)
    {
        if (adlistener == null)
        {
            adListener = new DefaultAdListener("InterstitialAd");
            return;
        } else
        {
            adListener = adlistener;
            return;
        }
    }

    public void setTimeout(int i)
    {
        timeout = i;
    }

    public boolean showAd()
    {
        if (didAdActivityFail())
        {
            Log.e("InterstitialAd", "The ad could not be shown because it previously failed to show. Please load a new ad.");
            return false;
        }
        long l = System.nanoTime();
        if (isReadyToShow())
        {
            if (getAdController().isExpired())
            {
                Log.w("InterstitialAd", "This interstitial ad has expired. Please load another ad.");
                getAdController().resetToReady();
                return false;
            }
            if (isAdShowing.getAndSet(true))
            {
                Log.w("InterstitialAd", "Another interstitial ad is currently showing. Please wait for the InterstitialAdListener.onAdDismissed callback of the other ad.");
                return false;
            }
            isThisAdShowing = true;
            getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOADED_TO_AD_SHOW_TIME, l);
            getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_SHOW_DURATION, l);
            AdControllerFactory.cacheAdController(getAdController());
            getMetricsCollector().startMetric(Metrics.MetricType.AD_SHOW_LATENCY);
            boolean flag = showAdInActivity();
            if (!flag)
            {
                clearCachedAdController();
                getAdController().resetToReady();
                isAdShowing.set(false);
                isThisAdShowing = false;
                getMetricsCollector().stopMetric(Metrics.MetricType.AD_LATENCY_RENDER_FAILED);
            }
            return flag;
        }
        if (isReadyToLoad())
        {
            Log.w("InterstitialAd", "The interstitial ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first.");
            return false;
        }
        if (isLoading())
        {
            Log.w("InterstitialAd", "The interstitial ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad.");
            return false;
        }
        if (isShowing())
        {
            Log.w("InterstitialAd", "The interstitial ad cannot be shown because it is already displayed on the screen. Please wait for the InterstitialAdListener.onAdDismissed() callback and then load a new ad.");
            return false;
        } else
        {
            Log.w("InterstitialAd", "An interstitial ad is not ready to show.");
            return false;
        }
    }

    boolean showAdInActivity()
    {
        try
        {
            Intent intent = new Intent(activity.getApplicationContext(), com/amazon/device/ads/AdActivity);
            intent.putExtra("adapter", com/amazon/device/ads/InterstitialAdActivityAdapter.getName());
            activity.startActivity(intent);
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Log.e("InterstitialAd", "Failed to show the interstitial ad because AdActivity could not be found.");
            return false;
        }
        return true;
    }

    void submitAndResetMetrics()
    {
        if (getMetricsCollector() != null && !getMetricsCollector().isMetricsCollectorEmpty())
        {
            setAdditionalMetrics();
            getAdController().submitAndResetMetricsIfNecessary(true);
        }
    }






/*
    static AdController access$302(InterstitialAd interstitialad, AdController adcontroller)
    {
        interstitialad.adController = adcontroller;
        return adcontroller;
    }

*/


    private class InterstitialAdControlCallback
        implements AdControlCallback
    {

        private AdProperties adProperties;
        final InterstitialAd this$0;

        public int adClosing()
        {
            handleDismissed();
            return 1;
        }

        public boolean isAdReady(boolean flag)
        {
            return isReadyToLoad();
        }

        public void onAdEvent(AdEvent adevent)
        {
        }

        public void onAdFailed(AdError aderror)
        {
            if (AdError.ErrorCode.NETWORK_TIMEOUT.equals(aderror.getCode()))
            {
                adController = null;
            }
            callOnAdFailedOnMainThread(aderror);
        }

        public void onAdLoaded(AdProperties adproperties)
        {
            adProperties = adproperties;
            setAdditionalMetrics();
            getAdController().enableNativeCloseButton(true, RelativePosition.TOP_RIGHT);
            getAdController().render();
        }

        public void onAdRendered()
        {
            callOnAdLoadedOnMainThread(adProperties);
        }

        public void postAdRendered()
        {
            getMetricsCollector().startMetric(Metrics.MetricType.AD_LOADED_TO_AD_SHOW_TIME);
        }

        InterstitialAdControlCallback()
        {
            this$0 = InterstitialAd.this;
            super();
        }
    }

}
