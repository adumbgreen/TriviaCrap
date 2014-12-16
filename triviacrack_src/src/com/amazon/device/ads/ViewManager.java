// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.amazon.device.ads:
//            ThreadUtils, Log, WebViewFactory, AndroidTargetUtils, 
//            PreloadCallback

class ViewManager
{

    private static final String CONTENT_DESCRIPTION_NEW_WEBVIEW = "newWebView";
    private static final String CONTENT_DESCRIPTION_ORIGINAL_WEBVIEW = "originalWebView";
    private static final String CONTENT_DESCRIPTION_PRELOADED_WEBVIEW = "preloadedWebView";
    private static final String LOGTAG = com/amazon/device/ads/ViewManager.getSimpleName();
    private WebView currentWebView;
    private final Set javascriptInterfaceNames = new HashSet();
    private android.view.View.OnKeyListener keyListener;
    private final ViewGroup parent;
    private WebView preloadedWebView;
    private WebView stashedWebView;
    private WebViewClient webViewClient;
    private int webViewHeight;

    public ViewManager(ViewGroup viewgroup)
    {
        webViewHeight = -1;
        parent = viewgroup;
    }

    private transient void destroyWebViews(final WebView webViews[])
    {
        ThreadUtils.executeOnMainThread(new Runnable() {

            final ViewManager this$0;
            final WebView val$webViews[];

            public void run()
            {
                WebView awebview[] = webViews;
                int i = awebview.length;
                int j = 0;
                while (j < i) 
                {
                    WebView webview = awebview[j];
                    if (webview != null)
                    {
                        if (webview.getParent() != null)
                        {
                            ((ViewGroup)webview.getParent()).removeView(webview);
                        }
                        try
                        {
                            webview.destroy();
                        }
                        catch (IllegalArgumentException illegalargumentexception)
                        {
                            Log.w("Caught an IllegalArgumentException while destroying a WebView: %s", illegalargumentexception.getMessage());
                        }
                    }
                    j++;
                }
            }

            
            {
                this$0 = ViewManager.this;
                webViews = awebview;
                super();
            }
        });
    }

    private WebView getCurrentWebView()
    {
        if (currentWebView == null)
        {
            WebView webview = createWebView(getContext(parent));
            if (!validateWebView(webview))
            {
                throw new IllegalStateException("Could not create WebView");
            }
            webview.setContentDescription("originalWebView");
            setWebView(webview, false);
        }
        return currentWebView;
    }

    private WebView getPreloadedWebView()
    {
        if (preloadedWebView == null)
        {
            preloadedWebView = createWebView(parent.getContext());
            preloadedWebView.setContentDescription("preloadedWebView");
        }
        return preloadedWebView;
    }

    private boolean isInitialized()
    {
        return currentWebView != null;
    }

    public void addJavascriptInterface(Object obj, boolean flag, String s)
    {
        Log.d(LOGTAG, "Add JavaScript Interface %s", new Object[] {
            s
        });
        javascriptInterfaceNames.add(s);
        if (flag)
        {
            getPreloadedWebView().addJavascriptInterface(obj, s);
            return;
        } else
        {
            getCurrentWebView().addJavascriptInterface(obj, s);
            return;
        }
    }

    void addViewToParent(WebView webview)
    {
        parent.addView(webview);
    }

    WebView createWebView(Context context)
    {
        WebView webview = WebViewFactory.getInstance().createWebView(context);
        if (!WebViewFactory.getInstance().setJavaScriptEnabledForWebView(true, webview, LOGTAG))
        {
            return null;
        } else
        {
            webview.setScrollContainer(false);
            webview.setBackgroundColor(0);
            webview.setVerticalScrollBarEnabled(false);
            webview.setHorizontalScrollBarEnabled(false);
            webview.setWebChromeClient(new AdWebChromeClient());
            webview.getSettings().setDomStorageEnabled(true);
            return webview;
        }
    }

    public void destroy()
    {
        WebView awebview[] = new WebView[3];
        awebview[0] = currentWebView;
        awebview[1] = stashedWebView;
        awebview[2] = preloadedWebView;
        destroyWebViews(awebview);
        currentWebView = null;
        stashedWebView = null;
        preloadedWebView = null;
    }

    Context getContext(View view)
    {
        return view.getContext();
    }

    public void initialize()
    {
        getCurrentWebView();
    }

    public boolean isCurrentView(View view)
    {
        return view.equals(currentWebView);
    }

    public void listenForKey(android.view.View.OnKeyListener onkeylistener)
    {
        keyListener = onkeylistener;
        getCurrentWebView().requestFocus();
        getCurrentWebView().setOnKeyListener(keyListener);
    }

    public void loadData(String s, String s1, String s2)
    {
        loadData(s, s1, s2, false, null);
    }

