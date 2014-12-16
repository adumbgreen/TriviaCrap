// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.AdRequestController;
import com.facebook.ads.internal.AdResponse;
import com.facebook.ads.internal.AdType;
import com.facebook.ads.internal.AdWebViewInterface;
import com.facebook.ads.internal.AdWebViewUtils;
import com.facebook.ads.internal.HtmlAdDataModel;
import com.facebook.ads.internal.HtmlAdHandler;
import java.lang.reflect.Method;

// Referenced classes of package com.facebook.ads:
//            Ad, AdSize, AdListener, ImpressionListener, 
//            AdError

public class AdView extends RelativeLayout
    implements Ad
{

    private static final int DEFAULT_ALPHA = 255;
    private static final String DEFAULT_ENCODING = "utf-8";
    private static final String DEFAULT_MIME_TYPE = "text/html";
    private static final int MIN_ALPHA = 229;
    private static final String TAG = com/facebook/ads/AdView.getSimpleName();
    private HtmlAdHandler adHandler;
    private AdListener adListener;
    private AdRequestController adRequestController;
    private final AdSize adSize;
    private WebView adWebView;
    private int currentAlpha;
    private ImpressionListener impListener;
    private final DisplayMetrics metrics;
    private final String placementId;
    private final ScreenStateReceiver screenStateReceiver;
    private int viewabilityThreshold;

    public AdView(Context context, String s, AdSize adsize)
    {
        super(context);
        currentAlpha = 255;
        adListener = null;
        impListener = null;
        if (adsize == null || adsize == AdSize.INTERSTITIAL)
        {
            throw new IllegalArgumentException("adSize");
        } else
        {
            placementId = s;
            adSize = adsize;
            metrics = context.getResources().getDisplayMetrics();
            screenStateReceiver = new ScreenStateReceiver();
            initializeView(context);
            adHandler = new HtmlAdHandler(adWebView, new com.facebook.ads.internal.AdHandler.ImpressionHelper() {

                final AdView this$0;

                public void afterImpressionSent()
                {
                    if (adRequestController != null)
                    {
                        adRequestController.scheduleRefresh("on imp sent");
                    }
                }

                public void onLoggingImpression()
                {
                    if (impListener != null)
                    {
                        impListener.onLoggingImpression(AdView.this);
                    }
                }

                public boolean shouldSendImpression()
                {
                    return isAdViewVisible();
                }

            
            {
                this$0 = AdView.this;
                super();
            }
            }, 1000L, context);
            registerScreenStateReceiver();
            return;
        }
    }

    private com.facebook.ads.internal.AdRequest.Callback createAdRequestCallback()
    {
        return new com.facebook.ads.internal.AdRequest.Callback() {

            final AdView this$0;

            public void onCompleted(AdResponse adresponse)
            {
                com.facebook.ads.internal.AdDataModel addatamodel;
                adHandler.cancelImpressionRetry();
                addatamodel = adresponse.getDataModel();
                if (addatamodel == null || !(addatamodel instanceof HtmlAdDataModel)) goto _L2; else goto _L1
_L1:
                adHandler.setAdDataModel((HtmlAdDataModel)addatamodel);
                updateView((HtmlAdDataModel)addatamodel);
                if (adListener != null)
                {
                    adListener.onAdLoaded(AdView.this);
                }
                viewabilityThreshold = adresponse.getViewabilityThreshold();
_L4:
                return;
_L2:
                if (addatamodel != null)
                {
                    break; /* Loop/switch isn't completed */
                }
                if (adListener != null)
                {
                    AdListener adlistener = adListener;
                    AdView adview = AdView.this;
                    AdError aderror;
                    if (adresponse.getError() != null)
                    {
                        aderror = adresponse.getError();
                    } else
                    {
                        aderror = AdError.INTERNAL_ERROR;
                    }
                    adlistener.onError(adview, aderror);
                }
                if (adRequestController != null)
                {
                    adRequestController.scheduleRefresh("on no fill");
                    return;
                }
                if (true) goto _L4; else goto _L3
_L3:
                if (adListener != null)
                {
                    adListener.onError(AdView.this, AdError.INTERNAL_ERROR);
                }
                if (adRequestController != null)
                {
                    adRequestController.scheduleRefresh("on internal error");
                    return;
                }
                if (true) goto _L4; else goto _L5
_L5:
            }

            public void onError(AdError aderror)
            {
                adHandler.cancelImpressionRetry();
                if (adListener != null)
                {
                    adListener.onError(AdView.this, aderror);
                }
            }

            
            {
                this$0 = AdView.this;
                super();
            }
        };
    }

    private void ensureAdRequestController()
    {
        if (adRequestController == null)
        {
            throw new RuntimeException("No request controller available, has the AdView been destroyed?");
        } else
        {
            return;
        }
    }

    private void initializeView(Context context)
    {
        adWebView = new WebView(context);
        adWebView.setVisibility(8);
        AdWebViewUtils.config(adWebView, new AdWebViewClient(), new AdWebViewInterface());
        addView(adWebView);
        resizeAdView();
        adRequestController = new AdRequestController(getContext(), placementId, adSize, true, AdType.HTML, createAdRequestCallback());
    }

    private boolean isAdViewVisible()
    {
        if (getVisibility() == 0 && getParent() != null && currentAlpha >= 229)
        {
            int ai[] = new int[2];
            getLocationOnScreen(ai);
            if (ai[0] >= 0 && metrics.widthPixels - ai[0] >= (int)Math.ceil((float)adSize.getWidth() * metrics.density))
            {
                int i = (int)Math.ceil((float)adSize.getHeight() * metrics.density);
                int j = (int)(((double)i * (100D - (double)viewabilityThreshold)) / 100D);
                if ((ai[1] >= 0 || Math.abs(ai[1]) <= j) && (i + ai[1]) - metrics.heightPixels <= j)
                {
                    return true;
                }
            }
        }
        return false;
    }

    private void registerScreenStateReceiver()
    {
        IntentFilter intentfilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        getContext().registerReceiver(screenStateReceiver, intentfilter);
    }

    private void resizeAdView()
    {
        if (adWebView != null)
        {
            int i;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            if ((int)((float)metrics.widthPixels / metrics.density) >= adSize.getWidth())
            {
                i = metrics.widthPixels;
            } else
            {
                i = (int)Math.ceil((float)adSize.getWidth() * metrics.density);
            }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(i, (int)Math.ceil((float)adSize.getHeight() * metrics.density));
            layoutparams.addRule(14);
            adWebView.setLayoutParams(layoutparams);
        }
    }

    private void unregisterScreenStateReceiver()
    {
        getContext().unregisterReceiver(screenStateReceiver);
    }

    private void updateView(HtmlAdDataModel htmladdatamodel)
    {
        if (adWebView != null)
        {
            adWebView.loadUrl("about:blank");
            adWebView.clearCache(true);
            adWebView.setVisibility(8);
            adWebView.loadDataWithBaseURL("https://www.facebook.com/", htmladdatamodel.getMarkup(), "text/html", "utf-8", null);
            adWebView.setVisibility(0);
        }
    }

    public void destroy()
    {
        if (adRequestController != null)
        {
            adRequestController.destroy();
            adRequestController = null;
        }
        adHandler.cancelImpressionRetry();
        adHandler.destroy();
        if (adWebView != null)
        {
            unregisterScreenStateReceiver();
            try
            {
                android/webkit/WebView.getMethod("onPause", new Class[0]).invoke(adWebView, new Object[0]);
            }
            catch (Exception exception) { }
            removeView(adWebView);
            adWebView.destroy();
            adWebView = null;
        }
    }

    public void disableAutoRefresh()
    {
        adRequestController.disableRefresh();
    }

    public void loadAd()
    {
        ensureAdRequestController();
        adRequestController.loadAd();
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        resizeAdView();
    }

    protected boolean onSetAlpha(int i)
    {
        currentAlpha = i;
        return super.onSetAlpha(i);
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
        if (adRequestController != null)
        {
            adRequestController.onWindowVisibilityChanged(i);
        }
        if (i == 0)
        {
            adHandler.scheduleImpressionRetry();
            return;
        } else
        {
            adHandler.cancelImpressionRetry();
            return;
        }
    }

    public void setAdListener(AdListener adlistener)
    {
        adListener = adlistener;
    }

    public void setImpressionListener(ImpressionListener impressionlistener)
    {
        impListener = impressionlistener;
    }









/*
    static int access$802(AdView adview, int i)
    {
        adview.viewabilityThreshold = i;
        return i;
    }

*/


    private class ScreenStateReceiver extends BroadcastReceiver
    {

        final AdView this$0;

        public void onReceive(Context context, Intent intent)
        {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()))
            {
                adHandler.cancelImpressionRetry();
                return;
            } else
            {
                adHandler.scheduleImpressionRetry();
                return;
            }
        }

        private ScreenStateReceiver()
        {
            this$0 = AdView.this;
            super();
        }

    }


    private class AdWebViewClient extends WebViewClient
    {

        final AdView this$0;

        public void onLoadResource(WebView webview, String s)
        {
            adHandler.activateAd();
        }

        public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            String s = AdSettings.getUrlPrefix();
            if (!StringUtils.isNullOrEmpty(s) && s.endsWith(".sb"))
            {
                sslerrorhandler.proceed();
                return;
            } else
            {
                sslerrorhandler.cancel();
                return;
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (adListener != null)
            {
                adListener.onAdClicked(AdView.this);
            }
            Uri uri = Uri.parse(s);
            AdAction adaction = AdActionFactory.getAdAction(getContext(), uri);
            Map map = ((HtmlAdDataModel)adHandler.getAdDataModel()).getDataModelMap();
            map.put("adInterstitialUniqueId", UUID.randomUUID().toString());
            if (adaction != null)
            {
                try
                {
                    adaction.execute(map);
                }
                catch (Exception exception)
                {
                    Log.e(AdView.TAG, "Error executing action", exception);
                }
            }
            return true;
        }

        private AdWebViewClient()
        {
            this$0 = AdView.this;
            super();
        }

    }

}
