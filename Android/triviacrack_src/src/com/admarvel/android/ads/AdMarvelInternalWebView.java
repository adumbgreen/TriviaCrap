// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelView, x, ac, 
//            ae, ah, ag, af, 
//            aj, ai, o, g, 
//            AdMarvelWebView, ab, w, AdMarvelAd

public class AdMarvelInternalWebView extends WebView
    implements android.view.View.OnTouchListener
{

    public static final String ACTION_KEY = "action";
    static String BUNDLE_ID;
    public static final String DIMENSIONS = "expand_dimensions";
    public static final String EXPAND_URL = "expand_url";
    private static final int MESSAGE_PLAY_AUDIO = 1008;
    public static final String PLAYER_PROPERTIES = "player_properties";
    static int VIEW_ID;
    private static final Map internalWebViewInAppBrowserPrivateListener = new ConcurrentHashMap();
    private static final Map internalWebViewTwoPartPrivateListener = new ConcurrentHashMap();
    private static boolean isInAppFirstTimeLoaded = true;
    private static boolean isPageFinished = true;
    private static boolean isPageFinishedInAppBrowser = true;
    final String GUID;
    private final AdMarvelAd adMarvelAd;
    final WeakReference adMarvelTwoPartLayoutReference;
    final WeakReference adMarvelViewReference;
    public String audioCachedCallback;
    public String audioCompletedCallback;
    public String audioPositionChangeCallback;
    public String audioStartedCallback;
    private boolean brightrollVideoStarted;
    private final WeakReference contextReference;
    private boolean disableCloseButton;
    private final AtomicBoolean enableAutoDetect = new AtomicBoolean(true);
    private boolean enableCloseAreaOnly;
    private final AtomicBoolean enableFullScreenControls = new AtomicBoolean(false);
    public GestureDetector gestureDetector;
    private final Handler handler;
    private final AtomicBoolean init = new AtomicBoolean(false);
    public boolean isAdClosing;
    public boolean isAdExpanding;
    private final AtomicBoolean isBannerAd = new AtomicBoolean(false);
    private final AtomicBoolean isInAppBrowser = new AtomicBoolean(false);
    private final AtomicBoolean isInteratitialAd = new AtomicBoolean(false);
    public boolean isInterstitialAdDisplayed;
    public boolean isLastStateOfKeyLocked;
    public boolean isLastStateVisible;
    private boolean isTwoPartAdLoadingWithoutMraidInjection;
    private final AtomicBoolean isTwoPartExpandAd = new AtomicBoolean(false);
    private boolean isfirst;
    private int mHeight;
    public String mInAppBrowserCloseCallback;
    public int mInitLayoutX;
    public int mInitLayoutY;
    private int mLastLayoutHeight;
    private int mLastLayoutWidth;
    private BroadcastReceiver mScreenReceiver;
    private int mWidth;
    private int redirectionCheckCount;
    public boolean setSoftwareLayer;
    private boolean signalShutdown;
    public String sizeChangeCallback;
    private boolean userInteractionDetected;
    private l viewableRunnable;
    public String visibilityCallback;
    private final String xml;

    AdMarvelInternalWebView(Context context, boolean flag, String s, String s1, Handler handler1, AdMarvelView admarvelview, RelativeLayout relativelayout, 
            AdMarvelAd admarvelad)
    {
        super(context);
        setSoftwareLayer = false;
        isAdExpanding = false;
        isAdClosing = false;
        viewableRunnable = null;
        isfirst = true;
        disableCloseButton = false;
        enableCloseAreaOnly = false;
        isTwoPartAdLoadingWithoutMraidInjection = false;
        mInitLayoutX = 0;
        mInitLayoutY = 0;
        visibilityCallback = null;
        isLastStateVisible = false;
        isLastStateOfKeyLocked = false;
        mScreenReceiver = null;
        isInterstitialAdDisplayed = false;
        sizeChangeCallback = null;
        audioStartedCallback = null;
        audioCachedCallback = null;
        audioCompletedCallback = null;
        audioPositionChangeCallback = null;
        mHeight = -1;
        mWidth = -1;
        brightrollVideoStarted = false;
        gestureDetector = null;
        mInAppBrowserCloseCallback = null;
        userInteractionDetected = false;
        xml = s;
        signalShutdown = false;
        GUID = s1;
        handler = handler1;
        contextReference = new WeakReference(context);
        redirectionCheckCount = 0;
        adMarvelAd = admarvelad;
        boolean flag1;
        if (context != null && (context instanceof Activity))
        {
            Activity activity1 = (Activity)context;
            if (activity1 != null && (activity1 instanceof AdMarvelActivity))
            {
                AdMarvelActivity admarvelactivity1 = (AdMarvelActivity)activity1;
                Activity activity;
                AdMarvelActivity admarvelactivity;
                ViewGroup viewgroup;
                LinearLayout linearlayout;
                AdMarvelView admarvelview1;
                if (admarvelactivity1 != null)
                {
                    if (admarvelactivity1.c())
                    {
                        isInteratitialAd.set(true);
                    } else
                    if (admarvelactivity1.e())
                    {
                        isTwoPartExpandAd.set(true);
                    } else
                    {
                        isInAppBrowser.set(true);
                    }
                }
            } else
            {
                isBannerAd.set(true);
            }
        } else
        {
            isBannerAd.set(true);
        }
        adMarvelViewReference = new WeakReference(admarvelview);
        adMarvelTwoPartLayoutReference = new WeakReference(relativelayout);
        if (adMarvelViewReference != null)
        {
            admarvelview1 = (AdMarvelView)adMarvelViewReference.get();
            if (admarvelview1 != null)
            {
                setSoftwareLayer = admarvelview1.b();
            }
        }
        setOnTouchListener(this);
        gestureDetector = new GestureDetector(context, new x());
        if (ac.a() >= 17)
        {
            ae.a(this, context, isInAppBrowser, setSoftwareLayer);
        }
        if (ac.a() >= 16)
        {
            ah.a(this, context, isInAppBrowser, setSoftwareLayer);
        } else
        if (ac.a() >= 11)
        {
            ag.a(this, context, isInAppBrowser, setSoftwareLayer);
        } else
        if (ac.a() >= 8)
        {
            af.a(this, context, isInAppBrowser);
        } else
        if (ac.a() >= 7)
        {
            aj.a(this, context, isInAppBrowser);
        } else
        {
            ai.a(this, context, isInAppBrowser);
        }
        if (flag)
        {
            setScrollBarStyle(0);
        }
        setLayoutParams(isBannerAd.get());
        if (context != null && (context instanceof Activity))
        {
            activity = (Activity)context;
            if (activity != null && (activity instanceof AdMarvelActivity))
            {
                admarvelactivity = (AdMarvelActivity)activity;
                if (admarvelactivity != null && (admarvelactivity.c() || admarvelactivity.e()))
                {
                    if (admarvelactivity.e())
                    {
                        isTwoPartAdLoadingWithoutMraidInjection = true;
                    }
                    viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                    linearlayout = new LinearLayout(getContext());
                    linearlayout.setBackgroundColor(0);
                    linearlayout.setTag((new StringBuilder()).append(GUID).append("BTN_CLOSE").toString());
                    linearlayout.setVisibility(4);
                    linearlayout.setGravity(53);
                    linearlayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-2, -2));
                    linearlayout.addView(new i(context, this, null, activity));
                    viewgroup.addView(linearlayout);
                }
            }
        }
        if (ac.a() >= 7)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            setWebChromeClient(new b(context));
            return;
        } else
        {
            setWebChromeClient(new a(context));
            return;
        }
    }

    static int a(AdMarvelInternalWebView admarvelinternalwebview, int i1)
    {
        admarvelinternalwebview.redirectionCheckCount = i1;
        return i1;
    }

    static void a(String s)
    {
        com/admarvel/android/ads/AdMarvelInternalWebView;
        JVM INSTR monitorenter ;
        internalWebViewTwoPartPrivateListener.remove(s);
_L2:
        com/admarvel/android/ads/AdMarvelInternalWebView;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(String s, g g1)
    {
        com/admarvel/android/ads/AdMarvelInternalWebView;
        JVM INSTR monitorenter ;
        internalWebViewInAppBrowserPrivateListener.put(s, g1);
        com/admarvel/android/ads/AdMarvelInternalWebView;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(String s, o o1)
    {
        com/admarvel/android/ads/AdMarvelInternalWebView;
        JVM INSTR monitorenter ;
        internalWebViewTwoPartPrivateListener.put(s, o1);
        com/admarvel/android/ads/AdMarvelInternalWebView;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean a(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.signalShutdown;
    }

    static boolean a(AdMarvelInternalWebView admarvelinternalwebview, boolean flag)
    {
        admarvelinternalwebview.isTwoPartAdLoadingWithoutMraidInjection = flag;
        return flag;
    }

    static void b(String s)
    {
        try
        {
            internalWebViewInAppBrowserPrivateListener.remove(s);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    static boolean b(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.disableCloseButton;
    }

    static boolean b(AdMarvelInternalWebView admarvelinternalwebview, boolean flag)
    {
        admarvelinternalwebview.brightrollVideoStarted = flag;
        return flag;
    }

    static boolean b(boolean flag)
    {
        isPageFinishedInAppBrowser = flag;
        return flag;
    }

    public static o c(String s)
    {
        return (o)internalWebViewTwoPartPrivateListener.get(s);
    }

    public static void c()
    {
        internalWebViewInAppBrowserPrivateListener.clear();
        internalWebViewTwoPartPrivateListener.clear();
    }

    static boolean c(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.enableCloseAreaOnly;
    }

    static boolean c(boolean flag)
    {
        isInAppFirstTimeLoaded = flag;
        return flag;
    }

    public static g d(String s)
    {
        return (g)internalWebViewInAppBrowserPrivateListener.get(s);
    }

    static AtomicBoolean d(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.enableFullScreenControls;
    }

    static boolean d(boolean flag)
    {
        isPageFinished = flag;
        return flag;
    }

    static AtomicBoolean e(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.init;
    }

    static AtomicBoolean f(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.isInAppBrowser;
    }

    static boolean g(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.isTwoPartAdLoadingWithoutMraidInjection;
    }

    static Handler h(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.handler;
    }

    static int i(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.redirectionCheckCount;
    }

    static String j(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.xml;
    }

    static AtomicBoolean k(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.enableAutoDetect;
    }

    static boolean k()
    {
        return isPageFinished;
    }

    static AtomicBoolean l(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.isBannerAd;
    }

    static boolean l()
    {
        return isPageFinishedInAppBrowser;
    }

    static boolean m()
    {
        return isInAppFirstTimeLoaded;
    }

    static boolean m(AdMarvelInternalWebView admarvelinternalwebview)
    {
        return admarvelinternalwebview.brightrollVideoStarted;
    }

    public void a()
    {
        d();
        WebSettings websettings = getSettings();
        if (websettings != null)
        {
            websettings.setJavaScriptEnabled(false);
        }
        contextReference.clear();
        adMarvelViewReference.clear();
        adMarvelTwoPartLayoutReference.clear();
        if (viewableRunnable != null)
        {
            handler.removeCallbacks(viewableRunnable);
            viewableRunnable = null;
        }
        gestureDetector = null;
        gestureDetector = null;
        Logging.log("AdMarveInternalWebView:cleanup");
    }

    void a(int i1, int j1, int k1, int l1)
    {
        if (signalShutdown)
        {
            return;
        } else
        {
            setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, l1));
            return;
        }
    }

    public void a(AdMarvelWebView admarvelwebview)
    {
        if (!signalShutdown)
        {
            g();
            Context context;
            if (contextReference != null)
            {
                context = (Context)contextReference.get();
            } else
            {
                context = null;
            }
            if (context != null)
            {
                viewableRunnable = null;
                viewableRunnable = new l(context, admarvelwebview);
                (new Thread(viewableRunnable)).start();
                return;
            }
        }
    }

    public void a(boolean flag)
    {
        if (!signalShutdown)
        {
            disableCloseButton = true;
            enableCloseAreaOnly = flag;
            Context context = (Context)contextReference.get();
            if (context != null)
            {
                handler.post(new f(context, Boolean.valueOf(true)));
                return;
            }
        }
    }

    public boolean b()
    {
        return userInteractionDetected;
    }

    public void d()
    {
        signalShutdown = true;
    }

    public void destroy()
    {
        d();
        super.destroy();
        Logging.log("AdMarveInternalWebView:destroy()");
    }

    public void e()
    {
        if (!isInteratitialAd.get() && !isTwoPartExpandAd.get()) goto _L2; else goto _L1
_L1:
        if (visibilityCallback != null && isLastStateVisible)
        {
            injectJavaScript((new StringBuilder()).append(visibilityCallback).append("(").append(false).append(")").toString());
            isLastStateVisible = false;
            if (isInteratitialAd.get())
            {
                isInterstitialAdDisplayed = true;
            }
        }
_L4:
        return;
_L2:
        int j1;
        boolean flag;
        if (!isBannerAd.get() || visibilityCallback == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        int ai1[] = {
            -1, -1
        };
        getLocationInWindow(ai1);
        int i1;
        android.view.ViewParent viewparent;
        AdMarvelWebView admarvelwebview;
        if (getHeight() > 0)
        {
            i1 = getHeight() / 2;
        } else
        {
            i1 = 0;
        }
        viewparent = getParent();
        if (!(viewparent instanceof AdMarvelWebView))
        {
            break; /* Loop/switch isn't completed */
        }
        admarvelwebview = (AdMarvelWebView)viewparent;
        if (admarvelwebview == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (admarvelwebview.f != 0x80000000 && admarvelwebview.f > 0)
        {
            j1 = admarvelwebview.f;
        } else
        {
            j1 = 0;
        }
_L5:
        if (i1 + (ai1[1] - j1) >= 0 && i1 + ai1[1] < ab.h(getContext()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (visibilityCallback != null && isLastStateVisible && flag)
        {
            injectJavaScript((new StringBuilder()).append(visibilityCallback).append("(").append(false).append(")").toString());
            isLastStateVisible = false;
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        j1 = 0;
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public void f()
    {
        if (!isInteratitialAd.get() && !isTwoPartExpandAd.get()) goto _L2; else goto _L1
_L1:
        if (visibilityCallback != null && !isLastStateVisible)
        {
            injectJavaScript((new StringBuilder()).append(visibilityCallback).append("(").append(true).append(")").toString());
            isLastStateVisible = true;
            if (isInteratitialAd.get())
            {
                isInterstitialAdDisplayed = true;
            }
        }
_L4:
        return;
_L2:
        int j1;
        if (!isBannerAd.get() || visibilityCallback == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        int ai1[] = {
            -1, -1
        };
        getLocationInWindow(ai1);
        int i1;
        android.view.ViewParent viewparent;
        int k1;
        boolean flag;
        int l1;
        int i2;
        AdMarvelWebView admarvelwebview;
        if (getHeight() > 0)
        {
            i1 = getHeight() / 2;
        } else
        {
            i1 = 0;
        }
        viewparent = getParent();
        if (!(viewparent instanceof AdMarvelWebView))
        {
            break; /* Loop/switch isn't completed */
        }
        admarvelwebview = (AdMarvelWebView)viewparent;
        if (admarvelwebview == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (admarvelwebview.f != 0x80000000 && admarvelwebview.f > 0)
        {
            j1 = admarvelwebview.f;
        } else
        {
            j1 = 0;
        }
_L5:
        k1 = i1 + (ai1[1] - j1);
        flag = false;
        if (k1 >= 0)
        {
            l1 = i1 + ai1[1];
            i2 = ab.h(getContext());
            flag = false;
            if (l1 < i2)
            {
                flag = true;
            }
        }
        if (visibilityCallback != null && !isLastStateVisible && flag)
        {
            injectJavaScript((new StringBuilder()).append(visibilityCallback).append("(").append(true).append(")").toString());
            isLastStateVisible = true;
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        j1 = 0;
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public void g()
    {
        if (viewableRunnable != null)
        {
            viewableRunnable.a.removeCallbacks(viewableRunnable);
        }
    }

    public String getBaseUrl()
    {
        return null;
    }

    public AtomicBoolean getEnableAutoDetect()
    {
        return enableAutoDetect;
    }

    void h()
    {
        if (signalShutdown)
        {
            return;
        }
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        layoutparams.width = mLastLayoutWidth;
        layoutparams.height = mLastLayoutHeight;
        setVisibility(0);
        android.view.ViewParent viewparent = getParent();
        if (viewparent instanceof AdMarvelWebView)
        {
            ((AdMarvelWebView)viewparent).a(mLastLayoutWidth, mLastLayoutHeight);
        }
        requestLayout();
    }

    void i()
    {
        if (!signalShutdown)
        {
            enableFullScreenControls.set(true);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams.addRule(2, w.a);
            setLayoutParams(layoutparams);
            Context context = (Context)contextReference.get();
            if (context != null && (adMarvelAd != null || isInAppBrowser.get()))
            {
                if (ac.a() < 11)
                {
                    setWebViewClient(new d(context, adMarvelAd));
                    return;
                } else
                {
                    setWebViewClient(new c(context, adMarvelAd));
                    return;
                }
            }
        }
    }

    public void injectJavaScript(String s)
    {
        handler.post(new j(this, s));
    }

    public boolean isSignalShutdown()
    {
        return signalShutdown;
    }

    public void j()
    {
        if (disableCloseButton)
        {
            Context context = (Context)contextReference.get();
            if (context != null)
            {
                handler.post(new f(context, Boolean.valueOf(false)));
            }
            disableCloseButton = false;
        }
    }

    protected void onDetachedFromWindow()
    {
        try
        {
            super.onDetachedFromWindow();
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return;
        }
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        android.view.ViewParent viewparent;
        int i2;
        int j2;
        super.onLayout(flag, i1, j1, k1, l1);
        if (signalShutdown)
        {
            return;
        }
        viewparent = getParent();
        i2 = getWidth();
        j2 = getHeight();
        if (!(viewparent instanceof AdMarvelWebView) || ((AdMarvelWebView)viewparent).a.get()) goto _L2; else goto _L1
_L1:
        mLastLayoutHeight = getHeight();
        mLastLayoutWidth = getWidth();
        if (visibilityCallback != null && isfirst)
        {
            isfirst = false;
            a((AdMarvelWebView)viewparent);
        }
_L4:
        if (mHeight != -1 && mWidth != -1 && (i2 != mWidth || j2 != mHeight) && i2 > 0 && j2 > 0 && mWidth >= 0 && mHeight >= 0 && sizeChangeCallback != null)
        {
            injectJavaScript((new StringBuilder()).append(sizeChangeCallback).append("(").append(i2).append(",").append(j2).append(")").toString());
        }
        mWidth = i2;
        mHeight = j2;
        return;
_L2:
        if (isInteratitialAd.get() || isTwoPartExpandAd.get())
        {
            if (j2 == 0)
            {
                if (visibilityCallback != null && isLastStateVisible)
                {
                    injectJavaScript((new StringBuilder()).append(visibilityCallback).append("(").append(false).append(")").toString());
                    isLastStateVisible = false;
                }
                isInterstitialAdDisplayed = false;
            } else
            {
                if (visibilityCallback != null && !isLastStateVisible)
                {
                    injectJavaScript((new StringBuilder()).append(visibilityCallback).append("(").append(true).append(")").toString());
                    isLastStateVisible = true;
                }
                isInterstitialAdDisplayed = true;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        userInteractionDetected = true;
        motionevent.getAction();
        JVM INSTR tableswitch 0 1: default 32
    //                   0 52
    //                   1 52;
           goto _L1 _L2 _L2
_L2:
        if (view.hasFocus()) goto _L1; else goto _L3
_L3:
        view.requestFocus();
_L1:
        if (isInAppBrowser.get() || ac.a() <= 10 || gestureDetector == null)
        {
            return false;
        } else
        {
            return gestureDetector.onTouchEvent(motionevent);
        }
    }

    public void raiseError(String s, String s1)
    {
    }

    void setLayoutParams(boolean flag)
    {
        if (signalShutdown)
        {
            return;
        }
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (flag)
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        } else
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        }
        setLayoutParams(((android.view.ViewGroup.LayoutParams) (layoutparams)));
    }

    public void setSignalShutdown(boolean flag)
    {
        signalShutdown = flag;
    }

    static 
    {
        VIEW_ID = 0x186a2;
        BUNDLE_ID = (new StringBuilder()).append("admarvel_internal_webview_").append(VIEW_ID).toString();
    }

    private class i extends LinearLayout
    {

        private final a a;
        private final WeakReference b;
        private final WeakReference c;

        static a a(i i1)
        {
            return i1.a;
        }

        private void a(Context context)
        {
            setBackgroundColor(0);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutparams.weight = 1.0F;
            layoutparams.width = 0;
            layoutparams.gravity = 5;
            setLayoutParams(layoutparams);
            android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutparams1.weight = 25F;
            layoutparams1.gravity = 5;
            float f1 = TypedValue.applyDimension(1, 36F, getResources().getDisplayMetrics());
            android.widget.LinearLayout.LayoutParams layoutparams2 = new android.widget.LinearLayout.LayoutParams((int)f1, (int)f1);
            layoutparams2.gravity = 17;
            a(context, layoutparams2, layoutparams1);
        }

        private void a(Context context, android.widget.LinearLayout.LayoutParams layoutparams, android.widget.LinearLayout.LayoutParams layoutparams1)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            for (admarvelinternalwebview = (AdMarvelInternalWebView)b.get(); admarvelinternalwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview);)
            {
                return;
            }

            ImageView imageview = new ImageView(context);
            RelativeLayout relativelayout = new RelativeLayout(context);
            relativelayout.setLayoutParams(layoutparams1);
            LinearLayout linearlayout = new LinearLayout(context);
            android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(ab.a(50F, context), ab.a(50F, context));
            layoutparams2.addRule(11);
            linearlayout.setLayoutParams(layoutparams2);
            if (a != null)
            {
                linearlayout.setOnClickListener(new android.view.View.OnClickListener() {

                    final i a;

                    public void onClick(View view)
                    {
                        i.a(a).a();
                    }

                
                {
                    a = i.this;
                    super();
                }
                });
            } else
            {
                linearlayout.setOnClickListener(admarvelinternalwebview. new android.view.View.OnClickListener() {

                    final AdMarvelInternalWebView a;
                    final i b;

                    public void onClick(View view)
                    {
                        Activity activity = (Activity)i.b(b).get();
                        if (activity != null && (activity instanceof AdMarvelActivity))
                        {
                            AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity;
                            if (admarvelactivity.e())
                            {
                                if (AdMarvelInternalWebView.c(a.GUID) != null)
                                {
                                    AdMarvelInternalWebView.c(a.GUID).a();
                                }
                                activity.finish();
                            } else
                            {
                                boolean flag = AdMarvelInterstitialAds.getListener().b();
                                admarvelactivity.b();
                                if (admarvelactivity.e != null && admarvelactivity.e.length() > 0)
                                {
                                    a.loadUrl((new StringBuilder()).append("javascript:").append(admarvelactivity.e).append("()").toString());
                                }
                                if (!flag)
                                {
                                    activity.finish();
                                }
                                if (admarvelactivity.a() > 2)
                                {
                                    admarvelactivity.finish();
                                    return;
                                }
                            }
                        }
                    }

                
                {
                    b = i.this;
                    a = AdMarvelInternalWebView.this;
                    super();
                }
                });
            }
            layoutparams.weight = 1.0F;
            imageview.setLayoutParams(layoutparams);
            imageview.setDuplicateParentStateEnabled(true);
            imageview.setClickable(false);
            imageview.setImageDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("close", context));
            imageview.setTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE_IMAGE").toString());
            linearlayout.addView(imageview);
            relativelayout.addView(linearlayout);
            addView(relativelayout);
        }

        static WeakReference b(i i1)
        {
            return i1.c;
        }

        public i(Context context, AdMarvelInternalWebView admarvelinternalwebview, a a1, Activity activity)
        {
            super(context);
            a = a1;
            b = new WeakReference(admarvelinternalwebview);
            c = new WeakReference(activity);
            a(context);
        }
    }


    private class b extends WebChromeClient
    {

        private final WeakReference a;
        private final WeakReference b;

        public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            if (admarvelinternalwebview == null)
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
            {
                jsresult.cancel();
                return true;
            }
            if (b.get() != null && (b.get() instanceof Activity))
            {
                return super.onJsAlert(webview, s, s1, jsresult);
            } else
            {
                jsresult.cancel();
                return true;
            }
        }

        public boolean onJsBeforeUnload(WebView webview, String s, String s1, JsResult jsresult)
        {
            jsresult.cancel();
            return true;
        }

        public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            if (admarvelinternalwebview == null)
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
            {
                jsresult.cancel();
                return true;
            }
            if (b.get() != null && (b.get() instanceof Activity))
            {
                return super.onJsConfirm(webview, s, s1, jsresult);
            } else
            {
                jsresult.cancel();
                return true;
            }
        }

        public boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            if (admarvelinternalwebview == null)
            {
                jspromptresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                jspromptresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
            {
                jspromptresult.cancel();
                return true;
            }
            if (b.get() != null && (b.get() instanceof Activity))
            {
                return super.onJsPrompt(webview, s, s1, s2, jspromptresult);
            } else
            {
                jspromptresult.cancel();
                return true;
            }
        }

        public void onProgressChanged(WebView webview, int i1)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            break MISSING_BLOCK_LABEL_11;
            if (admarvelinternalwebview != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                boolean flag = admarvelinternalwebview.getParent() instanceof RelativeLayout;
                w w1 = null;
                if (flag)
                {
                    w1 = (w)((RelativeLayout)admarvelinternalwebview.getParent()).findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("CONTROLS").toString());
                }
                if (w1 != null && AdMarvelInternalWebView.e(admarvelinternalwebview).get())
                {
                    ((ProgressBar)w1.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("PROGRESS_BAR").toString())).setProgress(i1);
                    return;
                }
            }
            return;
        }

        public b(Context context)
        {
            a = new WeakReference(AdMarvelInternalWebView.this);
            b = new WeakReference(context);
        }
    }


    private class a extends WebChromeClient
    {

        private android.webkit.WebChromeClient.CustomViewCallback a;
        private View b;
        private FrameLayout c;
        private final WeakReference d;
        private final WeakReference e;

        static View a(a a1)
        {
            return a1.b;
        }

        void a()
        {
            onHideCustomView();
        }

        public View getVideoLoadingProgressView()
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
            if (admarvelinternalwebview == null)
            {
                return super.getVideoLoadingProgressView();
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                return super.getVideoLoadingProgressView();
            }
            Context context = (Context)e.get();
            if (context != null && (context instanceof Activity))
            {
                Activity activity = (Activity)context;
                if (activity != null)
                {
                    ProgressBar progressbar = new ProgressBar(activity, null, 0x1010077);
                    progressbar.setIndeterminate(true);
                    return progressbar;
                }
            }
            return super.getVideoLoadingProgressView();
        }

        public boolean onConsoleMessage(ConsoleMessage consolemessage)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
            if (admarvelinternalwebview == null)
            {
                return true;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                return true;
            } else
            {
                return super.onConsoleMessage(consolemessage);
            }
        }

        public void onGeolocationPermissionsShowPrompt(String s, android.webkit.GeolocationPermissions.Callback callback)
        {
            for (AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)d.get(); admarvelinternalwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview);)
            {
                return;
            }

            callback.invoke(s, true, false);
        }

        public void onHideCustomView()
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            super.onHideCustomView();
            admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
            break MISSING_BLOCK_LABEL_15;
            while (a == null) 
            {
                do
                {
                    return;
                } while (admarvelinternalwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview));
                if (c != null)
                {
                    Context context = (Context)e.get();
                    if (context != null && (context instanceof Activity))
                    {
                        Activity activity = (Activity)context;
                        if (activity != null)
                        {
                            Window window = activity.getWindow();
                            ViewGroup viewgroup = (ViewGroup)window.findViewById(0x1020002);
                            c.removeView(b);
                            b = null;
                            viewgroup.removeView(c);
                            c = null;
                            if (window.getCurrentFocus() instanceof AdMarvelInternalWebView)
                            {
                                ((AdMarvelInternalWebView)window.getCurrentFocus()).setOnKeyListener(null);
                            }
                        }
                    }
                }
            }
            a.onCustomViewHidden();
            return;
            Exception exception;
            exception;
            exception.printStackTrace();
            return;
        }

        public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
            if (admarvelinternalwebview == null)
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
            {
                jsresult.cancel();
                return true;
            }
            if (e.get() != null && (e.get() instanceof Activity))
            {
                return super.onJsAlert(webview, s, s1, jsresult);
            } else
            {
                jsresult.cancel();
                return true;
            }
        }

        public boolean onJsBeforeUnload(WebView webview, String s, String s1, JsResult jsresult)
        {
            jsresult.cancel();
            return true;
        }

        public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
            if (admarvelinternalwebview == null)
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                jsresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
            {
                jsresult.cancel();
                return true;
            }
            if (e.get() != null && (e.get() instanceof Activity))
            {
                return super.onJsConfirm(webview, s, s1, jsresult);
            } else
            {
                jsresult.cancel();
                return true;
            }
        }

        public boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
            if (admarvelinternalwebview == null)
            {
                jspromptresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                jspromptresult.cancel();
                return true;
            }
            if (AdMarvelInternalWebView.l(admarvelinternalwebview).get())
            {
                jspromptresult.cancel();
                return true;
            }
            if (e.get() != null && (e.get() instanceof Activity))
            {
                return super.onJsPrompt(webview, s, s1, s2, jspromptresult);
            } else
            {
                jspromptresult.cancel();
                return true;
            }
        }

        public void onProgressChanged(WebView webview, int i1)
        {
            if (d == null) goto _L2; else goto _L1
_L1:
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
              goto _L3
_L17:
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                break; /* Loop/switch isn't completed */
            }
            if (admarvelinternalwebview.getParent() == null || !(admarvelinternalwebview.getParent() instanceof RelativeLayout)) goto _L5; else goto _L4
