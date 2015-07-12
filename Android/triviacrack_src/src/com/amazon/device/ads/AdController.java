// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.amazon.device.ads:
//            AdState, MetricsCollector, AdData, AdContainer, 
//            AdControlCallback, AdError, Log, SDKEvent, 
//            WebRequest, ThreadUtils, AdUtils, AdEvent, 
//            SDKEventListener, AdControlAccessor, Size, AdSize, 
//            InternalAdRegistration, IInternalAdRegistration, DeviceInfo, AAXCreative, 
//            BridgeSelector, AdSDKBridgeFactory, RegistrationInfo, WebViewFactory, 
//            PermissionChecker, Metrics, AdProperties, RelativePosition, 
//            PreloadCallback

class AdController
{

    private static final String LOGTAG = "AdController";
    protected static final String MSG_PREPARE_AD_LOADING = "An ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad.";
    protected static final String MSG_PREPARE_AD_READY_TO_SHOW = "An ad is ready to show. Please call showAd() to show the ad before loading another ad.";
    protected static final String MSG_PREPARE_AD_SHOWING = "An ad is currently showing. Please wait for the user to dismiss the ad before loading an ad.";
    protected static final String MSG_SHOW_AD_ANOTHER_SHOWING = "Another ad is currently showing. Please wait for the AdListener.onAdDismissed callback of the other ad.";
    protected static final String MSG_SHOW_AD_DESTROYED = "The ad cannot be shown because it has been destroyed. Create a new Ad object to load a new ad.";
    protected static final String MSG_SHOW_AD_DISMISSED = "The ad cannot be shown because it has already been displayed to the user. Please call loadAd(AdTargetingOptions) to load a new ad.";
    protected static final String MSG_SHOW_AD_EXPIRED = "This ad has expired. Please load another ad.";
    protected static final String MSG_SHOW_AD_LOADING = "The ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad.";
    protected static final String MSG_SHOW_AD_READY_TO_LOAD = "The ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first.";
    protected static final String MSG_SHOW_AD_SHOWING = "The ad cannot be shown because it is already displayed on the screen. Please wait for the AdListener.onAdDismissed() callback and then load a new ad.";
    private Activity adActivity;
    private AdContainer adContainer;
    private AdControlAccessor adControlAccessor;
    private AdControlCallback adControlCallback;
    private AdData adData;
    private final AdSize adSize;
    private AdState adState;
    private int adWindowHeight;
    private int adWindowWidth;
    private String connectionType;
    private final Context context;
    private ViewGroup defaultParent;
    private final AtomicBoolean hasFinishedLoading = new AtomicBoolean(false);
    private final AtomicBoolean isClosing = new AtomicBoolean(false);
    private boolean isPrepared;
    private final AtomicBoolean isRendering = new AtomicBoolean(false);
    private MetricsCollector metricsCollector;
    private int originalOrientation;
    private double scalingMultiplier;
    private final ArrayList sdkEventListeners = new ArrayList();
    private int timeout;
    private Timer timer;
    private boolean windowDimensionsSet;

    AdController(Context context1, AdSize adsize)
    {
        timeout = 20000;
        adWindowHeight = 0;
        adWindowWidth = 0;
        windowDimensionsSet = false;
        adState = AdState.READY_TO_LOAD;
        scalingMultiplier = 1.0D;
        isPrepared = false;
        defaultParent = null;
        context = context1;
        adSize = adsize;
    }

    private void adFailedAfterTimerCheck(AdError aderror)
    {
        if (getMetricsCollector() == null || getMetricsCollector().isMetricsCollectorEmpty())
        {
            adFailedBeforeAdMetricsStart(aderror);
            return;
        } else
        {
            adFailedAfterAdMetricsStart(aderror);
            return;
        }
    }

    private void adLoaded()
    {
        if (!canBeUsed())
        {
            return;
        } else
        {
            setAdState(AdState.LOADED);
            callOnAdLoaded(adData.getProperties());
            return;
        }
    }

    private int calculateAppChromeHeight(boolean flag, boolean flag1)
    {
        Context context1 = getView().getContext();
        int i;
        int j;
        if (context1 instanceof Activity)
        {
            Window window = ((Activity)context1).getWindow();
            Rect rect = new Rect();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            j = rect.top;
            i = getContentViewTop(window) - j;
        } else
        {
            i = 0;
            j = 0;
        }
        if (!flag)
        {
            j = 0;
        }
        if (!flag1)
        {
            i = 0;
        }
        return i + j;
    }

