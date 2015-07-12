// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.amazon.device.ads:
//            AdSDKBridgeList, StringUtils, AdController, AdUtils, 
//            AdWebViewClient, BridgeSelector, AdSDKBridgeFactory, ViewManager, 
//            AdData, Log, AdSDKBridge, WebUtils, 
//            ThreadUtils, Assets, AndroidTargetUtils, PreloadCallback, 
//            RelativePosition, WebRequest, InternalAdRegistration, IInternalAdRegistration, 
//            DeviceInfo, ResponseReader

class AdContainer extends FrameLayout
{

    private static final String CONTENT_DESCRIPTION_AD_CONTAINER = "adContainerObject";
    private static final String CONTENT_DESCRITPION_NATIVE_CLOSE_BUTTON = "nativeCloseButton";
    private static final String CONTENT_DESCRITPION_NATIVE_CLOSE_BUTTON_CONTAINER = "nativeCloseButtonContainer";
    private static final String CONTENT_DESCRITPION_NATIVE_CLOSE_BUTTON_IMAGE = "nativeCloseButtonImage";
    private static final String LOGTAG = com/amazon/device/ads/AdContainer.getSimpleName();
    private final int CLOSE_BUTTON_SIZE_DP = 60;
    private final int CLOSE_BUTTON_TAP_TARGET_SIZE_DP = 80;
    private final AdController adController;
    private AdWebViewClient adWebViewClient;
    private String baseUrl;
    private final AdSDKBridgeList bridgeList = new AdSDKBridgeList();
    private RelativeLayout closeButton;
    private RelativeLayout closeButtonContainer;
    private ImageView closeButtonImage;
    private String html;
    private PreloadCallback preloadCallback;
    private boolean shouldPreload;
    private ViewManager viewManager;

    public AdContainer(Context context, AdController adcontroller)
    {
        super(context);
        adController = adcontroller;
        setContentDescription("adContainerObject");
    }

    private String addHeadData(String s, String s1)
    {
        String s2 = StringUtils.getFirstMatch("<[Hh][Ee][Aa][Dd](\\s*>|\\s[^>]*>)", s);
        String s3 = "";
        String s4;
        if (!StringUtils.containsRegEx("<[Mm][Ee][Tt][Aa](\\s[^>]*\\s|\\s)[Nn][Aa][Mm][Ee]\\s*=\\s*[\"'][Vv][Ii][Ee][Ww][Pp][Oo][Rr][Tt][\"']", s))
        {
            if (adController.getScalingMultiplier() >= 0.0D)
            {
                s3 = (new StringBuilder()).append(s3).append("<meta name=\"viewport\" content=\"width=").append(adController.getWindowWidth()).append(", height=").append(adController.getWindowHeight()).append(", initial-scale=").append(AdUtils.getViewportInitialScale(adController.getScalingMultiplier())).append(", minimum-scale=").append(adController.getScalingMultiplier()).append(", maximum-scale=").append(adController.getScalingMultiplier()).append("\"/>").toString();
            } else
            {
                s3 = (new StringBuilder()).append(s3).append("<meta name=\"viewport\" content=\"width=device-width, height=device-height, user-scalable=no, initial-scale=1.0\"/>").toString();
            }
        }
        s4 = (new StringBuilder()).append(s3).append("<style>html,body{margin:0;padding:0;height:100%;border:none;}</style>").toString();
        if (s1.length() > 0)
        {
            s4 = (new StringBuilder()).append(s4).append("<script type='text/javascript'>").append(s1).append("</script>").toString();
        }
        return s.replace(s2, (new StringBuilder()).append(s2).append(s4).toString());
    }

    private String ensureHtmlTags(String s)
    {
        String s1 = "";
        if (!StringUtils.containsRegEx("\\A\\s*<![Dd][Oo][Cc][Tt][Yy][Pp][Ee]\\s+[Hh][Tt][Mm][Ll][\\s>]", s))
        {
            s1 = "<!DOCTYPE html>";
        }
        String s2;
        String s3;
        if (!StringUtils.containsRegEx("<[Hh][Tt][Mm][Ll][\\s>]", s))
        {
            s2 = (new StringBuilder()).append(s1).append("<html>").toString();
            s3 = "</html>";
        } else
        {
            s2 = s1;
            s3 = "";
        }
        if (!StringUtils.containsRegEx("<[Hh][Ee][Aa][Dd][\\s>]", s))
        {
            s2 = (new StringBuilder()).append(s2).append("<head></head>").toString();
        }
        if (!StringUtils.containsRegEx("<[Bb][Oo][Dd][Yy][\\s>]", s))
        {
            s2 = (new StringBuilder()).append(s2).append("<body>").toString();
            s3 = (new StringBuilder()).append("</body>").append(s3).toString();
        }
        return (new StringBuilder()).append(s2).append(s).append(s3).toString();
    }

