// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Handler;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.facebook.ads.internal:
//            AdClientEvent, AdClientEventManager, AdRequest, AdType, 
//            AdResponse

public class AdRequestController
{

    private static final String ANDROID_PERMISSION_ACCESS_NETWORK_STATE = "android.permission.ACCESS_NETWORK_STATE";
    private static final int DEFAULT_REFRESH_THRESHOLD_MILLIS = 20000;
    private static final int MIN_REFRESH_INTERVAL_MILLIS = 30000;
    private static Map lastRequestTimes = new ConcurrentHashMap();
    private final AdSize adSize;
    private final AdType adType;
    private final AdRequest.Callback adViewRequestCallback;
    private final Context context;
    private int currentVisibility;
    private final Handler handler;
    private boolean initialLoadFinished;
    private AsyncTask lastRequest;
    private final String placementId;
    private int refreshInterval;
    private final Runnable refreshRunnable;
    private volatile boolean refreshScheduled;
    private int refreshThreshold;
    private final ScreenStateReceiver screenStateReceiver;
    private boolean shouldRefresh;

    public AdRequestController(Context context1, String s, AdSize adsize, boolean flag, AdType adtype, AdRequest.Callback callback)
    {
        refreshInterval = 30000;
        refreshThreshold = 20000;
        initialLoadFinished = false;
        refreshScheduled = false;
        currentVisibility = 8;
        if (callback == null)
        {
            throw new IllegalArgumentException("adViewRequestCallback");
        } else
        {
            context = context1;
            placementId = s;
            adSize = adsize;
            shouldRefresh = flag;
            adType = adtype;
            adViewRequestCallback = callback;
            screenStateReceiver = new ScreenStateReceiver();
            handler = new Handler();
            refreshRunnable = new Runnable() {

                final AdRequestController this$0;

                public void run()
                {
                    refreshScheduled = false;
                    loadAd();
                }

            
            {
                this$0 = AdRequestController.this;
                super();
            }
            };
            registerScreenStateReceiver();
            return;
        }
    }

    private void cancelRefresh(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = refreshScheduled;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        handler.removeCallbacks(refreshRunnable);
        refreshScheduled = false;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private boolean isNetworkConnected()
    {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0)
        {
            return true;
        }
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean flag;
        if (networkinfo != null && networkinfo.isConnected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    private void registerScreenStateReceiver()
    {
        if (!shouldRefresh)
        {
            return;
        } else
        {
            IntentFilter intentfilter = new IntentFilter("android.intent.action.SCREEN_ON");
            intentfilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(screenStateReceiver, intentfilter);
            return;
        }
    }

    private void unregisterScreenStateReceiver()
    {
        if (!shouldRefresh)
        {
            return;
        }
        try
        {
            context.unregisterReceiver(screenStateReceiver);
            return;
        }
        catch (Exception exception)
        {
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(exception));
        }
    }

    public void destroy()
    {
        unregisterScreenStateReceiver();
        cancelRefresh("destroy");
    }

    public void disableRefresh()
    {
        shouldRefresh = false;
    }

    public void loadAd()
    {
        this;
        JVM INSTR monitorenter ;
        long l = System.currentTimeMillis();
        if (!shouldRefresh) goto _L2; else goto _L1
_L1:
        Long long1 = (Long)lastRequestTimes.get(placementId);
        if (long1 == null) goto _L2; else goto _L3
_L3:
        if (l >= long1.longValue() + (long)refreshThreshold) goto _L2; else goto _L4
_L4:
        adViewRequestCallback.onError(AdError.LOAD_TOO_FREQUENTLY);
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (refreshScheduled)
        {
            cancelRefresh(null);
        }
        if (lastRequest != null && lastRequest.getStatus() != android.os.AsyncTask.Status.FINISHED)
        {
            lastRequest.cancel(true);
        }
        if (isNetworkConnected())
        {
            break MISSING_BLOCK_LABEL_161;
        }
        refreshInterval = 30000;
        refreshThreshold = 20000;
        adViewRequestCallback.onError(new AdError(-1, "network unavailable"));
        scheduleRefresh("no network connection");
          goto _L5
        Exception exception;
        exception;
        throw exception;
        if (shouldRefresh)
        {
            lastRequestTimes.put(placementId, Long.valueOf(l));
        }
        lastRequest = (new AdRequest(context, placementId, adSize, adType, AdSettings.isTestMode(context), new AdRequest.Callback() {

            final AdRequestController this$0;

            public void onCompleted(AdResponse adresponse)
            {
                refreshInterval = adresponse.getRefreshIntervalMillis();
                refreshThreshold = adresponse.getRefreshThresholdMillis();
                adViewRequestCallback.onCompleted(adresponse);
                initialLoadFinished = true;
            }

            public void onError(AdError aderror)
            {
                adViewRequestCallback.onError(aderror);
                initialLoadFinished = true;
                scheduleRefresh("onError");
            }

            
            {
                this$0 = AdRequestController.this;
                super();
            }
        })).executeAsync();
          goto _L5
    }

    public void onWindowVisibilityChanged(int i)
    {
        currentVisibility = i;
        if (i == 0)
        {
            if (initialLoadFinished)
            {
                scheduleRefresh("onWindowVisibilityChanged");
            }
            return;
        } else
        {
            cancelRefresh("onWindowVisibilityChanged");
            return;
        }
    }

    public void scheduleRefresh(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = shouldRefresh;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (refreshInterval > 0 && !refreshScheduled)
        {
            handler.postDelayed(refreshRunnable, refreshInterval);
            refreshScheduled = true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }



/*
    static boolean access$102(AdRequestController adrequestcontroller, boolean flag)
    {
        adrequestcontroller.refreshScheduled = flag;
        return flag;
    }

*/



/*
    static boolean access$302(AdRequestController adrequestcontroller, boolean flag)
    {
        adrequestcontroller.initialLoadFinished = flag;
        return flag;
    }

*/


/*
    static int access$402(AdRequestController adrequestcontroller, int i)
    {
        adrequestcontroller.refreshInterval = i;
        return i;
    }

*/


/*
    static int access$502(AdRequestController adrequestcontroller, int i)
    {
        adrequestcontroller.refreshThreshold = i;
        return i;
    }

*/



    private class ScreenStateReceiver extends BroadcastReceiver
    {

        final AdRequestController this$0;

        public void onReceive(Context context1, Intent intent)
        {
            String s = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(s))
            {
                cancelRefresh(intent.getAction());
            } else
            if ("android.intent.action.SCREEN_ON".equals(s) && currentVisibility == 0)
            {
                scheduleRefresh(intent.getAction());
                return;
            }
        }

        private ScreenStateReceiver()
        {
            this$0 = AdRequestController.this;
            super();
        }

    }

}
