// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.BitmapFactory;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.amazon.device.ads:
//            ThreadUtils, WebViewFactory, InternalAdRegistration, IInternalAdRegistration, 
//            DeviceInfo, AndroidTargetUtils, Settings, Log, 
//            StringUtils, WebUtils

class InAppBrowser
    implements AdActivity.IAdActivityAdapter
{

    protected static final int BUTTON_SIZE_DP = 50;
    private static final String CONTENT_DESCRIPTION_BACK_BUTTON = "inAppBrowserBackButton";
    private static final String CONTENT_DESCRIPTION_BUTTON_LAYOUT = "inAppBrowserButtonLayout";
    private static final String CONTENT_DESCRIPTION_CLOSE_BUTTON = "inAppBrowserCloseButton";
    private static final String CONTENT_DESCRIPTION_FORWARD_BUTTON = "inAppBrowserForwardButton";
    private static final String CONTENT_DESCRIPTION_HORZ_RULE = "inAppBrowserHorizontalRule";
    private static final String CONTENT_DESCRIPTION_MAIN_LAYOUT = "inAppBrowserMainLayout";
    private static final String CONTENT_DESCRIPTION_OPEN_EXT_BRWSR_BUTTON = "inAppBrowserOpenExternalBrowserButton";
    private static final String CONTENT_DESCRIPTION_REFRESH_BUTTON = "inAppBrowserRefreshButton";
    private static final String CONTENT_DESCRIPTION_RELATIVE_LAYOUT = "inAppBrowserRelativeLayout";
    private static final String CONTENT_DESCRIPTION_WEB_VIEW = "inAppBrowserWebView";
    protected static final int HORIZONTAL_RULE_SIZE_DP = 3;
    protected static final String LOG_TAG = com/amazon/device/ads/InAppBrowser.getSimpleName();
    protected static final String SHOW_OPEN_EXTERNAL_BROWSER_BTN = "extra_open_btn";
    protected static final String URL_EXTRA = "extra_url";
    private Activity activity;
    private ImageButton browserBackButton;
    private ImageButton browserForwardButton;
    private final AtomicBoolean buttonsCreated = new AtomicBoolean(false);
    private ImageButton closeButton;
    private ImageButton openExternalBrowserButton;
    private ImageButton refreshButton;
    private boolean showOpenExternalBrowserButton;
    private WebView webView;

    InAppBrowser()
    {
    }

    private ImageButton createButton(String s, int i, int j, int k, int l)
    {
        ImageButton imagebutton = new ImageButton(activity);
        imagebutton.setImageBitmap(BitmapFactory.decodeFile(s));
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(k, l);
        layoutparams.addRule(i, j);
        layoutparams.addRule(12);
        imagebutton.setLayoutParams(layoutparams);
        imagebutton.setBackgroundColor(0);
        imagebutton.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
        return imagebutton;
    }

    private void enableCookies()
    {
        CookieSyncManager.createInstance(activity);
        CookieSyncManager.getInstance().startSync();
    }

    private void initialize(Intent intent)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getMetrics(displaymetrics);
        float f = displaymetrics.density;
        int i = (int)(0.5F + 50F * f);
        int j = (int)(0.5F + f * 3F);
        byte byte0;
        int k;
        RelativeLayout relativelayout;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        View view;
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        android.widget.RelativeLayout.LayoutParams layoutparams2;
        RelativeLayout relativelayout1;
        LinearLayout linearlayout;
        if (showOpenExternalBrowserButton)
        {
            byte0 = 5;
        } else
        {
            byte0 = 4;
        }
        k = Math.min(displaymetrics.widthPixels / byte0, i * 2);
        relativelayout = createRelativeLayout(activity);
        relativelayout.setContentDescription("inAppBrowserButtonLayout");
        relativelayout.setId(10280);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, i + j);
        layoutparams.addRule(12);
        relativelayout.setLayoutParams(layoutparams);
        relativelayout.setBackgroundColor(0xfff0f0f0);
        ThreadUtils.executeAsyncTask(new LoadButtonsTask(intent, relativelayout, k, i), new Void[0]);
        view = new View(activity);
        view.setContentDescription("inAppBrowserHorizontalRule");
        view.setBackgroundColor(0xffcccccc);
        layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, j);
        layoutparams1.addRule(10);
        view.setLayoutParams(layoutparams1);
        relativelayout.addView(view);
        webView = WebViewFactory.getInstance().createWebView(activity);
        webView.getSettings().setUserAgentString((new StringBuilder()).append(InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString()).append("-inAppBrowser").toString());
        webView.setContentDescription("inAppBrowserWebView");
        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams2.addRule(2, relativelayout.getId());
        webView.setLayoutParams(layoutparams2);
        relativelayout1 = new RelativeLayout(activity);
        relativelayout1.setContentDescription("inAppBrowserRelativeLayout");
        relativelayout1.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -2));
        relativelayout1.addView(webView);
        relativelayout1.addView(relativelayout);
        linearlayout = new LinearLayout(activity);
        linearlayout.setContentDescription("inAppBrowserMainLayout");
        linearlayout.setOrientation(1);
        linearlayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1));
        linearlayout.addView(relativelayout1);
        activity.setContentView(linearlayout);
    }

    private void initializeButtons(Intent intent)
    {
        browserBackButton.setOnClickListener(new android.view.View.OnClickListener() {

            final InAppBrowser this$0;

            public void onClick(View view)
            {
                if (webView.canGoBack())
                {
                    webView.goBack();
                }
            }

            
            {
                this$0 = InAppBrowser.this;
                super();
            }
        });
        browserForwardButton.setOnClickListener(new android.view.View.OnClickListener() {

            final InAppBrowser this$0;

            public void onClick(View view)
            {
                if (webView.canGoForward())
                {
                    webView.goForward();
                }
            }

            
            {
                this$0 = InAppBrowser.this;
                super();
            }
        });
        refreshButton.setOnClickListener(new android.view.View.OnClickListener() {

            final InAppBrowser this$0;

            public void onClick(View view)
            {
                webView.reload();
            }

            
            {
                this$0 = InAppBrowser.this;
                super();
            }
        });
        closeButton.setOnClickListener(new android.view.View.OnClickListener() {

            final InAppBrowser this$0;

            public void onClick(View view)
            {
                activity.finish();
            }

            
            {
                this$0 = InAppBrowser.this;
                super();
            }
        });
        if (showOpenExternalBrowserButton)
        {
            final String originalUrl = intent.getStringExtra("extra_url");
            openExternalBrowserButton.setOnClickListener(new android.view.View.OnClickListener() {

                final InAppBrowser this$0;
                final String val$originalUrl;

                public void onClick(View view)
                {
                    String s = webView.getUrl();
                    if (s == null)
                    {
                        Log.w(InAppBrowser.LOG_TAG, "The current URL is null. Reverting to the original URL for external browser.");
                        s = originalUrl;
                    }
                    WebUtils.launchActivityForIntentLink(s, webView.getContext());
                }

            
            {
                this$0 = InAppBrowser.this;
                originalUrl = s;
                super();
            }
            });
        }
    }

    private void initializeWebView(Intent intent)
    {
        WebViewFactory.getInstance().setJavaScriptEnabledForWebView(true, webView, LOG_TAG);
        webView.loadUrl(intent.getStringExtra("extra_url"));
        webView.setWebViewClient(new WebViewClient() {

            final InAppBrowser this$0;

            public void onReceivedError(WebView webview, int i, String s, String s1)
            {
                Log.w(InAppBrowser.LOG_TAG, "InApp Browser error: %s", new Object[] {
                    s
                });
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                String s1;
                if (!StringUtils.isNullOrWhiteSpace(s))
                {
                    if (!(s1 = WebUtils.getScheme(s)).equals("http") && !s1.equals("https"))
                    {
                        return WebUtils.launchActivityForIntentLink(s, activity);
                    }
                }
                return false;
            }

            
            {
                this$0 = InAppBrowser.this;
                super();
            }
        });
        webView.setWebChromeClient(new WebChromeClient() {

            final InAppBrowser this$0;

            public void onProgressChanged(WebView webview, int i)
            {
                Activity activity1 = (Activity)webview.getContext();
                activity1.setTitle("Loading...");
                activity1.setProgress(i * 100);
                if (i == 100)
                {
                    activity1.setTitle(webview.getUrl());
                }
                updateNavigationButtons(webview);
            }

            
            {
                this$0 = InAppBrowser.this;
                super();
            }
        });
    }

    private void updateNavigationButtons(WebView webview)
    {
label0:
        {
            if (browserBackButton != null && browserForwardButton != null)
            {
                if (webview.canGoBack())
                {
                    AndroidTargetUtils.setImageButtonAlpha(browserBackButton, 255);
                } else
                {
                    AndroidTargetUtils.setImageButtonAlpha(browserBackButton, 102);
                }
                if (!webview.canGoForward())
                {
                    break label0;
                }
                AndroidTargetUtils.setImageButtonAlpha(browserForwardButton, 255);
            }
            return;
        }
        AndroidTargetUtils.setImageButtonAlpha(browserForwardButton, 102);
    }

    protected boolean canPauseWebViewTimers()
    {
        return webView != null && getShouldPauseWebViewTimers();
    }

    protected boolean canResumeWebViewTimers()
    {
        return webView != null && getShouldPauseWebViewTimers();
    }

    RelativeLayout createRelativeLayout(Activity activity1)
    {
        return new RelativeLayout(activity1);
    }

    void getMetrics(DisplayMetrics displaymetrics)
    {
        ((WindowManager)activity.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
    }

    protected boolean getShouldPauseWebViewTimers()
    {
        return Settings.getInstance().getBoolean("shouldPauseWebViewTimersInWebViewRelatedActivities", false);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getMetrics(displaymetrics);
        int i = (int)(0.5F + 50F * displaymetrics.density);
        byte byte0;
        int j;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (showOpenExternalBrowserButton)
        {
            byte0 = 5;
        } else
        {
            byte0 = 4;
        }
        j = Math.min(displaymetrics.widthPixels / byte0, i * 2);
        Log.d(LOG_TAG, (new StringBuilder()).append("Width: ").append(displaymetrics.widthPixels).append(" ButtonWidth: ").append(j).toString());
        layoutparams = new android.widget.RelativeLayout.LayoutParams(j, i);
        if (browserBackButton != null)
        {
            layoutparams.addRule(9);
            layoutparams.addRule(12);
            browserBackButton.setLayoutParams(layoutparams);
        }
        if (browserForwardButton != null)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(j, i);
            layoutparams1.addRule(1, browserBackButton.getId());
            layoutparams1.addRule(12);
            browserForwardButton.setLayoutParams(layoutparams1);
        }
        if (closeButton != null)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(j, i);
            layoutparams2.addRule(11);
            layoutparams2.addRule(12);
            closeButton.setLayoutParams(layoutparams2);
        }
        if (openExternalBrowserButton != null)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams3 = new android.widget.RelativeLayout.LayoutParams(j, i);
            layoutparams3.addRule(1, browserForwardButton.getId());
            layoutparams3.addRule(12);
            openExternalBrowserButton.setLayoutParams(layoutparams3);
            if (refreshButton != null)
            {
                android.widget.RelativeLayout.LayoutParams layoutparams4 = new android.widget.RelativeLayout.LayoutParams(j, i);
                layoutparams4.addRule(1, openExternalBrowserButton.getId());
                layoutparams4.addRule(12);
                refreshButton.setLayoutParams(layoutparams4);
            }
        } else
        if (refreshButton != null)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams5 = new android.widget.RelativeLayout.LayoutParams(j, i);
            layoutparams5.addRule(1, browserForwardButton.getId());
            layoutparams5.addRule(12);
            refreshButton.setLayoutParams(layoutparams5);
            return;
        }
    }

    public void onCreate()
    {
        activity.getWindow().requestFeature(2);
        activity.getWindow().setFeatureInt(2, -1);
        Intent intent = activity.getIntent();
        showOpenExternalBrowserButton = intent.getBooleanExtra("extra_open_btn", false);
        initialize(intent);
        initializeWebView(intent);
        enableCookies();
    }

    public void onPause()
    {
        Log.d(LOG_TAG, "onPause");
        pauseWebView();
        if (canPauseWebViewTimers())
        {
            webView.pauseTimers();
        }
        CookieSyncManager.getInstance().stopSync();
    }

    public void onResume()
    {
        Log.d(LOG_TAG, "onResume");
        resumeWebView();
        if (canResumeWebViewTimers())
        {
            webView.resumeTimers();
        }
        CookieSyncManager.getInstance().startSync();
    }

    public void onStop()
    {
    }

    void pauseWebView()
    {
        webView.onPause();
    }

    public void preOnCreate()
    {
    }

    void resumeWebView()
    {
        webView.onResume();
    }

    public void setActivity(Activity activity1)
    {
        activity = activity1;
    }