_L4:
            w w1 = (w)((RelativeLayout)admarvelinternalwebview.getParent()).findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("CONTROLS").toString());
_L15:
            if (w1 == null)
            {
                break MISSING_BLOCK_LABEL_140;
            }
            if (AdMarvelInternalWebView.e(admarvelinternalwebview).get())
            {
                ((ProgressBar)w1.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("PROGRESS_BAR").toString())).setProgress(i1);
            }
            Context context = (Context)e.get();
            if (context == null)
            {
                break; /* Loop/switch isn't completed */
            }
            Activity activity;
            if (!(context instanceof Activity))
            {
                break; /* Loop/switch isn't completed */
            }
            activity = (Activity)context;
            if (activity == null)
            {
                break; /* Loop/switch isn't completed */
            }
            AdMarvelActivity admarvelactivity;
            if (!(activity instanceof AdMarvelActivity))
            {
                break; /* Loop/switch isn't completed */
            }
            admarvelactivity = (AdMarvelActivity)activity;
            if (admarvelactivity == null) goto _L7; else goto _L6
_L6:
            AdMarvelActivity.g g1;
            WeakReference weakreference;
            try
            {
                weakreference = admarvelactivity.a;
            }
            catch (Exception exception)
            {
                Logging.log((new StringBuilder()).append("Exception in onProgressChanged ").append(exception.getMessage()).toString());
                return;
            }
            g1 = null;
            if (weakreference == null)
            {
                break MISSING_BLOCK_LABEL_225;
            }
            g1 = (AdMarvelActivity.g)admarvelactivity.a.get();
            if (g1 == null) goto _L7; else goto _L8
