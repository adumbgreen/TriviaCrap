// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.ads:
//            AdView, AdListener

public final class AdWebView extends WebView
{

    private boolean mActivityStarted;
    private AdView mAdView;
    private boolean mLateCloseInterstitial;
    private boolean mRedirectInProgress;

    public AdWebView(Context context, AdView adview)
    {
        super(context.getApplicationContext());
        mActivityStarted = false;
        mRedirectInProgress = false;
        mLateCloseInterstitial = false;
        mAdView = adview;
        setBackgroundColor(0);
        setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        setWebViewClient(new AdViewClient());
        setWebChromeClient(new WebChromeClient());
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        WebSettings websettings = getSettings();
        websettings.setSupportMultipleWindows(false);
        websettings.setPluginsEnabled(true);
        websettings.setSavePassword(false);
        websettings.setSaveFormData(false);
        websettings.setJavaScriptEnabled(true);
        websettings.setJavaScriptCanOpenWindowsAutomatically(false);
        websettings.setSupportZoom(false);
        websettings.setBuiltInZoomControls(false);
        websettings.setCacheMode(2);
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final AdWebView this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return motionevent.getAction() == 2;
            }

            
            {
                this$0 = AdWebView.this;
                super();
            }
        });
    }

    public void destroy()
    {
        LSMLogger.LOGGER.info("destroy");
        setWebViewClient(new WebViewClient());
        mAdView = null;
        super.destroy();
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
        if (mActivityStarted && i == 0)
        {
            mActivityStarted = false;
            AdListener adlistener;
            if (mAdView != null)
            {
                adlistener = mAdView.getListener();
            } else
            {
                adlistener = null;
            }
            if (adlistener != null)
            {
                adlistener.onDismissScreen(mAdView);
            }
        }
    }




/*
    static boolean access$202(AdWebView adwebview, boolean flag)
    {
        adwebview.mRedirectInProgress = flag;
        return flag;
    }

*/



/*
    static boolean access$302(AdWebView adwebview, boolean flag)
    {
        adwebview.mLateCloseInterstitial = flag;
        return flag;
    }

*/


/*
    static boolean access$402(AdWebView adwebview, boolean flag)
    {
        adwebview.mActivityStarted = flag;
        return flag;
    }

*/

    private class AdViewClient extends WebViewClient
    {

        final AdWebView this$0;

        public void onPageFinished(WebView webview, String s)
        {
            AdListener adlistener;
            if (mAdView != null)
            {
                adlistener = mAdView.getListener();
            } else
            {
                adlistener = null;
            }
            if (adlistener != null)
            {
                adlistener.onReceiveAd(mAdView);
            }
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            AdListener adlistener;
            if (mAdView != null)
            {
                adlistener = mAdView.getListener();
            } else
            {
                adlistener = null;
            }
            if (adlistener != null)
            {
                adlistener.onFailedToReceiveAd(mAdView, (new StringBuilder()).append(s).append(": ").append(s1).toString());
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            LSMLogger.LOGGER.fine((new StringBuilder()).append("URL: ").append(s).toString());
            AdListener adlistener;
            if (mAdView != null)
            {
                adlistener = mAdView.getListener();
            } else
            {
                adlistener = null;
            }
            if (s != null && !"about:blank".equalsIgnoreCase(s))
            {
                boolean flag;
                boolean flag1;
                if (StringUtils.containsIgnoreCase(s, "lsm:closeInterstitialAd") || StringUtils.containsIgnoreCase(s, "lsm://#close"))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (StringUtils.containsIgnoreCase(s, "lfstmedia.com") && !StringUtils.containsIgnoreCase(s, "TESTLP.html"))
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (flag1)
                {
                    mRedirectInProgress = true;
                    (new SwallowRedirectTask(webview, this, mLateCloseInterstitial)).execute(new String[] {
                        s
                    });
                } else
                {
                    if (flag && adlistener != null)
                    {
                        if (mRedirectInProgress && !mLateCloseInterstitial)
                        {
                            mRedirectInProgress = false;
                            mLateCloseInterstitial = true;
                            return true;
                        } else
                        {
                            adlistener.onClose();
                            return true;
                        }
                    }
                    if (adlistener != null)
                    {
                        mRedirectInProgress = false;
                        adlistener.onClick();
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                        intent.addFlags(0x10000000);
                        try
                        {
                            adlistener.onPresentScreen(mAdView);
                            getContext().startActivity(intent);
                            mActivityStarted = true;
                            adlistener.onLeaveApplication(mAdView);
                        }
                        catch (ActivityNotFoundException activitynotfoundexception)
                        {
                            LSMLogger.LOGGER.log(Level.SEVERE, (new StringBuilder()).append("Activity not found for URL: ").append(s).toString(), activitynotfoundexception);
                            return true;
                        }
                        return true;
                    }
                }
            }
            return true;
        }

        private AdViewClient()
        {
            this$0 = AdWebView.this;
            super();
        }

    }

}