    private AdWebViewClient getAdWebViewClient()
    {
        if (adWebViewClient == null)
        {
            adWebViewClient = new AdWebViewClient(getContext(), bridgeList, adController.getAdControlAccessor());
        }
        return adWebViewClient;
    }

    private ViewManager getViewManager()
    {
        if (viewManager == null)
        {
            viewManager = createViewManager();
            setAdWebViewClient();
        }
        return viewManager;
    }

    private void loadHtml(String s, String s1, boolean flag, PreloadCallback preloadcallback)
    {
        baseUrl = s;
        html = s1;
        shouldPreload = flag;
        preloadCallback = preloadcallback;
        for (Iterator iterator = BridgeSelector.getInstance().getBridgeFactories(s1).iterator(); iterator.hasNext(); addAdSDKBridge(((AdSDKBridgeFactory)iterator.next()).createAdSDKBridge(adController.getAdControlAccessor()))) { }
        getViewManager().removePreviousInterfaces();
        adController.clearSDKEventListeners();
        String s2 = LOGTAG;
        Object aobj[] = new Object[6];
        aobj[0] = Float.valueOf(AdUtils.getScalingFactorAsFloat());
        aobj[1] = Integer.valueOf(adController.getWindowWidth());
        aobj[2] = Integer.valueOf(adController.getWindowHeight());
        aobj[3] = Integer.valueOf((int)((float)adController.getAdData().getWidth() * AdUtils.getScalingFactorAsFloat()));
        aobj[4] = Integer.valueOf((int)((float)adController.getAdData().getHeight() * AdUtils.getScalingFactorAsFloat()));
        aobj[5] = Double.valueOf(adController.getScalingMultiplier());
        Log.d(s2, "Scaling Params: scalingDensity: %f, windowWidth: %d, windowHeight: %d, adWidth: %d, adHeight: %d, scale: %f", aobj);
        String s3 = "";
        Iterator iterator1 = bridgeList.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            AdSDKBridge adsdkbridge = (AdSDKBridge)iterator1.next();
            if (adsdkbridge.getSDKEventListener() != null)
            {
                adController.addSDKEventListener(adsdkbridge.getSDKEventListener());
            }
            if (adsdkbridge.getJavascript() != null)
            {
                s3 = (new StringBuilder()).append(s3).append(adsdkbridge.getJavascript()).toString();
            }
            Map map = adsdkbridge.getJavascriptInterfaces();
            if (map != null && !map.isEmpty())
            {
                Iterator iterator2 = map.entrySet().iterator();
                while (iterator2.hasNext()) 
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator2.next();
                    viewManager.addJavascriptInterface(entry.getValue(), flag, (new StringBuilder()).append(adsdkbridge.getName()).append((String)entry.getKey()).toString());
                }
            }
        } while (true);
        String s4 = addHeadData(ensureHtmlTags(s1), s3);
        if (s != null)
        {
            viewManager.loadDataWithBaseURL(s, s4, "text/html", "UTF-8", null, flag, preloadcallback);
            return;
        } else
        {
            viewManager.loadData(s4, "text/html", "UTF-8", flag, preloadcallback);
            return;
        }
    }

    private void loadUrl(final String url, final boolean shouldPreload, final PreloadCallback callback)
    {
        String s = WebUtils.getScheme(url);
        if (s.equals("http") || s.equals("https"))
        {
            ThreadUtils.executeRunnableWithThreadCheck(new Runnable() {

                final AdContainer this$0;
                final PreloadCallback val$callback;
                final boolean val$shouldPreload;
                final String val$url;

                public void run()
                {
                    WebRequest webrequest;
                    webrequest = WebRequest.createNewWebRequest();
                    webrequest.setExternalLogTag(AdContainer.LOGTAG);
                    webrequest.enableLogUrl(true);
                    webrequest.setUrlString(url);
                    webrequest.putHeader("User-Agent", InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString());
                    WebRequest.WebResponse webresponse1 = webrequest.makeCall();
                    WebRequest.WebResponse webresponse = webresponse1;
_L2:
                    if (webresponse != null)
                    {
                        String s2 = webresponse.getResponseReader().readAsString();
                        if (s2 == null)
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        ThreadUtils.executeOnMainThread(s2. new Runnable() {

                            final _cls1 this$1;
                            final String val$body;

                            public void run()
                            {
                                loadHtml(url, body, shouldPreload, callback);
                            }

            
            {
                this$1 = final__pcls1;
                body = String.this;
                super();
            }
                        });
                    }
                    return;
                    WebRequest.WebRequestException webrequestexception;
                    webrequestexception;
                    String s1 = AdContainer.LOGTAG;
                    Object aobj[] = new Object[2];
                    aobj[0] = url;
                    aobj[1] = webrequestexception.getMessage();
                    Log.e(s1, "Could not load URL (%s) into AdContainer: %s", aobj);
                    webresponse = null;
                    if (true) goto _L2; else goto _L1
_L1:
                    String s3 = AdContainer.LOGTAG;
                    Object aobj1[] = new Object[1];
                    aobj1[0] = url;
                    Log.e(s3, "Could not load URL (%s) into AdContainer.", aobj1);
                    return;
                }

            
            {
                this$0 = AdContainer.this;
                url = s;
                shouldPreload = flag;
                callback = preloadcallback;
                super();
            }
            });
            return;
        } else
        {
            getAdWebViewClient().shouldOverrideUrlLoading(null, url);
            return;
        }
    }

    public void addAdSDKBridge(AdSDKBridge adsdkbridge)
    {
        bridgeList.addBridge(adsdkbridge);
    }

    void addJavascriptInterface(Object obj, boolean flag, String s)
    {
        getViewManager().addJavascriptInterface(obj, flag, s);
    }

    ViewManager createViewManager()
    {
        return new ViewManager(this);
    }

    public void destroy()
    {
        getViewManager().destroy();
        bridgeList.clear();
    }

    public void enableNativeCloseButton(boolean flag, RelativePosition relativeposition)
    {
        if (closeButton != null && closeButtonImage != null && equals(closeButton.getParent()) && closeButton.equals(closeButtonImage.getParent()))
        {
            return;
        } else
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            int i = (int)(0.5F + 60F * displaymetrics.density);
            int j = (int)(0.5F + 80F * displaymetrics.density);
            ThreadUtils.executeAsyncTask(new AsyncTask() {

                final AdContainer this$0;
                final int val$buttonSize;
                final BitmapDrawable val$closeNormal;
                final BitmapDrawable val$closePressed;
                final RelativePosition val$position;
                final boolean val$showImage;
                final int val$tapTargetSize;

                protected volatile Object doInBackground(Object aobj[])
                {
                    return doInBackground((Void[])aobj);
                }

                protected transient Void doInBackground(Void avoid[])
                {
                    AdContainer adcontainer = AdContainer.this;
                    adcontainer;
                    JVM INSTR monitorenter ;
                    RelativeLayout relativelayout = closeButton;
                    boolean flag1;
                    flag1 = false;
                    if (relativelayout != null)
                    {
                        break MISSING_BLOCK_LABEL_95;
                    }
                    closeButton = new RelativeLayout(getContext());
                    closeButton.setContentDescription("nativeCloseButton");
                    closeButtonImage = new ImageButton(getContext());
                    closeButtonImage.setContentDescription("nativeCloseButtonImage");
                    flag1 = true;
                    adcontainer;
                    JVM INSTR monitorexit ;
                    if (flag1)
                    {
                        closeButtonImage.setImageDrawable(closeNormal);
                        closeButtonImage.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                        closeButtonImage.setBackgroundDrawable(null);
                        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

                            final _cls2 this$1;

                            public void onClick(View view)
                            {
                                adController.closeAd();
                            }

            
            {
                this$1 = _cls2.this;
                super();
            }
                        };
                        closeButtonImage.setOnClickListener(onclicklistener);
                        closeButton.setOnClickListener(onclicklistener);
                        android.view.View.OnTouchListener ontouchlistener = new android.view.View.OnTouchListener() {

                            final _cls2 this$1;

                            public boolean onTouch(View view, MotionEvent motionevent)
                            {
                                motionevent.getAction();
                                JVM INSTR tableswitch 0 1: default 28
                            //                                           0 30
                            //                                           1 53;
                                   goto _L1 _L2 _L3
_L1:
                                return false;
_L2:
                                closeButtonImage.setImageDrawable(closePressed);
                                continue; /* Loop/switch isn't completed */
_L3:
                                closeButtonImage.setImageDrawable(closeNormal);
                                if (true) goto _L1; else goto _L4
_L4:
                            }

            
            {
                this$1 = _cls2.this;
                super();
            }
                        };
                        closeButton.setOnTouchListener(ontouchlistener);
                        closeButtonImage.setOnTouchListener(ontouchlistener);
                        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(tapTargetSize, tapTargetSize);
                        layoutparams.addRule(11);
                        layoutparams.addRule(10);
                        closeButtonContainer = new RelativeLayout(getContext());
                        closeButtonContainer.setContentDescription("nativeCloseButtonContainer");
                        closeButtonContainer.addView(closeButton, layoutparams);
                    }
                    return null;
                    Exception exception;
                    exception;
                    adcontainer;
                    JVM INSTR monitorexit ;
                    throw exception;
                }

                protected volatile void onPostExecute(Object obj)
                {
                    onPostExecute((Void)obj);
                }

                protected void onPostExecute(Void void1)
                {
                    android.widget.RelativeLayout.LayoutParams layoutparams;
                    class _cls5
                    {

                        static final int $SwitchMap$com$amazon$device$ads$RelativePosition[];

                        static 
                        {
                            $SwitchMap$com$amazon$device$ads$RelativePosition = new int[RelativePosition.values().length];
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.BOTTOM_CENTER.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.BOTTOM_LEFT.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.BOTTOM_RIGHT.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.CENTER.ordinal()] = 4;
                            }
                            catch (NoSuchFieldError nosuchfielderror3) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.TOP_CENTER.ordinal()] = 5;
                            }
                            catch (NoSuchFieldError nosuchfielderror4) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.TOP_LEFT.ordinal()] = 6;
                            }
                            catch (NoSuchFieldError nosuchfielderror5) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.TOP_RIGHT.ordinal()] = 7;
                            }
                            catch (NoSuchFieldError nosuchfielderror6)
                            {
                                return;
                            }
                        }
                    }

                    RelativePosition relativeposition1;
                    if (showImage && !closeButton.equals(closeButtonImage.getParent()))
                    {
                        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(buttonSize, buttonSize);
                        layoutparams1.addRule(13);
                        closeButton.addView(closeButtonImage, layoutparams1);
                    } else
                    if (!showImage && closeButton.equals(closeButtonImage.getParent()))
                    {
                        closeButton.removeView(closeButtonImage);
                    }
                    if (!equals(closeButtonContainer.getParent()))
                    {
                        addView(closeButtonContainer, new android.widget.FrameLayout.LayoutParams(-1, -1));
                    }
                    layoutparams = new android.widget.RelativeLayout.LayoutParams(tapTargetSize, tapTargetSize);
                    relativeposition1 = position;
                    if (position == null)
                    {
                        relativeposition1 = RelativePosition.TOP_RIGHT;
                    }
                    _cls5..SwitchMap.com.amazon.device.ads.RelativePosition[relativeposition1.ordinal()];
                    JVM INSTR tableswitch 1 7: default 200
                //                               1 284
                //                               2 299
                //                               3 314
                //                               4 329
                //                               5 338
                //                               6 353
                //                               7 368;
                       goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
                    layoutparams.addRule(10);
                    layoutparams.addRule(11);