/*
    static ImageButton access$302(InAppBrowser inappbrowser, ImageButton imagebutton)
    {
        inappbrowser.browserBackButton = imagebutton;
        return imagebutton;
    }

*/




/*
    static ImageButton access$502(InAppBrowser inappbrowser, ImageButton imagebutton)
    {
        inappbrowser.browserForwardButton = imagebutton;
        return imagebutton;
    }

*/



/*
    static ImageButton access$602(InAppBrowser inappbrowser, ImageButton imagebutton)
    {
        inappbrowser.closeButton = imagebutton;
        return imagebutton;
    }

*/




/*
    static ImageButton access$802(InAppBrowser inappbrowser, ImageButton imagebutton)
    {
        inappbrowser.openExternalBrowserButton = imagebutton;
        return imagebutton;
    }

*/



/*
    static ImageButton access$902(InAppBrowser inappbrowser, ImageButton imagebutton)
    {
        inappbrowser.refreshButton = imagebutton;
        return imagebutton;
    }

*/

    private class LoadButtonsTask extends AsyncTask
    {

        private final int buttonHeight;
        private final int buttonWidth;
        private final Intent intent;
        private final ViewGroup layout;
        final InAppBrowser this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient Void doInBackground(Void avoid[])
        {
            browserBackButton = createButton(Assets.getInstance().getFilePath("amazon_ads_leftarrow.png"), 9, -1, buttonWidth, buttonHeight);
            browserBackButton.setContentDescription("inAppBrowserBackButton");
            browserBackButton.setId(10537);
            browserForwardButton = createButton(Assets.getInstance().getFilePath("amazon_ads_rightarrow.png"), 1, browserBackButton.getId(), buttonWidth, buttonHeight);
            browserForwardButton.setContentDescription("inAppBrowserForwardButton");
            browserForwardButton.setId(10794);
            closeButton = createButton(Assets.getInstance().getFilePath("amazon_ads_close.png"), 11, -1, buttonWidth, buttonHeight);
            closeButton.setContentDescription("inAppBrowserCloseButton");
            if (showOpenExternalBrowserButton)
            {
                openExternalBrowserButton = createButton(Assets.getInstance().getFilePath("amazon_ads_open_external_browser.png"), 1, browserForwardButton.getId(), buttonWidth, buttonHeight);
                openExternalBrowserButton.setContentDescription("inAppBrowserOpenExternalBrowserButton");
                openExternalBrowserButton.setId(10795);
                refreshButton = createButton(Assets.getInstance().getFilePath("amazon_ads_refresh.png"), 1, openExternalBrowserButton.getId(), buttonWidth, buttonHeight);
            } else
            {
                refreshButton = createButton(Assets.getInstance().getFilePath("amazon_ads_refresh.png"), 1, browserForwardButton.getId(), buttonWidth, buttonHeight);
            }
            refreshButton.setContentDescription("inAppBrowserRefreshButton");
            return null;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Void)obj);
        }

        protected void onPostExecute(Void void1)
        {
            layout.addView(browserBackButton);
            layout.addView(browserForwardButton);
            layout.addView(refreshButton);
            layout.addView(closeButton);
            if (showOpenExternalBrowserButton)
            {
                layout.addView(openExternalBrowserButton);
            }
            initializeButtons(intent);
            buttonsCreated.set(true);
        }

        public LoadButtonsTask(Intent intent1, ViewGroup viewgroup, int i, int j)
        {
            this$0 = InAppBrowser.this;
            super();
            intent = intent1;
            layout = viewgroup;
            buttonWidth = i;
            buttonHeight = j;
        }
    }

}