    private boolean isReadyToLoad(boolean flag)
    {
        return getAdControlCallback().isAdReady(flag);
    }

    private void reset()
    {
        if (!canBeUsed())
        {
            return;
        }
        isPrepared = false;
        resetMetricsCollector();
        if (adContainer != null)
        {
            adContainer.destroy();
        }
        adContainer = createAdContainer();
        adData = null;
    }

    void accumulateAdFailureMetrics(AdError aderror)
    {
        long l = System.nanoTime();
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL, l);
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE, l);
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_FAILURE, l);
        if (aderror != null && (AdError.ErrorCode.NO_FILL.equals(aderror.getCode()) || AdError.ErrorCode.NETWORK_ERROR.equals(aderror.getCode()) || AdError.ErrorCode.NETWORK_TIMEOUT.equals(aderror.getCode()) || AdError.ErrorCode.INTERNAL_ERROR.equals(aderror.getCode())))
        {
            getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED);
            if (aderror.getCode() == AdError.ErrorCode.NETWORK_TIMEOUT)
            {
                if (isRendering.get())
                {
                    getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT);
                } else
                {
                    getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT);
                }
            }
        }
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_RENDER_FAILED, l);
        if (getAdState().equals(AdState.RENDERING))
        {
            getMetricsCollector().incrementMetric(Metrics.MetricType.AD_COUNTER_RENDERING_FATAL);
        }
        setAdditionalMetrics();
    }

    void adFailed(AdError aderror)
    {
        while (!canBeUsed() || getAndSetHasFinishedLoading(true)) 
        {
            return;
        }
        cancelTimer();
        adFailedAfterTimerCheck(aderror);
        setAdState(AdState.READY_TO_LOAD);
    }

    void adFailedAfterAdMetricsStart(AdError aderror)
    {
        accumulateAdFailureMetrics(aderror);
        callOnAdFailedToLoad(aderror, true);
    }

    void adFailedBeforeAdMetricsStart(AdError aderror)
    {
        callOnAdFailedToLoad(aderror, false);
    }

    public void adRendered(String s)
    {
        if (!canBeUsed())
        {
            return;
        }
        Log.d("AdController", "Ad Rendered");
        if (getAdState().equals(AdState.RENDERING) && !getAndSetHasFinishedLoading(true))
        {
            isRendering.set(false);
            cancelTimer();
            setAdState(AdState.RENDERED);
            callOnAdRendered();
            long l = System.nanoTime();
            if (getMetricsCollector() != null)
            {
                getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_RENDER, l);
                getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL, l);
                getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_SUCCESS, l);
                setAdditionalMetrics();
                submitAndResetMetricsIfNecessary(true);
            }
            callPostAdRendered();
        }
        fireSDKEvent((new SDKEvent(SDKEvent.SDKEventType.RENDERED)).setParameter("url", s));
    }

    public void adShown()
    {
        if (!canBeUsed())
        {
            return;
        }
        setAdState(AdState.SHOWING);
        getMetricsCollector().stopMetric(Metrics.MetricType.AD_SHOW_LATENCY);
        WebRequest.executeWebRequestInThread(getAdData().getImpressionPixelUrl(), false);
        if (!areWindowDimensionsSet())
        {
            setWindowDimensions(getView().getWidth(), getView().getHeight());
        }
        fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.VISIBLE));
    }

    void addJavascriptInterface(Object obj, boolean flag, String s)
    {
        getAdContainer().addJavascriptInterface(obj, flag, s);
    }

    public void addSDKEventListener(SDKEventListener sdkeventlistener)
    {
        Log.d("AdController", (new StringBuilder()).append("Add SDKEventListener ").append(sdkeventlistener).toString());
        sdkEventListeners.add(sdkeventlistener);
    }

    public boolean areWindowDimensionsSet()
    {
        return windowDimensionsSet;
    }

    void callOnAdEvent(final AdEvent adEvent)
    {
        ThreadUtils.scheduleOnMainThread(new Runnable() {

            final AdController this$0;
            final AdEvent val$adEvent;

            public void run()
            {
                if (!canBeUsed())
                {
                    return;
                } else
                {
                    getAdControlCallback().onAdEvent(adEvent);
                    return;
                }
            }

            
            {
                this$0 = AdController.this;
                adEvent = adevent;
                super();
            }
        });
    }

    void callOnAdFailedToLoad(final AdError error, final boolean shouldSubmitMetrics)
    {
        ThreadUtils.scheduleOnMainThread(new Runnable() {

            final AdController this$0;
            final AdError val$error;
            final boolean val$shouldSubmitMetrics;

            public void run()
            {
                getAdControlCallback().onAdFailed(error);
                submitAndResetMetricsIfNecessary(shouldSubmitMetrics);
            }

            
            {
                this$0 = AdController.this;
                error = aderror;
                shouldSubmitMetrics = flag;
                super();
            }
        });
    }

    void callOnAdLoaded(final AdProperties adProperties)
    {
        ThreadUtils.scheduleOnMainThread(new Runnable() {

            final AdController this$0;
            final AdProperties val$adProperties;

            public void run()
            {
                if (!canBeUsed())
                {
                    return;
                } else
                {
                    getAdControlCallback().onAdLoaded(adProperties);
                    return;
                }
            }

            
            {
                this$0 = AdController.this;
                adProperties = adproperties;
                super();
            }
        });
    }

    void callOnAdRendered()
    {
        ThreadUtils.scheduleOnMainThread(new Runnable() {

            final AdController this$0;

            public void run()
            {
                if (!canBeUsed())
                {
                    return;
                } else
                {
                    getAdControlCallback().onAdRendered();
                    return;
                }
            }

            
            {
                this$0 = AdController.this;
                super();
            }
        });
    }

    void callPostAdRendered()
    {
        ThreadUtils.scheduleOnMainThread(new Runnable() {

            final AdController this$0;

            public void run()
            {
                if (!canBeUsed())
                {
                    return;
                } else
                {
                    getAdControlCallback().postAdRendered();
                    return;
                }
            }

            
            {
                this$0 = AdController.this;
                super();
            }
        });
    }

    public boolean canBeUsed()
    {
        return !AdState.DESTROYED.equals(getAdState()) && !AdState.INVALID.equals(getAdState());
    }

    void cancelTimer()
    {
        if (timer != null)
        {
            timer.cancel();
        }
    }

    boolean checkDefinedActivities()
    {
        return AdUtils.checkDefinedActivities(getContext().getApplicationContext());
    }

    public void clearSDKEventListeners()
    {
        sdkEventListeners.clear();
    }

    public boolean closeAd()
    {
        boolean flag;
        boolean flag1;
        Log.d("AdController", "Ad is attempting to close.");
        flag = getAdState().equals(AdState.READY_TO_LOAD);
        flag1 = false;
        if (flag) goto _L2; else goto _L1
_L1:
        boolean flag2;
        flag2 = isClosing.getAndSet(true);
        flag1 = false;
        if (flag2) goto _L2; else goto _L3
_L3:
        getAdControlCallback().adClosing();
        JVM INSTR tableswitch 0 1: default 72
    //                   0 131
    //                   1 100;
           goto _L4 _L5 _L6
_L4:
        boolean flag5;
        boolean flag6;
        flag6 = false;
        flag5 = false;
_L7:
        if (flag6)
        {
            resetToReady();
        }
        isClosing.set(false);
        flag1 = flag5;
_L2:
        return flag1;
_L6:
        boolean flag3 = true;
_L8:
        fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.CLOSED));
        boolean flag4 = flag3;
        flag5 = true;
        flag6 = flag4;
          goto _L7
