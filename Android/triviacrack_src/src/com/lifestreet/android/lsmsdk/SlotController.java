// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTask;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTaskListener;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTaskResponse;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.StringUtils;
import com.lifestreet.android.lsmsdk.commons.Timer;
import com.lifestreet.android.lsmsdk.commons.Utils;
import com.lifestreet.android.lsmsdk.exceptions.AsyncHttpTaskCanceledException;
import com.lifestreet.android.lsmsdk.exceptions.AsyncHttpTaskNetworkException;
import com.lifestreet.android.lsmsdk.exceptions.SlotException;
import com.lifestreet.android.lsmsdk.exceptions.SlotResponseException;
import com.lifestreet.android.lsmsdk.exceptions.SlotUncaughtExceptionHandler;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.OpenUDID.a;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            IntegrationType, DeviceInfo, AdapterController, AdNetworkQueue, 
//            SlotView, SlotType, ErrorCode, SlotContext, 
//            AbstractSlotResponse, SlotResponse, SlotListener, SlotTargeting

public final class SlotController
    implements AsyncHttpTaskListener, com.lifestreet.android.lsmsdk.commons.Timer.Event
{

    public static final int DEFAULT_REFRESH_RATE_IN_SECS = 300;
    public static final String MRAID_VERSION = "1";
    public static final String SDK_ID = "LSM SDK Version 1.9.2-src ($LastChangedRevision: 96869 $)";
    public static final String SDK_REVISION = "$LastChangedRevision: 96869 $";
    public static final String SDK_TYPE = "src";
    public static final String SDK_VERSION = "1.9.2";
    public static String USER_AGENT = null;
    private static boolean sInitialized = false;
    private AdNetworkQueue mAdNetworkQueue;
    private boolean mAutoRefreshEnabled;
    private final WeakReference mContextRef;
    private AdapterController mCurrentAdapterController;
    private boolean mDestroyed;
    private final DeviceInfo mDeviceInfo;
    private IntegrationType mIntegrationType;
    private LoadingState mLoadingState;
    private AdapterController mNextAdapterController;
    private final Timer mNotRespondingTimer = new Timer(this, 300L);
    private boolean mPaused;
    private final Timer mRefreshTimer = new Timer(this, 300L);
    private String mRequestId;
    private boolean mShowAdsWhenReady;
    private boolean mShowBannerCloseButton;
    private boolean mShowInterstitialCloseButton;
    private SlotListener mSlotListener;
    private SlotResponse mSlotResponse;
    private String mSlotTag;
    private final SlotType mSlotType;
    private WeakReference mSlotViewRef;
    private SlotTargeting mTargeting;

    public SlotController(SlotType slottype, Context context)
    {
        mShowBannerCloseButton = false;
        mShowInterstitialCloseButton = true;
        mAutoRefreshEnabled = true;
        mShowAdsWhenReady = true;
        mDestroyed = false;
        mPaused = false;
        mIntegrationType = IntegrationType.DIRECT;
        mSlotType = slottype;
        mDeviceInfo = new DeviceInfo(context);
        mContextRef = new WeakReference(context);
        setLoadingState(LoadingState.NOT_LOADED);
        initialize();
    }

    private void initialize()
    {
        this;
        JVM INSTR monitorenter ;
        if (!sInitialized)
        {
            sInitialized = true;
            LSMLogger.LOGGER.info("LSM SDK Version 1.9.2-src ($LastChangedRevision: 96869 $)");
            if (SlotUncaughtExceptionHandler.ENABLED)
            {
                Thread.setDefaultUncaughtExceptionHandler(new SlotUncaughtExceptionHandler());
            }
            Context context = getContext();
            WebView webview = new WebView(context.getApplicationContext());
            USER_AGENT = webview.getSettings().getUserAgentString();
            webview.destroy();
            a.a(context);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void startNotRespondingTimer()
    {
        if (!mPaused)
        {
            mNotRespondingTimer.start(false);
        }
    }

    public void destroy()
    {
        this;
        JVM INSTR monitorenter ;
        mRefreshTimer.stop();
        mNotRespondingTimer.stop();
        mDestroyed = true;
        mSlotResponse = null;
        mAdNetworkQueue = null;
        mAutoRefreshEnabled = false;
        destroyNextAdapterController();
        destroyCurrentAdapterController();
        mSlotListener = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void destroyCurrentAdapterController()
    {
        if (mCurrentAdapterController != null)
        {
            mCurrentAdapterController.onDestroy();
            mCurrentAdapterController = null;
        }
    }

    public void destroyNextAdapterController()
    {
        if (mNextAdapterController != null)
        {
            mNextAdapterController.onDestroy();
            mNextAdapterController = null;
        }
    }

    public void enqueueNextNetwork()
    {
        if (mAdNetworkQueue != null)
        {
            mAdNetworkQueue.enqueueNextNetwork();
        }
    }

    public Context getContext()
    {
        if (mContextRef != null)
        {
            return (Context)mContextRef.get();
        } else
        {
            return null;
        }
    }

    public AdapterController getCurrentAdapterController()
    {
        return mCurrentAdapterController;
    }

    public IntegrationType getIntegrationType()
    {
        return mIntegrationType;
    }

    public LoadingState getLoadingState()
    {
        return mLoadingState;
    }

    public AdapterController getNextAdapterController()
    {
        return mNextAdapterController;
    }

    public Timer getRefreshTimer()
    {
        return mRefreshTimer;
    }

    public String getRequestId()
    {
        return mRequestId;
    }

    public SlotListener getSlotListener()
    {
        return mSlotListener;
    }

    public Map getSlotQueryParams()
    {
        return Utils.getMapWithQueryParams(mTargeting, mDeviceInfo, mRequestId, mIntegrationType, getContext());
    }

    public SlotResponse getSlotResponse()
    {
        return mSlotResponse;
    }

    public String getSlotTag()
    {
        return mSlotTag;
    }

    public SlotType getSlotType()
    {
        return mSlotType;
    }

    public String getSlotUrl()
    {
        return Utils.getUriWithQueryParams(mSlotTag, getSlotQueryParams()).toString();
    }

    public SlotView getSlotView()
    {
        if (mSlotViewRef != null)
        {
            return (SlotView)mSlotViewRef.get();
        } else
        {
            return null;
        }
    }

    public SlotTargeting getTargeting()
    {
        return mTargeting;
    }

    public boolean isAutoRefreshEnabled()
    {
        return mAutoRefreshEnabled;
    }

    public boolean isNextNetworkAvailable()
    {
        AdNetworkQueue adnetworkqueue = mAdNetworkQueue;
        boolean flag = false;
        if (adnetworkqueue != null)
        {
            flag = mAdNetworkQueue.isNextNetworkAvailable();
        }
        return flag;
    }

    public boolean isShowAdsWhenReady()
    {
        return mShowAdsWhenReady;
    }

    public boolean isShowBannerCloseButton()
    {
        return mShowBannerCloseButton;
    }

    public boolean isShowInterstitialCloseButton()
    {
        return mShowInterstitialCloseButton;
    }

    public void loadSlot(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (mLoadingState != LoadingState.LOADING) goto _L2; else goto _L1
_L1:
        LSMLogger.LOGGER.warning("Already requesting an Ad");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (mPaused) goto _L4; else goto _L3
_L3:
        setLoadingState(LoadingState.LOADING);
        mRefreshTimer.stop();
        mAdNetworkQueue = null;
        mShowAdsWhenReady = flag;
        if (mSlotType != SlotType.INTERSTITIAL && getSlotView() == null)
        {
            throw new SlotException(ErrorCode.NO_ERROR, "Slot view can't be null", SlotContext.newInstance(this));
        }
        break MISSING_BLOCK_LABEL_108;
        SlotException slotexception;
        slotexception;
        onAsyncHttpTaskFailed(slotexception.getMessage(), slotexception);
          goto _L4
        Exception exception;
        exception;
        throw exception;
        if (mSlotTag == null)
        {
            throw new SlotException(ErrorCode.NO_SLOT_TAG, "You must call the setSlotTag method before loading an ad", SlotContext.newInstance(this));
        }
        if (slotTagIsNotValid())
        {
            throw new SlotException(ErrorCode.NO_ERROR, "Invalid slot tag", SlotContext.newInstance(this));
        }
        String s = getSlotUrl();
        LSMLogger.LOGGER.info((new StringBuilder()).append("Slot URL = ").append(s).toString());
        AsyncHttpTask.execute(this, SlotContext.newInstance(this), s, USER_AGENT);
          goto _L4
    }

    public void onAsyncHttpTaskCompleted(AsyncHttpTaskResponse asynchttptaskresponse)
    {
        if (mSlotType != SlotType.INTERSTITIAL && getSlotView() == null) goto _L2; else goto _L1
_L1:
        SlotResponse slotresponse1 = AbstractSlotResponse.newInstance(SlotContext.newInstance(this), asynchttptaskresponse.getResponseBody(), asynchttptaskresponse.getContentType());
        SlotResponse slotresponse = slotresponse1;
_L4:
        if (slotresponse != null)
        {
            break; /* Loop/switch isn't completed */
        }
        setLoadingState(LoadingState.NOT_LOADED);
_L2:
        return;
        SlotResponseException slotresponseexception;
        slotresponseexception;
        onAsyncHttpTaskFailed(slotresponseexception.getMessage(), slotresponseexception);
        slotresponse = null;
        if (true) goto _L4; else goto _L3
_L3:
        mSlotResponse = slotresponse;
        mAdNetworkQueue = new AdNetworkQueue(mSlotResponse.getNetworks(), this, getContext());
        mAdNetworkQueue.enqueueNextNetwork();
        return;
    }

    public void onAsyncHttpTaskFailed(String s, Throwable throwable)
    {
        if ((throwable instanceof AsyncHttpTaskCanceledException) || (throwable instanceof AsyncHttpTaskNetworkException))
        {
            LSMLogger.LOGGER.log(Level.WARNING, s);
        } else
        {
            LSMLogger.LOGGER.log(Level.SEVERE, s, throwable);
        }
        destroyCurrentAdapterController();
        setLoadingState(LoadingState.NOT_LOADED);
        mRefreshTimer.setDelay(30L);
        startAutoRefreshTimer(false);
        if (mSlotListener != null)
        {
            mSlotListener.onFailedToLoadSlotView(getSlotView());
        }
    }

    public void onTimerEvent(Timer timer, boolean flag)
    {
label0:
        {
            AdapterController adaptercontroller;
            boolean flag1;
label1:
            {
                if (mPaused)
                {
                    break label0;
                }
                boolean flag2;
                if (mNextAdapterController != null)
                {
                    adaptercontroller = mNextAdapterController;
                } else
                {
                    adaptercontroller = mCurrentAdapterController;
                }
                if (timer == mNotRespondingTimer && adaptercontroller != null && mLoadingState == LoadingState.LOADING)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (!flag)
                {
                    boolean flag3 = mAutoRefreshEnabled;
                    flag2 = false;
                    if (!flag3)
                    {
                        break label1;
                    }
                }
                flag2 = true;
            }
            if (timer == mRefreshTimer && flag2)
            {
                LSMLogger.LOGGER.info("Reloading an Ad...");
                loadSlot(mShowAdsWhenReady);
            } else
            if (flag1)
            {
                LSMLogger.LOGGER.warning("Current adapter is not responding, destroying...");
                adaptercontroller.onNotResponding();
                return;
            }
        }
    }

    public void pauseAutoRefreshTimer()
    {
        if (mAutoRefreshEnabled)
        {
            mRefreshTimer.pause();
        }
    }

    public void pauseSlot()
    {
        this;
        JVM INSTR monitorenter ;
        if (!mPaused)
        {
            pauseAutoRefreshTimer();
            if (mLoadingState == LoadingState.LOADING)
            {
                mNotRespondingTimer.pause();
            }
            mPaused = true;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void resumeSlot()
    {
        this;
        JVM INSTR monitorenter ;
        if (mPaused)
        {
            mPaused = false;
            startAutoRefreshTimer(false);
            if (mLoadingState == LoadingState.LOADING)
            {
                mNotRespondingTimer.start(false);
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setAutoRefreshEnabled(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        mAutoRefreshEnabled = flag;
        if (!flag) goto _L2; else goto _L1
_L1:
        startAutoRefreshTimer(false);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        mRefreshTimer.stop();
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void setCurrentAdapterController(AdapterController adaptercontroller)
    {
        mCurrentAdapterController = adaptercontroller;
    }

    public void setIntegrationType(IntegrationType integrationtype)
    {
        mIntegrationType = integrationtype;
    }

    public void setLoadingState(LoadingState loadingstate)
    {
        if (loadingstate == LoadingState.LOADING)
        {
            startNotRespondingTimer();
        } else
        {
            mNotRespondingTimer.stop();
        }
        mLoadingState = loadingstate;
    }

    public void setNextAdapterController(AdapterController adaptercontroller)
    {
        mNextAdapterController = adaptercontroller;
    }

    public void setRequestId(String s)
    {
        mRequestId = s;
    }

    public void setShowCloseButton(boolean flag)
    {
        mShowBannerCloseButton = flag;
        mShowInterstitialCloseButton = flag;
    }

    public void setSlotListener(SlotListener slotlistener)
    {
        mSlotListener = slotlistener;
    }

    public void setSlotTag(String s)
    {
        mSlotTag = s;
    }

    public void setSlotView(SlotView slotview)
    {
        mSlotViewRef = new WeakReference(slotview);
    }

    public void setTargeting(SlotTargeting slottargeting)
    {
        mTargeting = slottargeting;
    }

    public boolean shouldCancelAsyncHttpTask()
    {
        return mDestroyed;
    }

    public void showSlot()
    {
        this;
        JVM INSTR monitorenter ;
        if (mPaused || mShowAdsWhenReady) goto _L2; else goto _L1
_L1:
        if (mLoadingState != LoadingState.SHOWN) goto _L4; else goto _L3
_L3:
        LSMLogger.LOGGER.warning("Ad is already shown");
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        if (mLoadingState == LoadingState.LOADED) goto _L6; else goto _L5
_L5:
        LSMLogger.LOGGER.warning("Ad is not loaded yet");
          goto _L2
        Exception exception;
        exception;
        throw exception;
_L6:
        if (mCurrentAdapterController == null) goto _L2; else goto _L7
_L7:
        mCurrentAdapterController.showAd();
          goto _L2
    }

    public boolean slotTagIsNotValid()
    {
        return !StringUtils.containsIgnoreCase(mSlotTag, "lfstmedia.com");
    }

    public void startAutoRefreshTimer(boolean flag)
    {
        boolean flag1;
        if (flag || mAutoRefreshEnabled)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!mPaused && flag1)
        {
            mRefreshTimer.start(flag);
        }
    }


    private class LoadingState extends Enum
    {

        private static final LoadingState $VALUES[];
        public static final LoadingState LOADED;
        public static final LoadingState LOADING;
        public static final LoadingState NOT_LOADED;
        public static final LoadingState SHOWN;

        public static LoadingState valueOf(String s)
        {
            return (LoadingState)Enum.valueOf(com/lifestreet/android/lsmsdk/SlotController$LoadingState, s);
        }

        public static LoadingState[] values()
        {
            return (LoadingState[])$VALUES.clone();
        }

        static 
        {
            NOT_LOADED = new LoadingState("NOT_LOADED", 0);
            LOADING = new LoadingState("LOADING", 1);
            LOADED = new LoadingState("LOADED", 2);
            SHOWN = new LoadingState("SHOWN", 3);
            LoadingState aloadingstate[] = new LoadingState[4];
            aloadingstate[0] = NOT_LOADED;
            aloadingstate[1] = LOADING;
            aloadingstate[2] = LOADED;
            aloadingstate[3] = SHOWN;
            $VALUES = aloadingstate;
        }

        private LoadingState(String s, int i)
        {
            super(s, i);
        }
    }

}