_L10:
                    closeButton.setLayoutParams(layoutparams);
                    closeButtonContainer.bringToFront();
                    return;
_L2:
                    layoutparams.addRule(12);
                    layoutparams.addRule(14);
                    continue; /* Loop/switch isn't completed */
_L3:
                    layoutparams.addRule(12);
                    layoutparams.addRule(9);
                    continue; /* Loop/switch isn't completed */
_L4:
                    layoutparams.addRule(12);
                    layoutparams.addRule(11);
                    continue; /* Loop/switch isn't completed */
_L5:
                    layoutparams.addRule(13);
                    continue; /* Loop/switch isn't completed */
_L6:
                    layoutparams.addRule(10);
                    layoutparams.addRule(14);
                    continue; /* Loop/switch isn't completed */
_L7:
                    layoutparams.addRule(10);
                    layoutparams.addRule(9);
                    continue; /* Loop/switch isn't completed */
_L8:
                    layoutparams.addRule(10);
                    layoutparams.addRule(11);
                    if (true) goto _L10; else goto _L9
_L9:
                }

            
            {
                this$0 = AdContainer.this;
                closeNormal = bitmapdrawable;
                closePressed = bitmapdrawable1;
                tapTargetSize = i;
                showImage = flag;
                buttonSize = j;
                position = relativeposition;
                super();
            }
            }, new Void[0]);
            return;
        }
    }

    public void hideNativeCloseButtonImage()
    {
        if (closeButton != null)
        {
            ThreadUtils.executeOnMainThread(new Runnable() {

                final AdContainer this$0;

                public void run()
                {
                    closeButton.removeAllViews();
                }

            
            {
                this$0 = AdContainer.this;
                super();
            }
            });
        }
    }

    public void initialize()
    {
        getViewManager().initialize();
    }

    public void injectJavascript(String s, boolean flag)
    {
        getViewManager().loadUrl((new StringBuilder()).append("javascript:").append(s).toString(), flag, null);
    }

    public void listenForKey(android.view.View.OnKeyListener onkeylistener)
    {
        getViewManager().listenForKey(onkeylistener);
    }

    public void loadHtml(String s)
    {
        loadHtml(null, s);
    }

    public void loadHtml(String s, String s1)
    {
        loadHtml(s, s1, false, null);
    }

    public void loadUrl(String s)
    {
        loadUrl(s, false, null);
    }

    public void onPageFinished(WebView webview, String s)
    {
        if (getViewManager().isCurrentView(webview))
        {
            adController.adRendered(s);
        }
    }

    public boolean popView()
    {
        return getViewManager().popView();
    }

    public void preloadHtml(String s, PreloadCallback preloadcallback)
    {
        preloadHtml(null, s, preloadcallback);
    }

    public void preloadHtml(String s, String s1, PreloadCallback preloadcallback)
    {
        loadHtml(s, s1, true, preloadcallback);
    }

    public void preloadUrl(String s, PreloadCallback preloadcallback)
    {
        loadUrl(s, true, preloadcallback);
    }

    public void putUrlExecutorInAdWebViewClient(String s, AdWebViewClient.UrlExecutor urlexecutor)
    {
        getAdWebViewClient().putUrlExecutor(s, urlexecutor);
    }

    void reload()
    {
        loadHtml(baseUrl, html, shouldPreload, preloadCallback);
    }

    public void removeNativeCloseButton()
    {
        ThreadUtils.executeOnMainThread(new Runnable() {

            final AdContainer this$0;

            public void run()
            {
                removeView(closeButtonContainer);
            }

            
            {
                this$0 = AdContainer.this;
                super();
            }
        });
    }

    void setAdWebViewClient()
    {
        getAdWebViewClient().setListener(new AdContainerAdWebViewClientListener());
        getViewManager().setWebViewClient(getAdWebViewClient());
    }

    public void setViewHeight(int i)
    {
        getViewManager().setHeight(i);
    }

    public void stashView()
    {
        getViewManager().stashView();
    }






/*
    static RelativeLayout access$302(AdContainer adcontainer, RelativeLayout relativelayout)
    {
        adcontainer.closeButton = relativelayout;
        return relativelayout;
    }

*/



/*
    static ImageView access$402(AdContainer adcontainer, ImageView imageview)
    {
        adcontainer.closeButtonImage = imageview;
        return imageview;
    }

*/




/*
    static RelativeLayout access$602(AdContainer adcontainer, RelativeLayout relativelayout)
    {
        adcontainer.closeButtonContainer = relativelayout;
        return relativelayout;
    }

*/

    private class AdContainerAdWebViewClientListener
        implements AdWebViewClient.AdWebViewClientListener
    {

        final AdContainer this$0;

        public void onLoadResource(WebView webview, String s)
        {
        }

        public void onPageFinished(WebView webview, String s)
        {
            AdContainer.this.onPageFinished(webview, s);
        }

        public void onPageStarted(WebView webview, String s)
        {
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
        }

        private AdContainerAdWebViewClientListener()
        {
            this$0 = AdContainer.this;
            super();
        }

    }

}