_L5:
        flag3 = false;
          goto _L8
    }

    AdContainer createAdContainer()
    {
        return new AdContainer(context, this);
    }

    public void destroy()
    {
        if (!canBeUsed())
        {
            Log.e("AdController", "The ad cannot be destroyed because it has already been destroyed.");
            return;
        } else
        {
            closeAd();
            adState = AdState.DESTROYED;
            getAdContainer().destroy();
            isPrepared = false;
            metricsCollector = null;
            adContainer = null;
            adData = null;
            return;
        }
    }

    public void enableNativeCloseButton(boolean flag, RelativePosition relativeposition)
    {
        getAdContainer().enableNativeCloseButton(flag, relativeposition);
    }

    public void fireAdEvent(AdEvent adevent)
    {
        Log.d("AdController", (new StringBuilder()).append("Firing AdEvent of type ").append(adevent.getAdEventType().toString()).toString());
        callOnAdEvent(adevent);
    }

    public void fireSDKEvent(SDKEvent sdkevent)
    {
        Object aobj[] = new Object[1];
        aobj[0] = sdkevent.getEventType().toString();
        Log.d("AdController", "Firing SDK Event of type %s", aobj);
        for (Iterator iterator = sdkEventListeners.iterator(); iterator.hasNext(); ((SDKEventListener)iterator.next()).onSDKEvent(sdkevent, getAdControlAccessor())) { }
    }

    AdContainer getAdContainer()
    {
        if (adContainer == null)
        {
            adContainer = createAdContainer();
        }
        return adContainer;
    }

    public AdControlAccessor getAdControlAccessor()
    {
        if (adControlAccessor == null)
        {
            adControlAccessor = new AdControlAccessor(this);
        }
        return adControlAccessor;
    }

    AdControlCallback getAdControlCallback()
    {
        if (adControlCallback == null)
        {
            adControlCallback = new DefaultAdControlCallback();
        }
        return adControlCallback;
    }

    public AdData getAdData()
    {
        return adData;
    }

    AdPosition getAdPosition()
    {
        int i = getViewWidth();
        int j = getViewHeight();
        if (i == 0 && j == 0)
        {
            i = getWindowWidth();
            j = getWindowHeight();
        }
        int k = AdUtils.pixelToDeviceIndependentPixel(i);
        int l = AdUtils.pixelToDeviceIndependentPixel(j);
        int ai[] = new int[2];
        getAdContainer().getLocationOnScreen(ai);
        int i1 = AdUtils.pixelToDeviceIndependentPixel(ai[0]);
        int j1 = AdUtils.pixelToDeviceIndependentPixel(ai[1] - calculateAppChromeHeight(true, true));
        return new AdPosition(new Size(k, l), i1, j1);
    }

    public AdSize getAdSize()
    {
        return adSize;
    }

    public AdState getAdState()
    {
        return adState;
    }

    boolean getAndSetHasFinishedLoading(boolean flag)
    {
        return hasFinishedLoading.getAndSet(flag);
    }

    public String getConnectionType()
    {
        return connectionType;
    }

    int getContentViewTop(Window window)
    {
        return window.findViewById(0x1020002).getTop();
    }

    protected Context getContext()
    {
        if (adActivity == null)
        {
            return context;
        } else
        {
            return adActivity;
        }
    }

    Size getMaxExpandableSize(boolean flag)
    {
        boolean flag1 = true;
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getMetrics(displaymetrics);
        int i = displaymetrics.widthPixels;
        int j = displaymetrics.heightPixels;
        boolean flag2;
        int k;
        if (!flag)
        {
            flag2 = flag1;
        } else
        {
            flag2 = false;
        }
        if (flag)
        {
            flag1 = false;
        }
        k = j - calculateAppChromeHeight(flag2, flag1);
        return new Size(AdUtils.pixelToDeviceIndependentPixel(i), AdUtils.pixelToDeviceIndependentPixel(k));
    }

    public String getMaxSize()
    {
        if (!getAdSize().isAuto())
        {
            return null;
        } else
        {
            return AdSize.getAsSizeString(getWindowWidth(), getWindowHeight());
        }
    }

    void getMetrics(DisplayMetrics displaymetrics)
    {
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
    }

    public MetricsCollector getMetricsCollector()
    {
        if (metricsCollector == null)
        {
            resetMetricsCollector();
        }
        return metricsCollector;
    }

    public int getOriginalOrientation()
    {
        return originalOrientation;
    }

    public double getScalingMultiplier()
    {
        return scalingMultiplier;
    }

    public String getScalingMultiplierDescription()
    {
        if (getScalingMultiplier() > 1.0D)
        {
            return "u";
        }
        if (getScalingMultiplier() < 1.0D && getScalingMultiplier() > 0.0D)
        {
            return "d";
        } else
        {
            return "n";
        }
    }

    public int getTimeout()
    {
        return timeout;
    }

    public AdContainer getView()
    {
        return getAdContainer();
    }

    public int getViewHeight()
    {
        return getAdContainer().getHeight();
    }

    ViewGroup getViewParent()
    {
        return (ViewGroup)getView().getParent();
    }

    ViewGroup getViewParentIfExpanded()
    {
        if (defaultParent != null && defaultParent != getView().getParent())
        {
            return getViewParent();
        } else
        {
            return null;
        }
    }

    public int getViewWidth()
    {
        return getAdContainer().getWidth();
    }

    public int getWindowHeight()
    {
        return adWindowHeight;
    }

    public int getWindowWidth()
    {
        return adWindowWidth;
    }

    public void hideNativeCloseButtonImage()
    {
        getAdContainer().hideNativeCloseButtonImage();
    }

    public void initialize()
    {
        if (!canBeUsed())
        {
            return;
        }
        Iterator iterator;
        try
        {
            getAdContainer().initialize();
        }
        catch (IllegalStateException illegalstateexception)
        {
            adFailed(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "An unknown error occurred when attempting to create the web view."));
            setAdState(AdState.INVALID);
            Log.e("AdController", "An unknown error occurred when attempting to create the web view.");
            return;
        }
        if (!getAdSize().equals(AdSize.SIZE_INTERSTITIAL))
        {
            float f = InternalAdRegistration.getInstance().getDeviceInfo().getScalingFactorAsFloat();
            scalingMultiplier = AdUtils.calculateScalingMultiplier((int)(f * (float)adData.getWidth()), (int)(f * (float)adData.getHeight()), getWindowWidth(), getWindowHeight());
            setViewHeightToAdHeight();
        } else
        {
            scalingMultiplier = -1D;
        }
        iterator = adData.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            AAXCreative aaxcreative = (AAXCreative)iterator.next();
            Set set = BridgeSelector.getInstance().getBridgeFactories(aaxcreative);
            if (set != null)
            {
                Iterator iterator1 = set.iterator();
                while (iterator1.hasNext()) 
                {
                    AdSDKBridgeFactory adsdkbridgefactory = (AdSDKBridgeFactory)iterator1.next();
                    getAdContainer().addAdSDKBridge(adsdkbridgefactory.createAdSDKBridge(getAdControlAccessor()));
                }
            }
        } while (true);
        adLoaded();
    }

    public void injectJavascript(final String javascript, final boolean preload)
    {
        ThreadUtils.executeOnMainThread(new Runnable() {

            final AdController this$0;
            final String val$javascript;
            final boolean val$preload;

            public void run()
            {
                getAdContainer().injectJavascript(javascript, preload);
            }

            
            {
                this$0 = AdController.this;
                javascript = s;
                preload = flag;
                super();
            }
        });
    }

    public boolean isExpired()
    {
        return adData.isExpired();
    }

    boolean isInterstitial()
    {
        return AdSize.SIZE_INTERSTITIAL.equals(adSize);
    }

    public boolean isPrepared()
    {
        return isPrepared;
    }

    public boolean isValid()
    {
        return !getAdState().equals(AdState.INVALID);
    }

    boolean isValidAppKey()
    {
        return InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey() != null;
    }

    public boolean isWebViewOk()
    {
        return WebViewFactory.isWebViewOk(getContext());
    }

    public void loadHtml(String s, String s1)
    {
        getAdContainer().loadHtml(s, s1);
    }

    public void loadUrl(String s)
    {
        getAdContainer().loadUrl(s);
    }

    public void moveViewBackToParent(android.view.ViewGroup.LayoutParams layoutparams)
    {
        ViewGroup viewgroup = (ViewGroup)getView().getParent();
        if (viewgroup != null)
        {
            viewgroup.removeView(getView());
        }
        setViewHeightToAdHeight();
        if (defaultParent != null)
        {
            defaultParent.addView(getView(), layoutparams);
        }
        getAdContainer().listenForKey(null);
        setExpanded(false);
    }

    public void moveViewToViewGroup(ViewGroup viewgroup, android.view.ViewGroup.LayoutParams layoutparams, boolean flag)
    {
        ViewGroup viewgroup1 = getViewParent();
        if (defaultParent == null)
        {
            defaultParent = viewgroup1;
        }
        if (viewgroup1 != null)
        {
            viewgroup1.removeView(getView());
        }
        setViewHeightToMatchParent();
        viewgroup.addView(getView(), layoutparams);
        setExpanded(true);
        if (flag)
        {
            getAdContainer().listenForKey(new android.view.View.OnKeyListener() {

                final AdController this$0;

                public boolean onKey(View view, int i, KeyEvent keyevent)
                {
                    if (i == 4 && keyevent.getRepeatCount() == 0)
                    {
                        closeAd();
                        return true;
                    } else
                    {
                        return false;
                    }
                }

            
            {
                this$0 = AdController.this;
                super();
            }
            });
        }
    }

    void onAdTimedOut()
    {
        if (!getAndSetHasFinishedLoading(true))
        {
            adFailedAfterTimerCheck(new AdError(AdError.ErrorCode.NETWORK_TIMEOUT, "Ad Load Timed Out"));
            setAdState(AdState.INVALID);
        }
    }

    public void onRequestError(String s)
    {
        Log.e("AdController", s);
        adFailed(new AdError(AdError.ErrorCode.REQUEST_ERROR, s));
    }

    protected boolean passesInternetPermissionCheck(Context context1)
    {
        return PermissionChecker.hasInternetPermission(context1);
    }

    public boolean popView()
    {
        return getAdContainer().popView();
    }

    public void preloadHtml(String s, String s1, PreloadCallback preloadcallback)
    {
        getAdContainer().preloadHtml(s, s1, preloadcallback);
    }

    public void preloadUrl(String s, PreloadCallback preloadcallback)
    {
        getAdContainer().preloadUrl(s, preloadcallback);
    }

    public boolean prepareForAdLoad(long l, boolean flag)
    {
        if (canBeUsed()) goto _L2; else goto _L1
_L1:
        onRequestError("An ad could not be loaded because the view has been destroyed or was not created properly.");
_L4:
        return false;
_L2:
        if (!checkDefinedActivities())
        {
            onRequestError("Ads cannot load unless \"com.amazon.device.ads.AdActivity\" is correctly declared as an activity in AndroidManifest.xml. Consult the online documentation for more info.");
            return false;
        }
        if (!passesInternetPermissionCheck(context))
        {
            onRequestError("Ads cannot load because the INTERNET permission is missing from the app's manifest.");
            return false;
        }
        if (!isValidAppKey())
        {
            onRequestError("Can't load an ad because Application Key has not been set. Did you forget to call AdRegistration.setAppKey( ... )?");
            return false;
        }
        if (!isWebViewOk())
        {
            Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.AD_FAILED_UNKNOWN_WEBVIEW_ISSUE);
            onRequestError("We will be unable to create a WebView for rendering an ad due to an unknown issue with the WebView.");
            return false;
        }
        if (isReadyToLoad(flag))
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag1;
        if (getAdState().equals(AdState.RENDERED))
        {
            if (isExpired())
            {
                flag1 = false;
            } else
            {
                Log.e("AdController", "An ad is ready to show. Please call showAd() to show the ad before loading another ad.");
                flag1 = true;
            }
        } else
        if (getAdState().equals(AdState.EXPANDED))
        {
            Log.e("AdController", "An ad could not be loaded because another ad is currently expanded.");
            flag1 = true;
        } else
        {
            Log.e("AdController", "An ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad.");
            flag1 = true;
        }
        if (flag1) goto _L4; else goto _L3