_L8:
            if (!AdMarvelInternalWebView.f(admarvelinternalwebview).get()) goto _L10; else goto _L9
_L9:
            if (i1 < 10) goto _L12; else goto _L11
_L11:
            if (AdMarvelInternalWebView.i(admarvelinternalwebview) > 2) goto _L13; else goto _L12
_L13:
            AdMarvelInternalWebView.h(admarvelinternalwebview).post(admarvelinternalwebview. new k(activity));
_L7:
            if (ac.a() < 14 || i1 != 100)
            {
                break; /* Loop/switch isn't completed */
            }
            if (!AdMarvelInternalWebView.m(admarvelinternalwebview) && admarvelactivity.c && !admarvelactivity.d)
            {
                AdMarvelInternalWebView.b(admarvelinternalwebview, true);
                admarvelinternalwebview.loadUrl("javascript:AdApp.adView().play()");
                return;
            }
            break; /* Loop/switch isn't completed */
_L10:
            g1.setProgress(i1);
            if (true) goto _L7; else goto _L14
_L14:
            break; /* Loop/switch isn't completed */
_L5:
            w1 = null;
              goto _L15
_L3:
            if (admarvelinternalwebview != null) goto _L17; else goto _L16
_L16:
            return;
_L2:
            admarvelinternalwebview = null;
              goto _L3
              goto _L17