    public void loadData(String s, String s1, String s2, boolean flag, PreloadCallback preloadcallback)
    {
        if (flag)
        {
            if (preloadcallback != null)
            {
                getPreloadedWebView().setWebViewClient(new PreloadWebViewClient(preloadcallback));
            }
            getPreloadedWebView().loadData(s, s1, s2);
            return;
        } else
        {
            getCurrentWebView().loadData(s, s1, s2);
            return;
        }
    }

    public void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4)
    {
        loadDataWithBaseURL(s, s1, s2, s3, s4, false, null);
    }

    public void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4, boolean flag, PreloadCallback preloadcallback)
    {
        if (flag)
        {
            if (preloadcallback != null)
            {
                getPreloadedWebView().setWebViewClient(new PreloadWebViewClient(preloadcallback));
            }
            getPreloadedWebView().loadDataWithBaseURL(s, s1, s2, s3, s4);
            return;
        } else
        {
            getCurrentWebView().loadDataWithBaseURL(s, s1, s2, s3, s4);
            return;
        }
    }

    public void loadUrl(String s)
    {
        loadUrl(s, false, null);
    }

    public void loadUrl(String s, boolean flag, PreloadCallback preloadcallback)
    {
        if (flag)
        {
            if (preloadcallback != null)
            {
                getPreloadedWebView().setWebViewClient(new PreloadWebViewClient(preloadcallback));
            }
            getPreloadedWebView().loadUrl(s);
            return;
        } else
        {
            Log.d(LOGTAG, (new StringBuilder()).append("Loading URL: ").append(s).toString());
            getCurrentWebView().loadUrl(s);
            return;
        }
    }

    public boolean popView()
    {
        if (stashedWebView != null)
        {
            WebView webview = stashedWebView;
            stashedWebView = null;
            setWebView(webview, true);
            return true;
        } else
        {
            return false;
        }
    }

    public void removePreviousInterfaces()
    {
        if (currentWebView != null)
        {
            if (AndroidTargetUtils.isAtLeastAndroidAPI(11))
            {
                String s;
                for (Iterator iterator = javascriptInterfaceNames.iterator(); iterator.hasNext(); AndroidTargetUtils.removeJavascriptInterface(currentWebView, s))
                {
                    s = (String)iterator.next();
                }

            } else
            {
                setWebView(createWebView(parent.getContext()), true);
                currentWebView.setContentDescription("originalWebView");
            }
        }
        javascriptInterfaceNames.clear();
    }

    public void setHeight(int i)
    {
        webViewHeight = i;
        if (isInitialized())
        {
            setWebViewLayoutParams(getCurrentWebView(), -1, webViewHeight);
        }
    }

    void setWebView(WebView webview, boolean flag)
    {
        WebView webview1 = currentWebView;
        if (webview1 != null)
        {
            webview1.setOnKeyListener(null);
            webview1.setWebViewClient(new WebViewClient());
            parent.removeView(webview1);
            if (flag)
            {
                destroyWebViews(new WebView[] {
                    webview1
                });
            }
        }
        webview.setWebViewClient(webViewClient);
        currentWebView = webview;
        setWebViewLayoutParams(currentWebView, -1, webViewHeight);
        addViewToParent(currentWebView);
        if (keyListener != null)
        {
            listenForKey(keyListener);
        }
    }

    public void setWebViewClient(WebViewClient webviewclient)
    {
        webViewClient = webviewclient;
        if (isInitialized())
        {
            getCurrentWebView().setWebViewClient(webViewClient);
        }
    }

    protected void setWebViewLayoutParams(WebView webview, int i, int j)
    {
        if (webview.getLayoutParams() == null)
        {
            webview.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(i, j));
            return;
        } else
        {
            webview.getLayoutParams().width = i;
            webview.getLayoutParams().height = j;
            return;
        }
    }

    public void stashView()
    {
        if (stashedWebView != null)
        {
            WebView awebview[] = new WebView[1];
            awebview[0] = stashedWebView;
            destroyWebViews(awebview);
        }
        stashedWebView = currentWebView;
        WebView webview;
        if (preloadedWebView == null)
        {
            webview = createWebView(parent.getContext());
            webview.setContentDescription("newWebView");
        } else
        {
            webview = preloadedWebView;
            preloadedWebView = createWebView(parent.getContext());
        }
        setWebView(webview, false);
    }

    boolean validateWebView(WebView webview)
    {
        return webview != null;
    }



    private class AdWebChromeClient extends WebChromeClient
    {

        final ViewManager this$0;

        public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
        {
            Log.d(ViewManager.LOGTAG, s1);
            return false;
        }

        private AdWebChromeClient()
        {
            this$0 = ViewManager.this;
            super();
        }

    }


    private class PreloadWebViewClient extends WebViewClient
    {

        private final PreloadCallback callback;
        final ViewManager this$0;

        public void onPageFinished(WebView webview, String s)
        {
            if (callback != null)
            {
                callback.onPreloadComplete(s);
            }
        }

        public PreloadWebViewClient(PreloadCallback preloadcallback)
        {
            this$0 = ViewManager.this;
            super();
            callback = preloadcallback;
        }
    }

}
