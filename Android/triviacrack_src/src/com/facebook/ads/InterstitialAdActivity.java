// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.AdWebViewInterface;
import com.facebook.ads.internal.AdWebViewUtils;
import com.facebook.ads.internal.HtmlAdDataModel;
import com.facebook.ads.internal.HtmlAdHandler;

public class InterstitialAdActivity extends Activity
{

    private static final int AD_WEBVIEW_ID = 0x186a1;
    private static final String DATA_MODEL_KEY = "dataModel";
    private static final String LAST_REQUESTED_ORIENTATION_KEY = "lastRequestedOrientation";
    private static final int ORIENTATION_REVERSE_LANDSCAPE = 8;
    private static final int ORIENTATION_REVERSE_PORTRAIT = 9;
    private static final String TAG = com/facebook/ads/InterstitialAdActivity.getSimpleName();
    private HtmlAdHandler adHandler;
    private WebView adWebView;
    private HtmlAdDataModel dataModel;
    private int displayHeight;
    private int displayWidth;
    private boolean isRestart;
    private int lastRequestedOrientation;
    private String placementId;

    public InterstitialAdActivity()
    {
        isRestart = false;
    }

    private void loadAdFromIntentOrSavedState(Intent intent, Bundle bundle)
    {
        if (bundle != null && bundle.containsKey("dataModel"))
        {
            dataModel = HtmlAdDataModel.fromBundle(bundle.getBundle("dataModel"));
            if (dataModel != null)
            {
                adWebView.loadDataWithBaseURL("https://www.facebook.com/", dataModel.getMarkup(), "text/html", "utf-8", null);
            }
            lastRequestedOrientation = bundle.getInt("lastRequestedOrientation", -1);
            placementId = bundle.getString("adInterstitialUniqueId");
            isRestart = true;
        } else
        {
            displayWidth = intent.getIntExtra("displayWidth", 0);
            displayHeight = intent.getIntExtra("displayHeight", 0);
            placementId = intent.getStringExtra("adInterstitialUniqueId");
            dataModel = HtmlAdDataModel.fromIntentExtra(intent);
            if (dataModel != null)
            {
                adHandler.setAdDataModel(dataModel);
                adWebView.loadDataWithBaseURL("https://www.facebook.com/", dataModel.getMarkup(), "text/html", "utf-8", null);
                return;
            }
        }
    }

    private void sendBroadcastForEvent(String s)
    {
        Intent intent = new Intent(s);
        intent.putExtra("adInterstitialUniqueId", placementId);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    private void setScreenOrientation(int i, int j)
    {
        boolean flag;
        int k;
        if (j >= i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = ((WindowManager)getSystemService("window")).getDefaultDisplay().getRotation();
        if (flag)
        {
            switch (k)
            {
            default:
                setRequestedOrientation(1);
                return;

            case 1: // '\001'
            case 2: // '\002'
                setRequestedOrientation(9);
                break;
            }
            return;
        }
        switch (k)
        {
        default:
            setRequestedOrientation(0);
            return;

        case 2: // '\002'
        case 3: // '\003'
            setRequestedOrientation(8);
            break;
        }
    }

    public void finish()
    {
        adHandler.cancelImpressionRetry();
        adWebView.loadUrl("about:blank");
        adWebView.clearCache(true);
        sendBroadcastForEvent("com.facebook.ads.interstitial.dismissed");
        super.finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        RelativeLayout relativelayout = new RelativeLayout(this);
        adWebView = new WebView(this);
        adWebView.setId(0x186a1);
        adWebView.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        AdWebViewUtils.config(adWebView, new AdWebViewClient(), new AdWebViewInterface());
        relativelayout.addView(adWebView);
        adHandler = new HtmlAdHandler(adWebView, new com.facebook.ads.internal.AdHandler.ImpressionHelper() {

            final InterstitialAdActivity this$0;

            public void afterImpressionSent()
            {
            }

            public void onLoggingImpression()
            {
                sendBroadcastForEvent("com.facebook.ads.interstitial.impression.logged");
            }

            public boolean shouldSendImpression()
            {
                return true;
            }

            
            {
                this$0 = InterstitialAdActivity.this;
                super();
            }
        }, 1000L, this);
        setContentView(relativelayout, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        loadAdFromIntentOrSavedState(getIntent(), bundle);
        sendBroadcastForEvent("com.facebook.ads.interstitial.displayed");
    }

    public void onRestart()
    {
        super.onRestart();
        isRestart = true;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (dataModel != null)
        {
            bundle.putBundle("dataModel", dataModel.saveToBundle());
        }
        bundle.putInt("lastRequestedOrientation", lastRequestedOrientation);
        bundle.putString("adInterstitialUniqueId", placementId);
    }

    public void onStart()
    {
        super.onStart();
        if (isRestart) goto _L2; else goto _L1
_L1:
        setScreenOrientation(displayWidth, displayHeight);
_L4:
        isRestart = false;
        return;
_L2:
        if (lastRequestedOrientation >= 0)
        {
            setRequestedOrientation(lastRequestedOrientation);
            lastRequestedOrientation = -1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setRequestedOrientation(int i)
    {
        lastRequestedOrientation = i;
        super.setRequestedOrientation(i);
    }





    private class AdWebViewClient extends WebViewClient
    {

        private static final String FBAD_CLOSE = "close";
        final InterstitialAdActivity this$0;

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
            Uri uri = Uri.parse(s);
            if ("fbad".equals(uri.getScheme()) && "close".equals(uri.getAuthority()))
            {
                finish();
            } else
            {
                sendBroadcastForEvent("com.facebook.ads.interstitial.clicked");
                AdAction adaction = AdActionFactory.getAdAction(InterstitialAdActivity.this, uri);
                if (adaction != null)
                {
                    try
                    {
                        adaction.execute(null);
                    }
                    catch (Exception exception)
                    {
                        Log.e(InterstitialAdActivity.TAG, "Error executing action", exception);
                        return true;
                    }
                    return true;
                }
            }
            return true;
        }

        private AdWebViewClient()
        {
            this$0 = InterstitialAdActivity.this;
            super();
        }

    }

}