_L12:
            if (i1 < 30) goto _L10; else goto _L13
        }

        public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            super.onShowCustomView(view, customviewcallback);
            admarvelinternalwebview = (AdMarvelInternalWebView)d.get();
            break MISSING_BLOCK_LABEL_17;
            if (admarvelinternalwebview != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                a = customviewcallback;
                Context context = (Context)e.get();
                if (context != null && (context instanceof Activity))
                {
                    Activity activity = (Activity)context;
                    if (activity != null)
                    {
                        if (b != null)
                        {
                            customviewcallback.onCustomViewHidden();
                            return;
                        }
                        b = view;
                        Window window = activity.getWindow();
                        ViewGroup viewgroup = (ViewGroup)window.findViewById(0x1020002);
                        c = new FrameLayout(admarvelinternalwebview.getContext());
                        c.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
                        LinearLayout linearlayout = new LinearLayout(admarvelinternalwebview.getContext());
                        linearlayout.setBackgroundColor(0xaa000000);
                        linearlayout.setGravity(53);
                        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
                        layoutparams.weight = 40F;
                        linearlayout.setLayoutParams(layoutparams);
                        linearlayout.addView(new i(admarvelinternalwebview.getContext(), admarvelinternalwebview, this, activity));
                        c.addView(view);
                        c.addView(linearlayout);
                        if (view instanceof FrameLayout)
                        {
                            View view1 = ((FrameLayout)view).getFocusedChild();
                            if (view1 instanceof VideoView)
                            {
                                ((VideoView)view1).setOnErrorListener(new android.media.MediaPlayer.OnErrorListener() {

                                    final a a;

                                    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
                                    {
                                        a.a();
                                        return true;
                                    }

                
                {
                    a = a.this;
                    super();
                }
                                });
                                if (window.getCurrentFocus() instanceof AdMarvelInternalWebView)
                                {
                                    ((AdMarvelInternalWebView)window.getCurrentFocus()).setOnKeyListener(new android.view.View.OnKeyListener() {

                                        final a a;

                                        public boolean onKey(View view2, int i1, KeyEvent keyevent)
                                        {
                                            if (keyevent.getAction() == 0 && i1 == 4)
                                            {
                                                if (a.a(a) == null)
                                                {
                                                    return view2.onKeyDown(i1, keyevent);
                                                } else
                                                {
                                                    a.a();
                                                    return true;
                                                }
                                            } else
                                            {
                                                return false;
                                            }
                                        }

                
                {
                    a = a.this;
                    super();
                }
                                    });
                                }
                                view1.setOnKeyListener(new android.view.View.OnKeyListener() {

                                    final a a;

                                    public boolean onKey(View view2, int i1, KeyEvent keyevent)
                                    {
                                        if (keyevent.getAction() == 0 && i1 == 4)
                                        {
                                            if (a.a(a) == null)
                                            {
                                                return view2.onKeyDown(i1, keyevent);
                                            } else
                                            {
                                                a.a();
                                                return true;
                                            }
                                        } else
                                        {
                                            return false;
                                        }
                                    }

                
                {
                    a = a.this;
                    super();
                }
                                });
                            }
                        }
                        viewgroup.addView(c);
                        return;
                    }
                }
            }
            return;
        }

        public a(Context context)
        {
            d = new WeakReference(AdMarvelInternalWebView.this);
            e = new WeakReference(context);
        }

        private class k
            implements Runnable
        {

            private final WeakReference a;
            private final WeakReference b;

            public void run()
            {
                if (b == null) goto _L2; else goto _L1
_L1:
                AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                  goto _L3
_L30:
                if (AdMarvelInternalWebView.a(admarvelinternalwebview))
                {
                    break; /* Loop/switch isn't completed */
                }
                if (a == null) goto _L5; else goto _L4
_L4:
                Context context = (Context)a.get();
_L23:
                if (context == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                Activity activity;
                if (!(context instanceof Activity))
                {
                    break; /* Loop/switch isn't completed */
                }
                activity = (Activity)context;
                ViewGroup viewgroup;
                LinearLayout linearlayout;
                w w1;
                AdMarvelActivity.g g1;
                if (activity == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                AdMarvelActivity admarvelactivity;
                try
                {
                    viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                    linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE").toString());
                }
                catch (Exception exception)
                {
                    Logging.log((new StringBuilder()).append("Exception").append(exception.getMessage()).toString());
                    return;
                }
                if (linearlayout == null) goto _L7; else goto _L6
_L6:
                if (!AdMarvelInternalWebView.b(admarvelinternalwebview)) goto _L9; else goto _L8
_L8:
                if (AdMarvelInternalWebView.c(admarvelinternalwebview)) goto _L11; else goto _L10
_L10:
                linearlayout.setVisibility(8);
_L7:
                if (!AdMarvelInternalWebView.d(admarvelinternalwebview).get())
                {
                    break; /* Loop/switch isn't completed */
                }
                if (admarvelinternalwebview.getParent() == null || !(admarvelinternalwebview.getParent() instanceof RelativeLayout))
                {
                    break MISSING_BLOCK_LABEL_492;
                }
                w1 = (w)((RelativeLayout)admarvelinternalwebview.getParent()).findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("CONTROLS").toString());
_L28:
                if (!AdMarvelInternalWebView.e(admarvelinternalwebview).compareAndSet(false, true)) goto _L13; else goto _L12
_L12:
                if (activity == null) goto _L15; else goto _L14
_L14:
                if (!(activity instanceof AdMarvelActivity)) goto _L15; else goto _L16
_L16:
                admarvelactivity = (AdMarvelActivity)activity;
                if (!admarvelactivity.c()) goto _L18; else goto _L17
_L17:
                if (AdMarvelUtils.isLogDumpEnabled())
                {
                    admarvelinternalwebview.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
                    ((AdMarvelActivity)activity).h();
                }
_L26:
                if (admarvelactivity == null) goto _L15; else goto _L19
_L19:
                if (admarvelactivity.a == null) goto _L21; else goto _L20
_L20:
                g1 = (AdMarvelActivity.g)admarvelactivity.a.get();
_L27:
                if (g1 == null) goto _L15; else goto _L22
_L22:
                g1.c();
_L15:
                admarvelinternalwebview.clearHistory();
                if (w1 == null)
                {
                    break MISSING_BLOCK_LABEL_317;
                }
                w1.setVisibility(0);
                admarvelinternalwebview.setVisibility(0);
_L13:
                if (w1 == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                if (AdMarvelInternalWebView.e(admarvelinternalwebview).get())
                {
                    w1.a();
                    w1.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("PROGRESS_BAR").toString()).setVisibility(8);
                    return;
                }
                break; /* Loop/switch isn't completed */
_L5:
                context = null;
                  goto _L23
_L11:
                ImageView imageview;
                linearlayout.setVisibility(0);
                imageview = (ImageView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE_IMAGE").toString());
                if (imageview == null) goto _L7; else goto _L24
_L24:
                imageview.setVisibility(4);
                  goto _L7
_L9:
                linearlayout.setVisibility(0);
                  goto _L7
_L18:
                if (!AdMarvelUtils.isLogDumpEnabled()) goto _L26; else goto _L25
_L25:
                ((AdMarvelActivity)activity).i();
                  goto _L26
_L21:
                g1 = null;
                  goto _L27
                w1 = null;
                  goto _L28
_L3:
                if (admarvelinternalwebview != null) goto _L30; else goto _L29
_L29:
                return;
_L2:
                admarvelinternalwebview = null;
                  goto _L3
                if (true) goto _L30; else goto _L31
_L31:
            }

            public k(Context context)
            {
                a = new WeakReference(context);
                b = new WeakReference(AdMarvelInternalWebView.this);
            }
        }

    }


    private class l
        implements Runnable
    {

        public final Handler a = new Handler();
        private WeakReference b;
        private WeakReference c;
        private long d;

        public void run()
        {
            AdMarvelWebView admarvelwebview = (AdMarvelWebView)c.get();
            AdMarvelInternalWebView admarvelinternalwebview;
            for (admarvelinternalwebview = (AdMarvelInternalWebView)b.get(); admarvelinternalwebview == null || admarvelwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview);)
            {
                return;
            }

            int ai1[] = {
                -1, -1
            };
            admarvelinternalwebview.getLocationInWindow(ai1);
            int i1;
            int j1;
            int k1;
            boolean flag;
            if (admarvelinternalwebview.getHeight() > 0)
            {
                i1 = admarvelinternalwebview.getHeight() / 2;
            } else
            {
                i1 = 0;
            }
            if (admarvelinternalwebview.getHeight() > 0)
            {
                j1 = 2 * (admarvelinternalwebview.getHeight() / 3);
            } else
            {
                j1 = 0;
            }
            if (admarvelwebview.f != 0x80000000 && admarvelwebview.f > 0)
            {
                k1 = admarvelwebview.f;
            } else
            {
                k1 = 0;
            }
            if (i1 + (ai1[1] - k1) >= 0 && j1 + ai1[1] < ab.h(admarvelwebview.getContext()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag || admarvelinternalwebview.isLastStateVisible) goto _L2; else goto _L1
_L1:
            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(admarvelinternalwebview.visibilityCallback).append("(").append(true).append(")").toString());
            admarvelinternalwebview.isLastStateVisible = true;
_L4:
            a.removeCallbacks(this);
            a.postAtTime(this, SystemClock.uptimeMillis() + d);
            return;
_L2:
            if (!flag && admarvelinternalwebview.isLastStateVisible)
            {
                admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(admarvelinternalwebview.visibilityCallback).append("(").append(false).append(")").toString());
                admarvelinternalwebview.isLastStateVisible = false;
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public l(Context context, AdMarvelWebView admarvelwebview)
        {
            d = 500L;
            b = new WeakReference(AdMarvelInternalWebView.this);
            c = new WeakReference(admarvelwebview);
        }
    }


    private class f
        implements Runnable
    {

        private final WeakReference a;
        private final WeakReference b;
        private boolean c;

        public void run()
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
            break MISSING_BLOCK_LABEL_11;
            while (true) 
            {
                ViewGroup viewgroup;
                do
                {
                    do
                    {
                        return;
                    } while (admarvelinternalwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview));
                    Activity activity = (Activity)(Context)a.get();
                    if (activity == null)
                    {
                        continue;
                    }
                    viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                    if (!c)
                    {
                        break;
                    }
                    if (!AdMarvelInternalWebView.c(admarvelinternalwebview))
                    {
                        LinearLayout linearlayout1 = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE").toString());
                        if (linearlayout1 != null && AdMarvelInternalWebView.b(admarvelinternalwebview))
                        {
                            linearlayout1.setVisibility(8);
                            return;
                        }
                    } else
                    {
                        ImageView imageview1 = (ImageView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE_IMAGE").toString());
                        if (imageview1 != null)
                        {
                            imageview1.setVisibility(4);
                            return;
                        }
                    }
                } while (true);
                LinearLayout linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE").toString());
                if (linearlayout != null)
                {
                    if (linearlayout.getVisibility() != 0)
                    {
                        linearlayout.setVisibility(0);
                    }
                    ImageView imageview = (ImageView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE_IMAGE").toString());
                    if (imageview != null && imageview.getVisibility() != 0)
                    {
                        imageview.setVisibility(0);
                        return;
                    }
                }
            }
        }

        public f(Context context, Boolean boolean1)
        {
            c = true;
            a = new WeakReference(context);
            b = new WeakReference(AdMarvelInternalWebView.this);
            c = boolean1.booleanValue();
        }
    }


    private class d extends WebViewClient
    {

        private final WeakReference a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public void onLoadResource(WebView webview, String s1)
        {
            super.onLoadResource(webview, s1);
            AdMarvelInternalWebView admarvelinternalwebview;
            for (admarvelinternalwebview = (AdMarvelInternalWebView)a.get(); admarvelinternalwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview) || !AdMarvelInternalWebView.g(admarvelinternalwebview) || !s1.contains("mraid.js");)
            {
                return;
            }

            webview.loadUrl("javascript: (function() { var script=document.createElement('script');script.type='text/javascript';script.src='http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js';document.getElementsByTagName('head').item(0).appendChild(script);})()");
            AdMarvelInternalWebView.a(admarvelinternalwebview, false);
        }

        public void onPageFinished(WebView webview, String s1)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            super.onPageFinished(webview, s1);
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            break MISSING_BLOCK_LABEL_17;
            if (admarvelinternalwebview != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                Context context = (Context)b.get();
                if (context != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
                {
                    Logging.log("Load Ad: onPageFinished");
                    if (AdMarvelInternalWebView.f(admarvelinternalwebview).get())
                    {
                        AdMarvelInternalWebView.b(true);
                    } else
                    {
                        AdMarvelInternalWebView.d(true);
                    }
                    AdMarvelInternalWebView.h(admarvelinternalwebview).post(admarvelinternalwebview. new k(context));
                    return;
                }
            }
            return;
        }

        public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            break MISSING_BLOCK_LABEL_12;
            if (admarvelinternalwebview != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                Logging.log("Load Ad: onPageStarted");
                if (AdMarvelInternalWebView.d(admarvelinternalwebview).get())
                {
                    android.view.ViewParent viewparent = admarvelinternalwebview.getParent();
                    w w1 = null;
                    if (viewparent != null)
                    {
                        boolean flag = admarvelinternalwebview.getParent() instanceof RelativeLayout;
                        w1 = null;
                        if (flag)
                        {
                            w1 = (w)((RelativeLayout)admarvelinternalwebview.getParent()).findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("CONTROLS").toString());
                        }
                    }
                    if (w1 != null && AdMarvelInternalWebView.e(admarvelinternalwebview).get())
                    {
                        w1.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("PROGRESS_BAR").toString()).setVisibility(0);
                    }
                }
                Context context = (Context)b.get();
                if (context != null)
                {
                    if (AdMarvelInternalWebView.f(admarvelinternalwebview).get())
                    {
                        AdMarvelInternalWebView.b(false);
                        if (AdMarvelInternalWebView.m())
                        {
                            Logging.log((new StringBuilder()).append(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL ").append(u.a).toString());
                            AdMarvelInternalWebView.h(admarvelinternalwebview).postDelayed(admarvelinternalwebview. new g(context), u.a);
                            AdMarvelInternalWebView.c(false);
                            return;
                        }
                    } else
                    {
                        AdMarvelInternalWebView.d(false);
                        Logging.log((new StringBuilder()).append(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL ").append(u.a).toString());
                        AdMarvelInternalWebView.h(admarvelinternalwebview).postDelayed(admarvelinternalwebview. new h(context), u.a);
                        return;
                    }
                }
            }
            return;
        }

        public void onReceivedError(WebView webview, int i1, String s1, String s2)
        {
            super.onReceivedError(webview, i1, s1, s2);
            Context context = (Context)b.get();
            if (context != null && (context instanceof Activity))
            {
                Activity activity = (Activity)context;
                if (activity != null && (activity instanceof AdMarvelActivity))
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity;
                    if (admarvelactivity != null)
                    {
                        Logging.log((new StringBuilder()).append("onReceivedError - Closing AdMarvel FullScreen due to bad URL : ").append(s2).toString());
                        admarvelactivity.g();
                    }
                }
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s1)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            Context context;
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            if (admarvelinternalwebview == null)
            {
                return false;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                return false;
            }
            AdMarvelInternalWebView.a(admarvelinternalwebview, 1 + AdMarvelInternalWebView.i(admarvelinternalwebview));
            context = (Context)b.get();
            if (context == null || !(context instanceof Activity)) goto _L2; else goto _L1
_L1:
            Activity activity = (Activity)context;
            if (activity == null || !(activity instanceof AdMarvelActivity)) goto _L2; else goto _L3
_L3:
            AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity;
            if (admarvelactivity == null) goto _L2; else goto _L4
_L4:
            AdMarvelActivity.g g1;
            if (admarvelactivity.a != null)
            {
                g1 = (AdMarvelActivity.g)admarvelactivity.a.get();
            } else
            {
                g1 = null;
            }
            if (g1 != null && g1.a() && g1.getProgress() >= 10 && AdMarvelInternalWebView.i(admarvelinternalwebview) > 2 && AdMarvelInternalWebView.f(admarvelinternalwebview).get())
            {
                AdMarvelInternalWebView.h(admarvelinternalwebview).post(admarvelinternalwebview. new k(activity));
            }
            if (ab.b(admarvelinternalwebview.getContext(), s1))
            {
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                if (!admarvelactivity.c())
                {
                    admarvelactivity.g();
                }
                return true;
            }
            if (admarvelactivity.c()) goto _L6; else goto _L5
_L5:
            if (s1 == null || ab.a(s1, "admarvelsdk") == ab.f.c) goto _L8; else goto _L7
_L7:
            if (!admarvelactivity.d() || c == null) goto _L10; else goto _L9
_L9:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L11:
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            admarvelactivity.g();
            return true;
_L10:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), admarvelinternalwebview.getContext()));
            }
            if (true) goto _L11; else goto _L8