_L3:
        reset();
        getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL, l);
        getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_FAILURE, l);
        getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_SUCCESS, l);
        getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START, l);
        setAdState(AdState.LOADING);
        isRendering.set(false);
        setHasFinishedLoading(false);
        if (timer != null)
        {
            timer.purge();
        }
        timer = new Timer();
        timer.schedule(new TimerTask() {

            final AdController this$0;

            public void run()
            {
                onAdTimedOut();
            }

            
            {
                this$0 = AdController.this;
                super();
            }
        }, getTimeout());
        InternalAdRegistration.getInstance().getDeviceInfo().populateUserAgentString(context);
        isPrepared = true;
        return true;
    }

    void putUrlExecutorInAdWebViewClient(String s, AdWebViewClient.UrlExecutor urlexecutor)
    {
        getAdContainer().putUrlExecutorInAdWebViewClient(s, urlexecutor);
    }

    void reload()
    {
        getAdContainer().reload();
    }

    public void removeNativeCloseButton()
    {
        getAdContainer().removeNativeCloseButton();
    }

    public void render()
    {
        if (!canBeUsed())
        {
            return;
        } else
        {
            setAdState(AdState.RENDERING);
            long l = System.nanoTime();
            getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START, l);
            getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_RENDER, l);
            isRendering.set(true);
            String s = adData.getCreative();
            getAdContainer().loadHtml("http://amazon-adsystem.amazon.com/", s);
            return;
        }
    }

    public void resetMetricsCollector()
    {
        metricsCollector = new MetricsCollector();
    }

    public void resetToReady()
    {
        if (!canBeUsed())
        {
            return;
        } else
        {
            adActivity = null;
            isPrepared = false;
            resetMetricsCollector();
            getAdContainer().destroy();
            adData = null;
            setAdState(AdState.READY_TO_LOAD);
            return;
        }
    }

    void setAdActivity(Activity activity)
    {
        adActivity = activity;
    }

    protected void setAdData(AdData addata)
    {
        adData = addata;
    }

    void setAdState(AdState adstate)
    {
        Log.d("AdController", (new StringBuilder()).append("Changing AdState from ").append(adState.toString()).append(" to ").append(adstate.toString()).toString());
        adState = adstate;
    }

    protected void setAdditionalMetrics()
    {
        AdUtils.setConnectionMetrics(getConnectionType(), getMetricsCollector());
        if (getWindowHeight() == 0)
        {
            getMetricsCollector().incrementMetric(Metrics.MetricType.ADLAYOUT_HEIGHT_ZERO);
        }
        getMetricsCollector().setMetricString(Metrics.MetricType.VIEWPORT_SCALE, getScalingMultiplierDescription());
    }

    public void setCallback(AdControlCallback adcontrolcallback)
    {
        adControlCallback = adcontrolcallback;
    }

    public void setConnectionType(String s)
    {
        connectionType = s;
    }

    public void setExpanded(boolean flag)
    {
        if (flag)
        {
            setAdState(AdState.EXPANDED);
            return;
        } else
        {
            setAdState(AdState.SHOWING);
            return;
        }
    }

    void setHasFinishedLoading(boolean flag)
    {
        hasFinishedLoading.set(flag);
    }

    public void setOriginalOrientation(Activity activity)
    {
        originalOrientation = activity.getRequestedOrientation();
    }

    public void setTimeout(int i)
    {
        timeout = i;
    }

    public void setViewHeightToAdHeight()
    {
        if (adData != null)
        {
            int i = (int)((double)adData.getHeight() * getScalingMultiplier() * (double)AdUtils.getScalingFactorAsFloat());
            if (i > 0)
            {
                getAdContainer().setViewHeight(i);
            }
        }
    }

    public void setViewHeightToMatchParent()
    {
        getAdContainer().setViewHeight(-1);
    }

    public void setWindowDimensions(int i, int j)
    {
        adWindowWidth = i;
        adWindowHeight = j;
        windowDimensionsSet = true;
    }

    public void stashView()
    {
        getAdContainer().stashView();
    }

    public void submitAndResetMetricsIfNecessary(boolean flag)
    {
        if (flag)
        {
            Metrics.getInstance().submitAndResetMetrics(this);
        }
    }

    private class DefaultAdControlCallback
        implements AdControlCallback
    {

        final AdController this$0;

        public int adClosing()
        {
            Log.d("AdController", "DefaultAdControlCallback adClosing called");
            return 1;
        }

        public boolean isAdReady(boolean flag)
        {
            Log.d("AdController", "DefaultAdControlCallback isAdReady called");
            return getAdState().equals(AdState.READY_TO_LOAD) || getAdState().equals(AdState.SHOWING);
        }

        public void onAdEvent(AdEvent adevent)
        {
            Log.d("AdController", "DefaultAdControlCallback onAdEvent called");
        }

        public void onAdFailed(AdError aderror)
        {
            Log.d("AdController", "DefaultAdControlCallback onAdFailed called");
        }

        public void onAdLoaded(AdProperties adproperties)
        {
            Log.d("AdController", "DefaultAdControlCallback onAdLoaded called");
        }

        public void onAdRendered()
        {
            Log.d("AdController", "DefaultAdControlCallback onAdRendered called");
        }

        public void postAdRendered()
        {
            Log.d("AdController", "DefaultAdControlCallback postAdRendered called");
        }

        DefaultAdControlCallback()
        {
            this$0 = AdController.this;
            super();
        }
    }


    private class AdPosition
    {

        private final Size size;
        final AdController this$0;
        private final int x;
        private final int y;

        public Size getSize()
        {
            return size;
        }

        public int getX()
        {
            return x;
        }

        public int getY()
        {
            return y;
        }

        public AdPosition(Size size1, int i, int j)
        {
            this$0 = AdController.this;
            super();
            size = size1;
            x = i;
            y = j;
        }
    }

}
