// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.amazon.device.ads:
//            Ad, AdSize, AdController, AdState, 
//            ThreadUtils, Log, Metrics, MetricsCollector, 
//            AndroidTargetUtils, NumberUtils, AdSlot, AdLoader, 
//            AdControllerFactory, InternalAdRegistration, IInternalAdRegistration, DefaultAdListener, 
//            AdTargetingOptions, AdListener, AdContainer, AdError, 
//            AdControlCallback, AdData

public class AdLayout extends FrameLayout
    implements Ad
{

    private static final String CONTENT_DESCRIPTION_AD_LAYOUT = "adLayoutObject";
    public static final int DEFAULT_TIMEOUT = 20000;
    static final String LAYOUT_NOT_RUN_ERR_MSG = "Can't load an ad because the view size cannot be determined.";
    static final String LAYOUT_PARAMS_NULL_ERR_MSG = "Can't load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout.";
    static final String LOADING_IN_PROGRESS_LOG_MSG = "Can't load an ad because ad loading is already in progress";
    private static final String LOG_TAG = "AdLayout";
    private static ScheduledThreadPoolExecutor threadPool;
    private View activityRootView;
    private AdController adController;
    private AdListener adListener;
    private final AdSize adSize;
    private AdTargetingOptions adTargetingOptions;
    private boolean attached;
    private final Context context;
    private AdContainer currentView;
    private boolean hasRegisterBroadcastReciever;
    private boolean isDestroyed;
    private boolean isInForeground;
    private boolean isInitialized;
    private boolean isParentViewMissingAtLoadTime;
    private int lastVisibility;
    private AtomicBoolean needsToLoadAdOnLayout;
    private BroadcastReceiver screenStateReceiver;
    private boolean shouldDisableWebViewHardwareAcceleration;

    public AdLayout(Activity activity)
    {
        this(activity, AdSize.SIZE_AUTO);
    }

    public AdLayout(Activity activity, AdSize adsize)
    {
        super(activity);
        hasRegisterBroadcastReciever = false;
        attached = false;
        lastVisibility = 8;
        needsToLoadAdOnLayout = new AtomicBoolean(false);
        isParentViewMissingAtLoadTime = false;
        activityRootView = null;
        adTargetingOptions = null;
        isDestroyed = false;
        isInitialized = false;
        context = activity;
        adSize = adsize;
    }

    public AdLayout(Context context1, AttributeSet attributeset)
    {
        super(context1, attributeset);
        hasRegisterBroadcastReciever = false;
        attached = false;
        lastVisibility = 8;
        needsToLoadAdOnLayout = new AtomicBoolean(false);
        isParentViewMissingAtLoadTime = false;
        activityRootView = null;
        adTargetingOptions = null;
        isDestroyed = false;
        isInitialized = false;
        context = context1;
        adSize = determineAdSize(attributeset);
    }

    public AdLayout(Context context1, AttributeSet attributeset, int i)
    {
        super(context1, attributeset, i);
        hasRegisterBroadcastReciever = false;
        attached = false;
        lastVisibility = 8;
        needsToLoadAdOnLayout = new AtomicBoolean(false);
        isParentViewMissingAtLoadTime = false;
        activityRootView = null;
        adTargetingOptions = null;
        isDestroyed = false;
        isInitialized = false;
        context = context1;
        adSize = determineAdSize(attributeset);
    }

    private void collapseAd()
    {
        if (getAdController().getAdState().equals(AdState.EXPANDED))
        {
            ThreadUtils.scheduleOnMainThread(new Runnable() {

                final AdLayout this$0;

                public void run()
                {
                    if (getAdController().getAdState().equals(AdState.EXPANDED))
                    {
                        getAdController().closeAd();
                    }
                }

            
            {
                this$0 = AdLayout.this;
                super();
            }
            });
        }
    }

    private AdSize determineAdSize(AttributeSet attributeset)
    {
        String s = getAttributeValue(attributeset, "http://schemas.android.com/apk/lib/com.amazon.device.ads", "adSize");
        if (s == null)
        {
            s = getAttributeValue(attributeset, (new StringBuilder()).append("http://schemas.android.com/apk/res/").append(context.getPackageName()).toString(), "adSize");
            if (s != null)
            {
                Log.w(true, "AdLayout", "DEPRECATED - Please use the XML namespace \"http://schemas.android.com/apk/lib/com.amazon.device.ads\" for specifying AdLayout properties.");
                if (s.toLowerCase(Locale.US).equals("custom"))
                {
                    Log.e(true, "AdLayout", "Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size.");
                    throw new IllegalArgumentException("Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size.");
                }
            }
        }
        return parseAdSize(s);
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

    private static String getAttributeValue(AttributeSet attributeset, String s, String s1)
    {
        return attributeset.getAttributeValue(s, s1);
    }

    private void initializeAdController()
    {
        if (adController == null)
        {
            AdSize adsize;
            if (adSize == null)
            {
                adsize = AdSize.SIZE_AUTO;
            } else
            {
                adsize = adSize;
            }
            setAdController(createAdController(adsize, context));
        }
    }

    private boolean isReadyToLoad()
    {
        return AdState.READY_TO_LOAD.equals(getAdController().getAdState()) || AdState.SHOWING.equals(getAdController().getAdState());
    }

    private boolean loadAdWhenParentViewMissing()
    {
        if (getLayoutParams() == null)
        {
            Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.AD_FAILED_NULL_LAYOUT_PARAMS);
            onRequestError("Can't load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout.");
            return false;
        }
        if (AndroidTargetUtils.isAtLeastAndroidAPI(11))
        {
            setActivityRootView();
            if (isActivityRootViewNull())
            {
                onRequestError("Ad load failed because root view could not be obtained from the activity.");
                return false;
            }
            if (isActivityRootViewLayoutRequested())
            {
                Log.d("AdLayout", "Activity root view layout is requested.");
                deferAdLoadToLayoutEvent();
                setOnLayoutChangeListenerForRoot();
                return false;
            } else
            {
                setFloatingWindowDimensions();
                return true;
            }
        } else
        {
            setFloatingWindowDimensions();
            return true;
        }
    }

    private void onRequestError(String s)
    {
        getAdController().onRequestError(s);
    }

    private static AdSize parseAdSize(String s)
    {
        AdSize adsize = AdSize.SIZE_AUTO;
        if (s != null)
        {
            String s1 = s.toLowerCase(Locale.US);
            if (!s1.equals("auto"))
            {
                String as[] = s1.split("x");
                int i;
                int j;
                if (as.length == 2)
                {
                    j = NumberUtils.parseInt(as[0], 0);
                    i = NumberUtils.parseInt(as[1], 0);
                } else
                {
                    i = 0;
                    j = 0;
                }
                return new AdSize(j, i);
            }
        }
        return adsize;
    }

    private void registerScreenStateBroadcastReceiver()
    {
        if (hasRegisterBroadcastReciever)
        {
            return;
        } else
        {
            hasRegisterBroadcastReciever = true;
            screenStateReceiver = new BroadcastReceiver() {

                final AdLayout this$0;

                public void onReceive(Context context1, Intent intent)
                {
                    if (intent.getAction().equals("android.intent.action.SCREEN_OFF") && isInForeground)
                    {
                        getAdController().closeAd();
                    }
                }

            
            {
                this$0 = AdLayout.this;
                super();
            }
            };
            IntentFilter intentfilter = new IntentFilter("android.intent.action.SCREEN_OFF");
            intentfilter.addAction("android.intent.action.USER_PRESENT");
            context.getApplicationContext().registerReceiver(screenStateReceiver, intentfilter);
            return;
        }
    }

    private void setAdController(AdController adcontroller)
    {
        adController = adcontroller;
        adController.setCallback(createAdControlCallback());
    }

    private void startAdLoadUponLayout()
    {
        AdTargetingOptions adtargetingoptions = adTargetingOptions;
        AdSlot adslot = (new AdSlot(getAdController(), adtargetingoptions)).setDeferredLoad(true);
        AdLoader.loadAds(getAdController().getTimeout(), adtargetingoptions, new AdSlot[] {
            adslot
        });
        if (!isPrepared())
        {
            onRequestError("Could not load ad on layout.");
        }
    }

    private void unregisterScreenStateBroadcastReceiver()
    {
        if (hasRegisterBroadcastReciever)
        {
            hasRegisterBroadcastReciever = false;
            context.getApplicationContext().unregisterReceiver(screenStateReceiver);
        }
    }

    void adFailed(AdError aderror)
    {
        getAdController().adFailed(aderror);
    }

    void adShown()
    {
        getAdController().adShown();
    }

    void bypassAdRenderingProcess()
    {
        getAdController().setAdState(AdState.RENDERING);
        getAdController().adRendered("custom-render");
    }

    AdControlCallback createAdControlCallback()
    {
        return new AdLayoutAdControlCallback();
    }

    AdController createAdController(AdSize adsize, Context context1)
    {
        return AdControllerFactory.buildAdController(context1, adsize);
    }

    void deferAdLoadToLayoutEvent()
    {
        setNeedsToLoadAdOnLayout(true);
        scheduleTaskForCheckingIfLayoutHasRun();
    }

    public void destroy()
    {
        if (!isInitialized())
        {
            return;
        } else
        {
            Log.d("AdLayout", "Destroying the AdLayout");
            isDestroyed = true;
            unregisterScreenStateBroadcastReceiver();
            getAdController().destroy();
            return;
        }
    }

    void failLoadIfLayoutHasNotRun()
    {
        if (getAndSetNeedsToLoadAdOnLayout(false))
        {
            Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.AD_FAILED_LAYOUT_NOT_RUN);
            onRequestError("Can't load an ad because the view size cannot be determined.");
        }
    }

    View getActivityRootView()
    {
        return activityRootView;
    }

    int getActivityRootViewDimension(boolean flag)
    {
        if (flag)
        {
            return activityRootView.getWidth();
        } else
        {
            return activityRootView.getHeight();
        }
    }

    AdData getAdData()
    {
        return getAdController().getAdData();
    }

    AdListener getAdListener()
    {
        return adListener;
    }

    public AdSize getAdSize()
    {
        AdController adcontroller = getAdController();
        if (adcontroller == null)
        {
            return null;
        } else
        {
            return adcontroller.getAdSize();
        }
    }

    boolean getAndSetNeedsToLoadAdOnLayout(boolean flag)
    {
        return needsToLoadAdOnLayout.getAndSet(flag);
    }

    boolean getNeedsToLoadAdOnLayout()
    {
        return needsToLoadAdOnLayout.get();
    }

    int getRawScreenDimension(boolean flag)
    {
        WindowManager windowmanager = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        if (flag)
        {
            return displaymetrics.widthPixels;
        } else
        {
            return displaymetrics.heightPixels;
        }
    }

    public int getTimeout()
    {
        if (getAdController() == null)
        {
            return -1;
        } else
        {
            return getAdController().getTimeout();
        }
    }

    void initializeIfNecessary()
    {
        if (isInitialized())
        {
            return;
        }
        long l = System.nanoTime();
        Log.d("AdLayout", "Initializing AdLayout.");
        InternalAdRegistration.getInstance().contextReceived(context);
        setContentDescription("adLayoutObject");
        if (isInEditMode())
        {
            TextView textview = new TextView(context);
            textview.setText("AdLayout");
            textview.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
            textview.setGravity(17);
            addView(textview);
            isInitialized = true;
            return;
        }
        boolean flag;
        if (getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isInForeground = flag;
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        if (isWebViewDatabaseNull(context))
        {
            Log.e(true, "AdLayout", "Disabling ads. Local cache file is inaccessible so ads will fail if we try to create a WebView. Details of this Android bug found at: http://code.google.com/p/android/issues/detail?id=10789");
            return;
        }
        isInitialized = true;
        if (adListener == null)
        {
            adListener = new DefaultAdListener("AdLayout");
        }
        initializeAdController();
        adController.getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LAYOUT_INITIALIZATION, l);
        adController.getMetricsCollector().stopMetric(Metrics.MetricType.AD_LAYOUT_INITIALIZATION);
    }

    boolean isActivityRootViewLayoutRequested()
    {
        return activityRootView.isLayoutRequested();
    }

    boolean isActivityRootViewNull()
    {
        return activityRootView == null;
    }

    public boolean isAdLoading()
    {
        return isLoading();
    }

    boolean isInitialized()
    {
        return isInitialized;
    }

    public boolean isLoading()
    {
        if (getAdController() == null)
        {
            return false;
        } else
        {
            return getAdController().getAdState().equals(AdState.LOADING);
        }
    }

    boolean isParentViewMissingAtLoadTime()
    {
        return isParentViewMissingAtLoadTime;
    }

    boolean isPrepared()
    {
        return getAdController().isPrepared();
    }

    boolean isWebViewDatabaseNull(Context context1)
    {
        return WebViewDatabase.getInstance(context1) == null;
    }

    public boolean loadAd()
    {
        return loadAd(new AdTargetingOptions());
    }

    public boolean loadAd(AdTargetingOptions adtargetingoptions)
    {
        if (adtargetingoptions == null)
        {
            adtargetingoptions = new AdTargetingOptions();
        }
        adTargetingOptions = adtargetingoptions;
        if (getNeedsToLoadAdOnLayout())
        {
            Log.e("AdLayout", "Can't load an ad because ad loading is already in progress");
            return false;
        }
        initializeIfNecessary();
        if (!isInitialized())
        {
            Log.e("AdLayout", "The ad could not be initialized properly.");
            return false;
        }
        if (!isReadyToLoad())
        {
            class _cls4
            {

                static final int $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[];
                static final int $SwitchMap$com$amazon$device$ads$AdState[];

                static 
                {
                    $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType = new int[AdEvent.AdEventType.values().length];
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[AdEvent.AdEventType.EXPANDED.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[AdEvent.AdEventType.CLOSED.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[AdEvent.AdEventType.RESIZED.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    $SwitchMap$com$amazon$device$ads$AdState = new int[AdState.values().length];
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdState[AdState.INVALID.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdState[AdState.DESTROYED.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        $SwitchMap$com$amazon$device$ads$AdState[AdState.EXPANDED.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror5)
                    {
                        return;
                    }
                }
            }

            switch (_cls4..SwitchMap.com.amazon.device.ads.AdState[getAdController().getAdState().ordinal()])
            {
            default:
                Log.e("AdLayout", "Can't load an ad because ad loading is already in progress");
                return false;

            case 1: // '\001'
                Log.e("AdLayout", "An ad could not be loaded because of an unknown issue with web views.");
                return false;

            case 2: // '\002'
                Log.e("AdLayout", "An ad could not be loaded because the AdLayout has been destroyed.");
                return false;

            case 3: // '\003'
                Log.e("AdLayout", "An ad could not be loaded because another ad is currently expanded.");
                break;
            }
            return false;
        }
        int i = getAdController().getTimeout();
        AdSlot aadslot[] = new AdSlot[1];
        aadslot[0] = new AdSlot(getAdController(), adtargetingoptions);
        AdLoader.loadAds(i, adtargetingoptions, aadslot);
        if (getNeedsToLoadAdOnLayout())
        {
            return true;
        } else
        {
            return isPrepared();
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (isInEditMode())
        {
            return;
        } else
        {
            attached = true;
            registerScreenStateBroadcastReceiver();
            return;
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        attached = false;
        collapseAd();
        unregisterScreenStateBroadcastReceiver();
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (!isDestroyed)
        {
            int i1 = k - i;
            int j1 = l - j;
            super.onLayout(flag, i, j, k, l);
            if (!isInEditMode())
            {
                getAdController().setWindowDimensions(i1, j1);
                if (getAndSetNeedsToLoadAdOnLayout(false))
                {
                    startAdLoadUponLayout();
                    return;
                }
            }
        }
    }

    protected void onWindowVisibilityChanged(int i)
    {
        if (attached && lastVisibility != i)
        {
            if (i != 0)
            {
                isInForeground = false;
                collapseAd();
                unregisterScreenStateBroadcastReceiver();
            } else
            if (i == 0)
            {
                isInForeground = true;
                return;
            }
        }
    }

    boolean prepareAd(boolean flag)
    {
        if (flag)
        {
            Log.d("AdLayout", "Skipping ad layout preparation steps because the layout is already prepared.");
        } else
        {
            if (!isReadyToLoad())
            {
                return false;
            }
            if (getNeedsToLoadAdOnLayout())
            {
                Log.e("AdLayout", "Can't load an ad because ad loading is already in progress");
                return false;
            }
            if (getAdSize().isAuto())
            {
                Log.d("AdLayout", "Ad size to be determined automatically.");
            }
            setIsParentViewMissingAtLoadTime();
            if (!getAdSize().isAuto() || !getAdController().areWindowDimensionsSet())
            {
                if (isLayoutRequested() && getAdSize().isAuto() && !isParentViewMissingAtLoadTime())
                {
                    deferAdLoadToLayoutEvent();
                    return false;
                }
                if (isParentViewMissingAtLoadTime())
                {
                    Log.d("AdLayout", "The ad's parent view is missing at load time.");
                    return loadAdWhenParentViewMissing();
                }
            }
        }
        return true;
    }

    int resolveLayoutParamForFloatingAd(boolean flag)
    {
        int i;
        if (flag)
        {
            i = getLayoutParams().width;
        } else
        {
            i = getLayoutParams().height;
        }
        if (i != -1) goto _L2; else goto _L1
_L1:
        if (!isActivityRootViewNull()) goto _L4; else goto _L3
_L3:
        i = getRawScreenDimension(flag);
_L6:
        return i;
_L4:
        return getActivityRootViewDimension(flag);
_L2:
        if (i == -2)
        {
            return 0;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    void scheduleTaskForCheckingIfLayoutHasRun()
    {
        Runnable runnable = new Runnable() {

            final AdLayout this$0;

            public void run()
            {
                failLoadIfLayoutHasNotRun();
            }

            
            {
                this$0 = AdLayout.this;
                super();
            }
        };
        threadPool.schedule(runnable, getTimeout(), TimeUnit.MILLISECONDS);
    }

    void setActivityRootView()
    {
        activityRootView = ((Activity)context).getWindow().getDecorView().findViewById(0x1020002).getRootView();
    }

    void setFloatingWindowDimensions()
    {
        if (getLayoutParams().width == -1 || getLayoutParams().height == -1)
        {
            Log.d("AdLayout", "The requested ad will scale based on the screen's dimensions because at least one AdLayout dimension is set to MATCH_PARENT but the AdLayout is currently missing a fixed-size parent view.");
        }
        int i = resolveLayoutParamForFloatingAd(true);
        int j = resolveLayoutParamForFloatingAd(false);
        getAdController().setWindowDimensions(i, j);
    }

    void setIsParentViewMissingAtLoadTime()
    {
        boolean flag;
        if (getParent() == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isParentViewMissingAtLoadTime = flag;
    }

    void setIsParentViewMissingAtLoadTime(boolean flag)
    {
        isParentViewMissingAtLoadTime = flag;
    }

    public void setListener(AdListener adlistener)
    {
        if (adlistener == null)
        {
            adListener = new DefaultAdListener("AdLayout");
            return;
        } else
        {
            adListener = adlistener;
            return;
        }
    }

    void setNeedsToLoadAdOnLayout(boolean flag)
    {
        needsToLoadAdOnLayout.set(flag);
    }

    void setOnLayoutChangeListenerForRoot()
    {
        OnLayoutChangeListenerUtil.setOnLayoutChangeListenerForRoot(this);
    }

    void setShouldDisableWebViewHardwareAcceleration(boolean flag)
    {
        shouldDisableWebViewHardwareAcceleration = flag;
    }

    public void setTimeout(int i)
    {
        AdController adcontroller = getAdController();
        if (adcontroller != null)
        {
            adcontroller.setTimeout(i);
        }
    }

    boolean shouldDisableWebViewHardwareAcceleration()
    {
        return shouldDisableWebViewHardwareAcceleration;
    }

    static 
    {
        threadPool = new ScheduledThreadPoolExecutor(1);
        threadPool.setKeepAliveTime(60L, TimeUnit.SECONDS);
    }







/*
    static AdContainer access$402(AdLayout adlayout, AdContainer adcontainer)
    {
        adlayout.currentView = adcontainer;
        return adcontainer;
    }

*/



/*
    static AdController access$602(AdLayout adlayout, AdController adcontroller)
    {
        adlayout.adController = adcontroller;
        return adcontroller;
    }

*/

    private class AdLayoutAdControlCallback
        implements AdControlCallback
    {

        private AdProperties properties;
        final AdLayout this$0;

        public int adClosing()
        {
            return !getAdController().getAdState().equals(AdState.EXPANDED) ? 2 : 0;
        }

        boolean handleAdEvent(AdEvent adevent)
        {
            switch (_cls4..SwitchMap.com.amazon.device.ads.AdEvent.AdEventType[adevent.getAdEventType().ordinal()])
            {
            default:
                return false;

            case 1: // '\001'
                adListener.onAdExpanded(AdLayout.this);
                return true;

            case 2: // '\002'
                adListener.onAdCollapsed(AdLayout.this);
                return true;

            case 3: // '\003'
                break;
            }
            if (adListener instanceof ExtendedAdListener)
            {
                Rect rect = (Rect)adevent.getParameters().getParameter("positionOnScreen");
                ((ExtendedAdListener)adListener).onAdResized(rect);
            }
            return true;
        }

        public boolean isAdReady(boolean flag)
        {
            return prepareAd(flag);
        }

        void notifyAdShowing(AdProperties adproperties)
        {
            adShown();
            adListener.onAdLoaded(AdLayout.this, adproperties);
        }

        public void onAdEvent(AdEvent adevent)
        {
            handleAdEvent(adevent);
        }

        public void onAdFailed(AdError aderror)
        {
            if (AdError.ErrorCode.NETWORK_TIMEOUT.equals(aderror.getCode()))
            {
                adController = null;
            }
            adListener.onAdFailedToLoad(AdLayout.this, aderror);
        }

        public void onAdLoaded(AdProperties adproperties)
        {
            properties = adproperties;
            getAdController().render();
        }

        public void onAdRendered()
        {
            getAdController().getMetricsCollector().startMetric(Metrics.MetricType.AD_SHOW_LATENCY);
            if (currentView != null)
            {
                removeView(currentView);
                currentView.destroy();
            }
            currentView = getAdController().getView();
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1, 17);
            addView(currentView, layoutparams);
            notifyAdShowing(properties);
        }

        public void postAdRendered()
        {
        }

        AdLayoutAdControlCallback()
        {
            this$0 = AdLayout.this;
            super();
        }
    }


    private class OnLayoutChangeListenerUtil
    {

        protected static void setOnLayoutChangeListenerForRoot(final AdLayout adLayout)
        {
            android.view.View.OnLayoutChangeListener onlayoutchangelistener = new android.view.View.OnLayoutChangeListener() {

                final AdLayout val$adLayout;

                public void onLayoutChange(View view, int i, int j, int k, int l, int i1, int j1, 
                        int k1, int l1)
                {
                    if (adLayout.getAndSetNeedsToLoadAdOnLayout(false))
                    {
                        adLayout.setFloatingWindowDimensions();
                        adLayout.startAdLoadUponLayout();
                        adLayout.activityRootView.removeOnLayoutChangeListener(this);
                    }
                }

                
                {
                    adLayout = adlayout;
                    super();
                }
            };
            adLayout.activityRootView.addOnLayoutChangeListener(onlayoutchangelistener);
        }

        private OnLayoutChangeListenerUtil()
        {
        }
    }

}