_L8:
            if (s1 == null || ab.a(s1, "admarvelinternal") == ab.f.c) goto _L13; else goto _L12
_L12:
            if (!admarvelactivity.d() || c == null) goto _L15; else goto _L14
_L14:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L16:
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            admarvelactivity.g();
            return true;
_L15:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), admarvelinternalwebview.getContext()));
            }
            if (true) goto _L16; else goto _L13
_L13:
            if (s1 == null || ab.a(s1, "admarvelvideo") == ab.f.c) goto _L18; else goto _L17
_L17:
            if (!admarvelactivity.d() || c == null) goto _L20; else goto _L19
_L19:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L21:
            String s3 = ab.a(s1, "admarvelvideo", "http://", ab.a(s1, "admarvelvideo"), admarvelinternalwebview.getContext());
            Intent intent6 = new Intent("android.intent.action.VIEW");
            intent6.addFlags(0x10000000);
            intent6.setDataAndType(Uri.parse(s3), "video/*");
            admarvelinternalwebview.getContext().startActivity(intent6);
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            admarvelactivity.g();
            return true;
_L20:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, s1);
            }
            if (true) goto _L21; else goto _L18
_L18:
            if (s1 != null && ab.a(s1, "admarvelcustomvideo") != ab.f.c)
            {
                Intent intent5;
                if (admarvelactivity.d() && c != null)
                {
                    AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                } else
                if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
                {
                    AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, s1);
                }
                intent5 = new Intent(admarvelinternalwebview.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
                intent5.addFlags(0x10000000);
                c.removeNonStringEntriesTargetParam();
                try
                {
                    ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
                    ObjectOutputStream objectoutputstream1 = new ObjectOutputStream(bytearrayoutputstream1);
                    objectoutputstream1.writeObject(c);
                    objectoutputstream1.close();
                    intent5.putExtra("serialized_admarvelad", bytearrayoutputstream1.toByteArray());
                }
                catch (IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                }
                intent5.putExtra("url", s1);
                intent5.putExtra("isCustomUrl", true);
                intent5.putExtra("xml", AdMarvelInternalWebView.j(admarvelinternalwebview));
                intent5.putExtra("GUID", admarvelinternalwebview.GUID);
                admarvelinternalwebview.getContext().startActivity(intent5);
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                admarvelactivity.g();
            } else
            if (s1 != null && ab.a(s1, "admarvelexternal") != ab.f.c)
            {
                Intent intent4 = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(s1, "admarvelexternal", "", ab.a(s1, "admarvelexternal"), admarvelinternalwebview.getContext())));
                intent4.addFlags(0x10000000);
                if (ab.a(admarvelinternalwebview.getContext(), intent4))
                {
                    admarvelinternalwebview.getContext().startActivity(intent4);
                }
                admarvelinternalwebview.getContext().startActivity(intent4);
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                admarvelactivity.g();
            }
_L2:
            return ac.a() >= 4 && t.a(s1, admarvelinternalwebview.getContext());
_L6:
            if (!admarvelactivity.c()) goto _L2; else goto _L22
_L22:
            if (!AdMarvelInterstitialAds.getEnableClickRedirect()) goto _L24; else goto _L23
_L23:
            if (s1 != null && ab.a(s1, "admarvelsdk") != ab.f.c)
            {
                if (c != null)
                {
                    AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                }
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                return true;
            }
            if (s1 != null && ab.a(s1, "admarvelinternal") != ab.f.c)
            {
                if (c != null)
                {
                    AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                }
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                return true;
            }
            if (s1 == null || ab.a(s1, "admarvelvideo") == ab.f.c) goto _L26; else goto _L25
_L25:
            if (c != null)
            {
                AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            }
            String s2 = ab.a(s1, "admarvelvideo", "http://", ab.a(s1, "admarvelvideo"), admarvelinternalwebview.getContext());
            Intent intent3 = new Intent("android.intent.action.VIEW");
            intent3.addFlags(0x10000000);
            intent3.setDataAndType(Uri.parse(s2), "video/*");
            if (ab.a(admarvelinternalwebview.getContext(), intent3))
            {
                admarvelinternalwebview.getContext().startActivity(intent3);
            }
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
_L24:
            if (c != null)
            {
                AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            }
            return true;
_L26:
            if (s1 == null || ab.a(s1, "admarvelcustomvideo") == ab.f.c) goto _L28; else goto _L27
_L27:
            if (!admarvelactivity.d() || c == null) goto _L30; else goto _L29
_L29:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L31:
            Intent intent2 = new Intent(admarvelinternalwebview.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
            intent2.addFlags(0x10000000);
            intent2.putExtra("url", s1);
            intent2.putExtra("isCustomUrl", true);
            intent2.putExtra("isInterstitial", false);
            intent2.putExtra("isInterstitialClick", true);
            intent2.putExtra("xml", AdMarvelInternalWebView.j(admarvelinternalwebview));
            intent2.putExtra("GUID", admarvelinternalwebview.GUID);
            admarvelinternalwebview.getContext().startActivity(intent2);
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            continue; /* Loop/switch isn't completed */
_L30:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, s1);
            }
            if (true) goto _L31; else goto _L28
_L28:
            if (s1 != null && ab.a(s1, "admarvelexternal") != ab.f.c)
            {
                Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(s1, "admarvelexternal", "", ab.a(s1, "admarvelexternal"), admarvelinternalwebview.getContext())));
                intent1.addFlags(0x10000000);
                if (ab.a(admarvelinternalwebview.getContext(), intent1))
                {
                    admarvelinternalwebview.getContext().startActivity(intent1);
                }
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            } else
            if (AdMarvelInternalWebView.k(admarvelinternalwebview).get() && s1 != null && s1.length() > 0)
            {
                Intent intent = new Intent(admarvelinternalwebview.getContext(), com/admarvel/android/ads/AdMarvelActivity);
                intent.addFlags(0x10000000);
                intent.putExtra("url", s1);
                intent.putExtra("isInterstitial", false);
                intent.putExtra("isInterstitialClick", true);
                intent.putExtra("xml", AdMarvelInternalWebView.j(admarvelinternalwebview));
                intent.putExtra("GUID", admarvelinternalwebview.GUID);
                try
                {
                    if (c != null)
                    {
                        c.removeNonStringEntriesTargetParam();
                        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                        objectoutputstream.writeObject(c);
                        objectoutputstream.close();
                        intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
                    }
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
                if (admarvelactivity.f() != null)
                {
                    intent.putExtra("source", admarvelactivity.f());
                }
                admarvelinternalwebview.getContext().startActivity(intent);
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            }
            if (true) goto _L24; else goto _L32
_L32:
        }

        public d(Context context, AdMarvelAd admarvelad)
        {
            a = new WeakReference(AdMarvelInternalWebView.this);
            b = new WeakReference(context);
            c = admarvelad;
        }

        private class g
            implements Runnable
        {

            private final WeakReference a;
            private final WeakReference b;

            public void run()
            {
                AdMarvelActivity admarvelactivity;
                if (AdMarvelInternalWebView.l())
                {
                    break MISSING_BLOCK_LABEL_147;
                }
                Context context;
                if (a != null)
                {
                    context = (Context)a.get();
                } else
                {
                    context = null;
                }
                if (context == null || !(context instanceof AdMarvelActivity)) goto _L2; else goto _L1
_L1:
                admarvelactivity = (AdMarvelActivity)context;
                AdMarvelInternalWebView admarvelinternalwebview;
                if (b.get() != null)
                {
                    admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                } else
                {
                    admarvelinternalwebview = null;
                }
                if (admarvelinternalwebview == null || !AdMarvelInternalWebView.f(admarvelinternalwebview).get()) goto _L4; else goto _L3
_L3:
                AdMarvelActivity.g g1;
                if (admarvelactivity.a != null)
                {
                    g1 = (AdMarvelActivity.g)admarvelactivity.a.get();
                } else
                {
                    g1 = null;
                }
                if (g1 != null && g1.a())
                {
                    Logging.log("closing In-app as dialog is visible and onpagefinished is not called");
                    admarvelactivity.g();
                }
_L2:
                return;
_L4:
                if (admarvelactivity == null) goto _L2; else goto _L5
_L5:
                Logging.log("closing Interstitial as onpagefinished is not called");
                admarvelactivity.g();
                return;
                Logging.log("not closing Interstitial as pagFinished is called");
                return;
            }

            public g(Context context)
            {
                a = new WeakReference(context);
                b = new WeakReference(AdMarvelInternalWebView.this);
            }
        }


        private class h
            implements Runnable
        {

            private final WeakReference a;
            private final WeakReference b;

            public void run()
            {
                AdMarvelActivity admarvelactivity;
                if (AdMarvelInternalWebView.k())
                {
                    break MISSING_BLOCK_LABEL_147;
                }
                Context context;
                if (a != null)
                {
                    context = (Context)a.get();
                } else
                {
                    context = null;
                }
                if (context == null || !(context instanceof AdMarvelActivity)) goto _L2; else goto _L1
_L1:
                admarvelactivity = (AdMarvelActivity)context;
                AdMarvelInternalWebView admarvelinternalwebview;
                if (b.get() != null)
                {
                    admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                } else
                {
                    admarvelinternalwebview = null;
                }
                if (admarvelinternalwebview == null || !AdMarvelInternalWebView.f(admarvelinternalwebview).get()) goto _L4; else goto _L3
_L3:
                AdMarvelActivity.g g1;
                if (admarvelactivity.a != null)
                {
                    g1 = (AdMarvelActivity.g)admarvelactivity.a.get();
                } else
                {
                    g1 = null;
                }
                if (g1 != null && g1.a())
                {
                    Logging.log("closing In-app as dialog is visible and onpagefinished is not called");
                    admarvelactivity.g();
                }
_L2:
                return;
_L4:
                if (admarvelactivity == null) goto _L2; else goto _L5
_L5:
                Logging.log("closing Interstitial as onpagefinished is not called");
                admarvelactivity.g();
                return;
                Logging.log("not closing Interstitial as pageFinished is called");
                return;
            }

            public h(Context context)
            {
                a = new WeakReference(context);
                b = new WeakReference(AdMarvelInternalWebView.this);
            }
        }

    }


    private class c extends WebViewClient
    {

        private final WeakReference a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public void onPageFinished(WebView webview, String s1)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            super.onPageFinished(webview, s1);
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            break MISSING_BLOCK_LABEL_17;
            if (admarvelinternalwebview != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                Context context = (Context)b.get();
                if (context != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
                {
                    Logging.log("Load Ad: onPageFinished");
                    if (AdMarvelInternalWebView.f(admarvelinternalwebview).get())
                    {
                        AdMarvelInternalWebView.b(true);
                    } else
                    {
                        AdMarvelInternalWebView.d(true);
                    }
                    AdMarvelInternalWebView.h(admarvelinternalwebview).post(admarvelinternalwebview. new k(context));
                    return;
                }
            }
            return;
        }

        public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            break MISSING_BLOCK_LABEL_12;
            if (admarvelinternalwebview != null && !AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                Logging.log("Load Ad: onPageStarted");
                if (AdMarvelInternalWebView.d(admarvelinternalwebview).get())
                {
                    android.view.ViewParent viewparent = admarvelinternalwebview.getParent();
                    w w1 = null;
                    if (viewparent != null)
                    {
                        boolean flag = admarvelinternalwebview.getParent() instanceof RelativeLayout;
                        w1 = null;
                        if (flag)
                        {
                            w1 = (w)((RelativeLayout)admarvelinternalwebview.getParent()).findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("CONTROLS").toString());
                        }
                    }
                    if (w1 != null && AdMarvelInternalWebView.e(admarvelinternalwebview).get())
                    {
                        w1.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("PROGRESS_BAR").toString()).setVisibility(0);
                    }
                }
                Context context = (Context)b.get();
                if (context != null)
                {
                    if (AdMarvelInternalWebView.f(admarvelinternalwebview).get())
                    {
                        AdMarvelInternalWebView.b(false);
                        if (AdMarvelInternalWebView.m())
                        {
                            Logging.log((new StringBuilder()).append(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL ").append(u.a).toString());
                            AdMarvelInternalWebView.h(admarvelinternalwebview).postDelayed(admarvelinternalwebview. new g(context), u.a);
                            AdMarvelInternalWebView.c(false);
                            return;
                        }
                    } else
                    {
                        AdMarvelInternalWebView.d(false);
                        Logging.log((new StringBuilder()).append(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL ").append(u.a).toString());
                        AdMarvelInternalWebView.h(admarvelinternalwebview).postDelayed(admarvelinternalwebview. new h(context), u.a);
                        return;
                    }
                }
            }
            return;
        }

        public void onReceivedError(WebView webview, int i1, String s1, String s2)
        {
            super.onReceivedError(webview, i1, s1, s2);
            Context context = (Context)b.get();
            if (context != null && (context instanceof Activity))
            {
                Activity activity = (Activity)context;
                if (activity != null && (activity instanceof AdMarvelActivity))
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity;
                    if (admarvelactivity != null)
                    {
                        Logging.log((new StringBuilder()).append("onReceivedError - Closing AdMarvel FullScreen due to bad URL : ").append(s2).toString());
                        admarvelactivity.g();
                    }
                }
            }
        }

        public WebResourceResponse shouldInterceptRequest(WebView webview, String s1)
        {
            int i1;
            AdMarvelInternalWebView admarvelinternalwebview;
            i1 = 0;
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            if (admarvelinternalwebview == null)
            {
                return null;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                return null;
            }
            if (s1 == null)
            {
                return null;
            }
            if (!s1.equals("http://baseurl.admarvel.com/mraid.js") && (!AdMarvelInternalWebView.g(admarvelinternalwebview) || !s1.endsWith("mraid.js"))) goto _L2; else goto _L1
_L1:
            HttpURLConnection httpurlconnection;
            int j1;
            InputStream inputstream;
            ArrayList arraylist;
            int l1;
            int i2;
            byte abyte0[];
            e e1;
            try
            {
                httpurlconnection = (HttpURLConnection)(new URL("http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js")).openConnection();
                httpurlconnection.setRequestMethod("GET");
                httpurlconnection.setDoOutput(false);
                httpurlconnection.setDoInput(true);
                httpurlconnection.setUseCaches(false);
                httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                httpurlconnection.setRequestProperty("Content-Length", "0");
                httpurlconnection.setConnectTimeout(2000);
                httpurlconnection.setReadTimeout(10000);
                j1 = httpurlconnection.getResponseCode();
                int k1 = httpurlconnection.getContentLength();
                Logging.log((new StringBuilder()).append("Mraid Connection Status Code: ").append(j1).toString());
                Logging.log((new StringBuilder()).append("Mraid Content Length: ").append(k1).toString());
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
                return super.shouldInterceptRequest(webview, s1);
            }
            if (j1 != 200) goto _L4; else goto _L3
_L3:
            inputstream = (InputStream)httpurlconnection.getContent();
            arraylist = new ArrayList();
            l1 = 0;
            i2 = 8192;
_L6:
            if (i2 == '\uFFFF')
            {
                break MISSING_BLOCK_LABEL_326;
            }
            abyte0 = new byte[8192];
            i2 = inputstream.read(abyte0, 0, 8192);
            if (i2 <= 0) goto _L6; else goto _L5
_L5:
            e1 = new e();
            e1.a = abyte0;
            e1.b = i2;
            l1 += i2;
            arraylist.add(e1);
              goto _L6
            inputstream.close();
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_464;
            }
            byte abyte1[] = new byte[l1];
            int j2 = 0;
_L8:
            if (j2 >= arraylist.size())
            {
                break; /* Loop/switch isn't completed */
            }
            e e2 = (e)arraylist.get(j2);
            System.arraycopy(e2.a, 0, abyte1, i1, e2.b);
            i1 += e2.b;
            j2++;
            if (true) goto _L8; else goto _L7
_L7:
            String s2 = new String(abyte1);
_L9:
            AdMarvelInternalWebView.a(admarvelinternalwebview, false);
            return new WebResourceResponse("text/css", "UTF-8", new ByteArrayInputStream(s2.getBytes()));
_L4:
            WebResourceResponse webresourceresponse = super.shouldInterceptRequest(webview, s1);
            return webresourceresponse;
_L2:
            return super.shouldInterceptRequest(webview, s1);
            s2 = "";
              goto _L9
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s1)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            Context context;
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
            if (admarvelinternalwebview == null)
            {
                return false;
            }
            if (AdMarvelInternalWebView.a(admarvelinternalwebview))
            {
                return false;
            }
            AdMarvelInternalWebView.a(admarvelinternalwebview, 1 + AdMarvelInternalWebView.i(admarvelinternalwebview));
            context = (Context)b.get();
            if (context == null || !(context instanceof Activity)) goto _L2; else goto _L1
_L1:
            Activity activity = (Activity)context;
            if (activity == null || !(activity instanceof AdMarvelActivity)) goto _L2; else goto _L3
_L3:
            AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity;
            if (admarvelactivity == null) goto _L2; else goto _L4
_L4:
            AdMarvelActivity.g g1;
            if (admarvelactivity.a != null)
            {
                g1 = (AdMarvelActivity.g)admarvelactivity.a.get();
            } else
            {
                g1 = null;
            }
            if (g1 != null && g1.a() && g1.getProgress() >= 10 && AdMarvelInternalWebView.i(admarvelinternalwebview) > 2 && AdMarvelInternalWebView.f(admarvelinternalwebview).get())
            {
                AdMarvelInternalWebView.h(admarvelinternalwebview).post(admarvelinternalwebview. new k(activity));
            }
            if (ab.b(admarvelinternalwebview.getContext(), s1))
            {
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                if (!admarvelactivity.c())
                {
                    admarvelactivity.g();
                }
                if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
                {
                    AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, s1);
                }
                return true;
            }
            if (admarvelactivity.c()) goto _L6; else goto _L5
_L5:
            if (s1 == null || ab.a(s1, "admarvelsdk") == ab.f.c) goto _L8; else goto _L7
_L7:
            if (!admarvelactivity.d() || c == null) goto _L10; else goto _L9
_L9:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L11:
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            admarvelactivity.g();
            return true;
_L10:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), admarvelinternalwebview.getContext()));
            }
            if (true) goto _L11; else goto _L8
_L8:
            if (s1 == null || ab.a(s1, "admarvelinternal") == ab.f.c) goto _L13; else goto _L12
_L12:
            if (!admarvelactivity.d() || c == null) goto _L15; else goto _L14
_L14:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L16:
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            admarvelactivity.g();
            return true;
_L15:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), admarvelinternalwebview.getContext()));
            }
            if (true) goto _L16; else goto _L13
_L13:
            if (s1 == null || ab.a(s1, "admarvelvideo") == ab.f.c) goto _L18; else goto _L17
_L17:
            if (!admarvelactivity.d() || c == null) goto _L20; else goto _L19
_L19:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L21:
            String s3 = ab.a(s1, "admarvelvideo", "http://", ab.a(s1, "admarvelvideo"), admarvelinternalwebview.getContext());
            Intent intent6 = new Intent("android.intent.action.VIEW");
            intent6.addFlags(0x10000000);
            intent6.setDataAndType(Uri.parse(s3), "video/*");
            admarvelinternalwebview.getContext().startActivity(intent6);
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            admarvelactivity.g();
            return true;
_L20:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, s1);
            }
            if (true) goto _L21; else goto _L18
_L18:
            if (s1 != null && ab.a(s1, "admarvelcustomvideo") != ab.f.c)
            {
                Intent intent5;
                if (admarvelactivity.d() && c != null)
                {
                    AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                } else
                if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
                {
                    AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, s1);
                }
                intent5 = new Intent(admarvelinternalwebview.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
                intent5.addFlags(0x10000000);
                c.removeNonStringEntriesTargetParam();
                try
                {
                    ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
                    ObjectOutputStream objectoutputstream1 = new ObjectOutputStream(bytearrayoutputstream1);
                    objectoutputstream1.writeObject(c);
                    objectoutputstream1.close();
                    intent5.putExtra("serialized_admarvelad", bytearrayoutputstream1.toByteArray());
                }
                catch (IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                }
                intent5.putExtra("url", s1);
                intent5.putExtra("isCustomUrl", true);
                intent5.putExtra("xml", AdMarvelInternalWebView.j(admarvelinternalwebview));
                intent5.putExtra("GUID", admarvelinternalwebview.GUID);
                admarvelinternalwebview.getContext().startActivity(intent5);
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                admarvelactivity.g();
            } else
            if (s1 != null && ab.a(s1, "admarvelexternal") != ab.f.c)
            {
                Intent intent4 = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(s1, "admarvelexternal", "", ab.a(s1, "admarvelexternal"), admarvelinternalwebview.getContext())));
                intent4.addFlags(0x10000000);
                if (ab.a(admarvelinternalwebview.getContext(), intent4))
                {
                    admarvelinternalwebview.getContext().startActivity(intent4);
                }
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                admarvelactivity.g();
            }
_L2:
            return ac.a() >= 4 && t.a(s1, admarvelinternalwebview.getContext());
_L6:
            if (!admarvelactivity.c()) goto _L2; else goto _L22
_L22:
            if (!AdMarvelInterstitialAds.getEnableClickRedirect()) goto _L24; else goto _L23
_L23:
            if (s1 != null && ab.a(s1, "admarvelsdk") != ab.f.c)
            {
                if (c != null)
                {
                    AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                }
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                return true;
            }
            if (s1 != null && ab.a(s1, "admarvelinternal") != ab.f.c)
            {
                if (c != null)
                {
                    AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), admarvelinternalwebview.getContext()), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                }
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
                return true;
            }
            if (s1 == null || ab.a(s1, "admarvelvideo") == ab.f.c) goto _L26; else goto _L25
_L25:
            if (c != null)
            {
                AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            }
            String s2 = ab.a(s1, "admarvelvideo", "http://", ab.a(s1, "admarvelvideo"), admarvelinternalwebview.getContext());
            Intent intent3 = new Intent("android.intent.action.VIEW");
            intent3.addFlags(0x10000000);
            intent3.setDataAndType(Uri.parse(s2), "video/*");
            if (ab.a(admarvelinternalwebview.getContext(), intent3))
            {
                admarvelinternalwebview.getContext().startActivity(intent3);
            }
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
_L24:
            if (c != null)
            {
                AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            }
            return true;
_L26:
            if (s1 == null || ab.a(s1, "admarvelcustomvideo") == ab.f.c) goto _L28; else goto _L27
_L27:
            if (!admarvelactivity.d() || c == null) goto _L30; else goto _L29
_L29:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, s1, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
_L31:
            Intent intent2 = new Intent(admarvelinternalwebview.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
            intent2.addFlags(0x10000000);
            intent2.putExtra("url", s1);
            intent2.putExtra("isCustomUrl", true);
            intent2.putExtra("isInterstitial", false);
            intent2.putExtra("isInterstitialClick", true);
            intent2.putExtra("xml", AdMarvelInternalWebView.j(admarvelinternalwebview));
            intent2.putExtra("GUID", admarvelinternalwebview.GUID);
            admarvelinternalwebview.getContext().startActivity(intent2);
            (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            continue; /* Loop/switch isn't completed */
_L30:
            if (AdMarvelWebView.a(admarvelinternalwebview.GUID) != null && c != null)
            {
                AdMarvelWebView.a(admarvelinternalwebview.GUID).a(c, s1);
            }
            if (true) goto _L31; else goto _L28
_L28:
            if (s1 != null && ab.a(s1, "admarvelexternal") != ab.f.c)
            {
                Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(s1, "admarvelexternal", "", ab.a(s1, "admarvelexternal"), admarvelinternalwebview.getContext())));
                intent1.addFlags(0x10000000);
                if (ab.a(admarvelinternalwebview.getContext(), intent1))
                {
                    admarvelinternalwebview.getContext().startActivity(intent1);
                }
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            } else
            if (AdMarvelInternalWebView.k(admarvelinternalwebview).get() && s1 != null && s1.length() > 0)
            {
                Intent intent = new Intent(admarvelinternalwebview.getContext(), com/admarvel/android/ads/AdMarvelActivity);
                intent.addFlags(0x10000000);
                intent.putExtra("url", s1);
                intent.putExtra("isInterstitial", false);
                intent.putExtra("isInterstitialClick", true);
                intent.putExtra("xml", AdMarvelInternalWebView.j(admarvelinternalwebview));
                intent.putExtra("GUID", admarvelinternalwebview.GUID);
                try
                {
                    if (c != null)
                    {
                        c.removeNonStringEntriesTargetParam();
                        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                        objectoutputstream.writeObject(c);
                        objectoutputstream.close();
                        intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
                    }
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
                if (admarvelactivity.f() != null)
                {
                    intent.putExtra("source", admarvelactivity.f());
                }
                admarvelinternalwebview.getContext().startActivity(intent);
                (new ab(admarvelinternalwebview.getContext(), AdMarvelInternalWebView.h(admarvelinternalwebview))).b(AdMarvelInternalWebView.j(admarvelinternalwebview));
            }
            if (true) goto _L24; else goto _L32
_L32:
        }

        public c(Context context, AdMarvelAd admarvelad)
        {
            a = new WeakReference(AdMarvelInternalWebView.this);
            b = new WeakReference(context);
            c = admarvelad;
        }

        private class e
        {

            public byte a[];
            public int b;

            private e()
            {
                a = null;
                b = 0;
            }

        }

    }


    private class j
        implements Runnable
    {

        final AdMarvelInternalWebView a;
        private final WeakReference b;
        private String c;

        public void run()
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            if (b != null)
            {
                if ((admarvelinternalwebview = (AdMarvelInternalWebView)b.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                {
                    admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(c).toString());
                    return;
                }
            }
        }

        public j(AdMarvelInternalWebView admarvelinternalwebview1, String s)
        {
            a = AdMarvelInternalWebView.this;
            super();
            c = null;
            b = new WeakReference(admarvelinternalwebview1);
            c = s;
        }
    }

}
