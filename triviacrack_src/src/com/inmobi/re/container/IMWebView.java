// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.re.container;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.configs.ConfigParams;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController;
import com.inmobi.re.container.mraidimpl.MRAIDBasic;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.container.mraidimpl.MRAIDResizeController;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.AVPlayer;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

// Referenced classes of package com.inmobi.re.container:
//            b, a, c, CustomView

public class IMWebView extends WebView
    implements Serializable
{

    private static Class B = null;
    public static final String DIMENSIONS = "expand_dimensions";
    public static final String EXPAND_URL = "expand_url";
    protected static final int IMWEBVIEW_INTERSTITIAL_ID = 117;
    public static final String PLAYER_PROPERTIES = "player_properties";
    private static int c[] = {
        0x101011f, 0x1010120
    };
    private static final long serialVersionUID = 0x6282f5dae34d0336L;
    public static boolean userInitiatedClose = false;
    private boolean A;
    private WebViewClient C;
    private WebChromeClient D;
    private boolean E;
    private android.media.MediaPlayer.OnCompletionListener F;
    private boolean G;
    double a;
    public AtomicBoolean acqMutexcPos;
    public AtomicBoolean acqMutexdPos;
    AtomicBoolean b;
    public JSONObject curPosition;
    private boolean d;
    public JSONObject defPosition;
    public AtomicBoolean doNotFireVisibilityChanged;
    private JSUtilityController e;
    private float f;
    private int g;
    private int h;
    private ViewState i;
    public AtomicBoolean isMutexAquired;
    public boolean isTablet;
    private VideoView j;
    private View k;
    private android.webkit.WebChromeClient.CustomViewCallback l;
    private ViewGroup m;
    public MRAIDAudioVideoController mAudioVideoController;
    public MRAIDExpandController mExpandController;
    public MRAIDInterstitialController mInterstitialController;
    public boolean mIsInterstitialAd;
    public IMWebViewListener mListener;
    public MRAIDBasic mMraidBasic;
    public IMWebView mOriginalWebviewForExpandUrl;
    public MRAIDResizeController mResizeController;
    public boolean mWebViewIsBrowserActivity;
    protected boolean mraidLoaded;
    public Object mutex;
    public Object mutexcPos;
    public Object mutexdPos;
    private FrameLayout n;
    private boolean o;
    private boolean p;
    public int publisherOrientation;
    private boolean q;
    private Message r;
    private Message s;
    private Activity t;
    private WebViewClient u;
    private j v;
    private ArrayList w;
    public String webviewUserAgent;
    private AtomicBoolean x;
    private ViewParent y;
    private int z;

    public IMWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        doNotFireVisibilityChanged = new AtomicBoolean(false);
        i = ViewState.LOADING;
        l = null;
        o = false;
        mIsInterstitialAd = false;
        isTablet = false;
        mOriginalWebviewForExpandUrl = null;
        mWebViewIsBrowserActivity = false;
        p = false;
        mutex = new Object();
        mutexcPos = new Object();
        mutexdPos = new Object();
        isMutexAquired = new AtomicBoolean(false);
        acqMutexcPos = new AtomicBoolean(true);
        acqMutexdPos = new AtomicBoolean(true);
        w = new ArrayList();
        x = new AtomicBoolean();
        A = false;
        C = new b(this);
        D = new a(this);
        E = false;
        F = new c(this);
        a = -1D;
        b = new AtomicBoolean(false);
        G = true;
        t = (Activity)context;
        a();
        getContext().obtainStyledAttributes(attributeset, c).recycle();
    }

    public IMWebView(Context context, IMWebViewListener imwebviewlistener)
    {
        super(context);
        doNotFireVisibilityChanged = new AtomicBoolean(false);
        i = ViewState.LOADING;
        l = null;
        o = false;
        mIsInterstitialAd = false;
        isTablet = false;
        mOriginalWebviewForExpandUrl = null;
        mWebViewIsBrowserActivity = false;
        p = false;
        mutex = new Object();
        mutexcPos = new Object();
        mutexdPos = new Object();
        isMutexAquired = new AtomicBoolean(false);
        acqMutexcPos = new AtomicBoolean(true);
        acqMutexdPos = new AtomicBoolean(true);
        w = new ArrayList();
        x = new AtomicBoolean();
        A = false;
        C = new b(this);
        D = new a(this);
        E = false;
        F = new c(this);
        a = -1D;
        b = new AtomicBoolean(false);
        G = true;
        mListener = imwebviewlistener;
        t = (Activity)context;
        a();
    }

    public IMWebView(Context context, IMWebViewListener imwebviewlistener, boolean flag, boolean flag1)
    {
        super(context);
        doNotFireVisibilityChanged = new AtomicBoolean(false);
        i = ViewState.LOADING;
        l = null;
        o = false;
        mIsInterstitialAd = false;
        isTablet = false;
        mOriginalWebviewForExpandUrl = null;
        mWebViewIsBrowserActivity = false;
        p = false;
        mutex = new Object();
        mutexcPos = new Object();
        mutexdPos = new Object();
        isMutexAquired = new AtomicBoolean(false);
        acqMutexcPos = new AtomicBoolean(true);
        acqMutexdPos = new AtomicBoolean(true);
        w = new ArrayList();
        x = new AtomicBoolean();
        A = false;
        C = new b(this);
        D = new a(this);
        E = false;
        F = new c(this);
        a = -1D;
        b = new AtomicBoolean(false);
        G = true;
        t = (Activity)context;
        mIsInterstitialAd = flag;
        mWebViewIsBrowserActivity = flag1;
        if (mIsInterstitialAd)
        {
            setId(117);
        }
        mListener = imwebviewlistener;
        a();
    }

    private int a(Activity activity)
    {
        Iterator iterator = activity.getPackageManager().queryIntentActivities(new Intent(activity, activity.getClass()), 0x10000).iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ResolveInfo resolveinfo = (ResolveInfo)iterator.next();
        if (!resolveinfo.activityInfo.name.contentEquals(activity.getClass().getName())) goto _L4; else goto _L3
_L3:
        return resolveinfo.activityInfo.configChanges;
_L2:
        resolveinfo = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    static Message a(IMWebView imwebview, Message message)
    {
        imwebview.r = message;
        return message;
    }

    static View a(IMWebView imwebview, View view)
    {
        imwebview.k = view;
        return view;
    }

    static android.webkit.WebChromeClient.CustomViewCallback a(IMWebView imwebview, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        imwebview.l = customviewcallback;
        return customviewcallback;
    }

    static WebViewClient a(IMWebView imwebview)
    {
        return imwebview.u;
    }

    static FrameLayout a(IMWebView imwebview, FrameLayout framelayout)
    {
        imwebview.n = framelayout;
        return framelayout;
    }

    static VideoView a(IMWebView imwebview, VideoView videoview)
    {
        imwebview.j = videoview;
        return videoview;
    }

    private void a()
    {
        userInitiatedClose = false;
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        webviewUserAgent = getSettings().getUserAgentString();
        InternalSDKUtil.getUserAgent(t);
        setBackgroundColor(Initializer.getConfigParams().getWebviewBgColor());
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        f = t.getResources().getDisplayMetrics().density;
        d = false;
        getSettings().setJavaScriptEnabled(true);
        getSettings().setGeolocationEnabled(true);
        e = new JSUtilityController(this, getContext());
        addJavascriptInterface(e, "utilityController");
        setWebViewClient(C);
        setWebChromeClient(D);
        mExpandController = new MRAIDExpandController(this, t);
        mResizeController = new MRAIDResizeController(this, t);
        mMraidBasic = new MRAIDBasic(this, t);
        mInterstitialController = new MRAIDInterstitialController(this, t);
        mAudioVideoController = new MRAIDAudioVideoController(this);
        v = new j(mMraidBasic, mExpandController, mInterstitialController, mAudioVideoController, mResizeController);
        mExpandController.mSensorDisplay = ((WindowManager)t.getSystemService("window")).getDefaultDisplay();
        mAudioVideoController.videoValidateWidth = t.getResources().getDisplayMetrics().widthPixels;
        try
        {
            addJavascriptInterface(B.getDeclaredConstructor(new Class[] {
                com/inmobi/re/container/IMWebView
            }).newInstance(new Object[] {
                this
            }), "imaiController");
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[RE]-4.3.0", "Error adding js interface imai controller");
        }
    }

    private void a(int i1, int j1)
    {
        injectJavaScript((new StringBuilder()).append("window.mraid.broadcastEvent('sizeChange',").append(i1).append(",").append(j1).append(");").toString());
    }

    private void a(View view, android.view.View.OnKeyListener onkeylistener)
    {
        view.setOnKeyListener(onkeylistener);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int i1 = 0;
            for (int j1 = viewgroup.getChildCount(); i1 < j1; i1++)
            {
                a(viewgroup.getChildAt(i1), onkeylistener);
            }

        }
    }

    private void a(View view, android.view.View.OnTouchListener ontouchlistener)
    {
        view.setOnTouchListener(ontouchlistener);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int i1 = 0;
            for (int j1 = viewgroup.getChildCount(); i1 < j1; i1++)
            {
                a(viewgroup.getChildAt(i1), ontouchlistener);
            }

        }
    }

    private void a(SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(t);
        class d
            implements android.content.DialogInterface.OnClickListener
        {

            final SslErrorHandler a;
            final IMWebView b;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.cancel();
                a.proceed();
            }

            d(SslErrorHandler sslerrorhandler)
            {
                b = IMWebView.this;
                a = sslerrorhandler;
                super();
            }
        }

        builder.setPositiveButton("Continue", new d(sslerrorhandler));
        class i
            implements android.content.DialogInterface.OnClickListener
        {

            final SslErrorHandler a;
            final IMWebView b;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.cancel();
                a.cancel();
            }

            i(SslErrorHandler sslerrorhandler)
            {
                b = IMWebView.this;
                a = sslerrorhandler;
                super();
            }
        }

        builder.setNegativeButton("Go Back", new i(sslerrorhandler));
        class e
            implements android.content.DialogInterface.OnClickListener
        {

            final SslError a;
            final IMWebView b;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.cancel();
                IMWebView.a(b, WrapperFunctions.getSSLErrorUrl(a));
            }

            e(SslError sslerror)
            {
                b = IMWebView.this;
                a = sslerror;
                super();
            }
        }

        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            builder.setNeutralButton("Open Browser", new e(sslerror));
        }
        builder.setTitle("Security Warning");
        builder.setMessage("There are problems with the security certificate for this site.");
        AlertDialog alertdialog = builder.create();
        try
        {
            alertdialog.show();
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[RE]-4.3.0", "Dialog could not be shown due to an exception.", exception);
        }
    }

    static void a(IMWebView imwebview, View view, android.view.View.OnKeyListener onkeylistener)
    {
        imwebview.a(view, onkeylistener);
    }

    static void a(IMWebView imwebview, View view, android.view.View.OnTouchListener ontouchlistener)
    {
        imwebview.a(view, ontouchlistener);
    }

    static void a(IMWebView imwebview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        imwebview.a(sslerrorhandler, sslerror);
    }

    static void a(IMWebView imwebview, String s1)
    {
        imwebview.a(s1);
    }

    private void a(String s1)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
        intent.addFlags(0x10000000);
        t.startActivity(intent);
        fireOnLeaveApplication();
    }

    private void a(boolean flag)
    {
        Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("Viewable:").append(flag).toString());
        injectJavaScript((new StringBuilder()).append("window.mraid.broadcastEvent('viewableChange',").append(isViewable()).append(");").toString());
    }

    static boolean a(IMWebView imwebview, boolean flag)
    {
        imwebview.A = flag;
        return flag;
    }

    static ViewState b(IMWebView imwebview)
    {
        return imwebview.i;
    }

    private void b()
    {
        Log.debug("[InMobi]-[RE]-4.3.0", "IMWebView-> initStates");
        i = ViewState.LOADING;
        x.set(false);
    }

    static AtomicBoolean c(IMWebView imwebview)
    {
        return imwebview.x;
    }

    private void c()
    {
        if (i == ViewState.EXPANDED)
        {
            mExpandController.closeExpanded();
        }
        invalidate();
        e.stopAllListeners();
        resetLayout();
    }

    static ArrayList d(IMWebView imwebview)
    {
        return imwebview.w;
    }

    private void d()
    {
        if (k == null)
        {
            return;
        }
        if (l != null)
        {
            l.onCustomViewHidden();
        }
        l = null;
        if (k.getParent() != null)
        {
            ((ViewGroup)k.getParent()).removeView(k);
        }
        k = null;
    }

    static Message e(IMWebView imwebview)
    {
        return imwebview.r;
    }

    private boolean e()
    {
        return b.get();
    }

    static Message f(IMWebView imwebview)
    {
        return imwebview.s;
    }

    static View g(IMWebView imwebview)
    {
        return imwebview.k;
    }

    static Activity h(IMWebView imwebview)
    {
        return imwebview.t;
    }

    static FrameLayout i(IMWebView imwebview)
    {
        return imwebview.n;
    }

    static android.media.MediaPlayer.OnCompletionListener j(IMWebView imwebview)
    {
        return imwebview.F;
    }

    static VideoView k(IMWebView imwebview)
    {
        return imwebview.j;
    }

    static void l(IMWebView imwebview)
    {
        imwebview.d();
    }

    static ViewGroup m(IMWebView imwebview)
    {
        return imwebview.m;
    }

    static void n(IMWebView imwebview)
    {
        imwebview.WebView.destroy();
    }

    public static void setIMAIController(Class class1)
    {
        B = class1;
    }

    public void addJavascriptObject(Object obj, String s1)
    {
        addJavascriptInterface(obj, s1);
    }

    public void cancelLoad()
    {
        x.set(true);
    }

    public void clearView()
    {
        c();
        super.clearView();
    }

    public void close()
    {
        if (!v.hasMessages(1001))
        {
            v.sendEmptyMessage(1001);
        }
    }

    public void closeExpanded()
    {
        v.sendEmptyMessage(1005);
    }

    protected void closeOpened(View view)
    {
        ((ViewGroup)((Activity)getContext()).getWindow().getDecorView()).removeView(view);
        requestLayout();
    }

    public void closeResized()
    {
        v.sendEmptyMessage(1031);
    }

    public void closeVideo(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getVideoPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "closeVideo");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED)
        {
            raiseError("Invalid player state", "closeVideo");
            return;
        } else
        {
            mAudioVideoController.videoPlayerList.remove(s1);
            Message message = v.obtainMessage(1012);
            message.obj = avplayer;
            v.sendMessage(message);
            return;
        }
    }

    public void deinit()
    {
        if (getStateVariable() == ViewState.EXPANDED || getStateVariable() == ViewState.EXPANDING)
        {
            close();
        }
    }

    public void destroy()
    {
        Log.debug("[InMobi]-[RE]-4.3.0", "IMWebView: Destroy called.");
        close();
        class h
            implements Runnable
        {

            final IMWebView a;

            public void run()
            {
                if (a.getParent() != null)
                {
                    ((ViewGroup)a.getParent()).removeView(a);
                }
                a.b.set(true);
                IMWebView.n(a);
            }

            h()
            {
                a = IMWebView.this;
                super();
            }
        }

        postInHandler(new h());
    }

    public void disableHardwareAcceleration()
    {
        G = false;
        Log.internal("[InMobi]-[RE]-4.3.0", "disableHardwareAcceleration called.");
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            WrapperFunctions.disableHardwareAccl(this);
            mExpandController.disableEnableHardwareAccelerationForExpandWithURLView();
        }
    }

    public void doHidePlayers()
    {
        v.sendEmptyMessage(1023);
    }

    public void expand(String s1, com.inmobi.re.controller.JSController.ExpandProperties expandproperties)
    {
        setState(ViewState.EXPANDING);
        mExpandController.mIsExpandUrlValid = false;
        isMutexAquired.set(true);
        Message message = v.obtainMessage(1004);
        Bundle bundle = new Bundle();
        bundle.putString("expand_url", s1);
        message.setData(bundle);
        mExpandController.expandProperties = expandproperties;
        Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("Dimensions: {").append(mExpandController.expandProperties.x).append(" ,").append(mExpandController.expandProperties.y).append(" ,").append(mExpandController.expandProperties.width).append(" ,").append(mExpandController.expandProperties.height).append("}").toString());
        mExpandController.tempExpPropsLock = mExpandController.expandProperties.lockOrientation;
        v.sendMessage(message);
    }

    public void fireOnLeaveApplication()
    {
        if (mListener != null)
        {
            mListener.onLeaveApplication();
        }
    }

    public void fireOnShowAdScreen()
    {
        if (mListener != null && getStateVariable() == ViewState.DEFAULT && !mIsInterstitialAd)
        {
            IMBrowserActivity.requestOnAdDismiss(v.obtainMessage(1028));
            mListener.onShowAdScreen();
        }
    }

    public Activity getActivity()
    {
        return t;
    }

    public int getAudioVolume(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getCurrentAudioPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "getAudioVolume");
            return -1;
        } else
        {
            return avplayer.getVolume();
        }
    }

    public String getCurrentRotation(int i1)
    {
        switch (i1)
        {
        default:
            return "-1";

        case 0: // '\0'
            return "0";

        case 1: // '\001'
            return "90";

        case 2: // '\002'
            return "180";

        case 3: // '\003'
            return "270";
        }
    }

    public boolean getCustomClose()
    {
        return p;
    }

    public float getDensity()
    {
        return f;
    }

    public int getDismissMessage()
    {
        return 1028;
    }

    public int getIntegerCurrentRotation()
    {
        int i1 = InternalSDKUtil.getDisplayRotation(((WindowManager)t.getSystemService("window")).getDefaultDisplay());
        if (InternalSDKUtil.isDefOrientationLandscape(i1, t.getResources().getDisplayMetrics().widthPixels, t.getResources().getDisplayMetrics().heightPixels))
        {
            if (++i1 > 3)
            {
                i1 = 0;
            }
            if (InternalSDKUtil.isTablet(t.getApplicationContext()))
            {
                isTablet = true;
            }
        }
        return i1;
    }

    public double getLastGoodKnownMicValue()
    {
        return a;
    }

    public ArrayList getMRAIDUrls()
    {
        return w;
    }

    public int getOriginalIndex()
    {
        return z;
    }

    public ViewParent getOriginalParent()
    {
        if (y == null)
        {
            saveOriginalViewParent();
        }
        return y;
    }

    public String getPlacementType()
    {
        if (mIsInterstitialAd)
        {
            return "interstitial";
        } else
        {
            return "inline";
        }
    }

    public String getSize()
    {
        return (new StringBuilder()).append("{ width: ").append((int)((float)getWidth() / f)).append(", ").append("height: ").append((int)((float)getHeight() / f)).append("}").toString();
    }

    public String getState()
    {
        return i.toString().toLowerCase(Locale.ENGLISH);
    }

    public ViewState getStateVariable()
    {
        return i;
    }

    public int getVideoVolume(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getVideoPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "getVideoVolume");
            return -1;
        } else
        {
            return avplayer.getVolume();
        }
    }

    public ViewState getViewState()
    {
        return i;
    }

    public Handler getWebviewHandler()
    {
        return v;
    }

    public void hide()
    {
        v.sendEmptyMessage(1002);
    }

    public void hideVideo(String s1)
    {
        Message message = v.obtainMessage(1013);
        Bundle bundle = new Bundle();
        bundle.putString("pid", s1);
        message.setData(bundle);
        v.sendMessage(message);
    }

    public void incentCompleted(HashMap hashmap)
    {
        Message message = v.obtainMessage(1034);
        Bundle bundle = new Bundle();
        bundle.putSerializable("incent_ad_map", hashmap);
        message.setData(bundle);
        message.sendToTarget();
    }

    public void injectJavaScript(String s1)
    {
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        if (s1.length() < 400)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("Injecting JavaScript: ").append(s1).toString());
        }
        if (!e())
        {
            super.loadUrl((new StringBuilder()).append("javascript:try{").append(s1).append("}catch(e){}").toString());
        }
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[RE]-4.3.0", "Error injecting javascript ", exception);
        return;
    }

    public boolean isAudioMuted(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getCurrentAudioPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "isAudioMuted");
            return false;
        } else
        {
            return avplayer.isMediaMuted();
        }
    }

    public boolean isBusy()
    {
        return o;
    }

    public boolean isConfigChangesListed(Activity activity)
    {
        int i1 = android.os.Build.VERSION.SDK_INT;
        int j1 = a(activity);
        boolean flag;
        boolean flag1;
        if ((j1 & 0x10) == 0 || (j1 & 0x20) == 0 || (j1 & 0x80) == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (i1 >= 13 && ((j1 & 0x400) == 0 || (j1 & 0x800) == 0))
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        return flag && flag1;
    }

    public boolean isEnabledHardwareAcceleration()
    {
        return G;
    }

    public boolean isExpanded()
    {
        return i == ViewState.EXPANDED;
    }

    public boolean isLandscapeSyncOrientation(int i1)
    {
        return i1 == 1 || i1 == 3;
    }

    public boolean isModal()
    {
        return mIsInterstitialAd || i == ViewState.EXPANDED;
    }

    public boolean isPageFinished()
    {
        return d;
    }

    public boolean isPortraitSyncOrientation(int i1)
    {
        return i1 == 0 || i1 == 2;
    }

    public boolean isVideoMuted(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getVideoPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "isVideoMuted");
            return false;
        } else
        {
            return avplayer.isMediaMuted();
        }
    }

    public boolean isViewable()
    {
        return E;
    }

    public void loadData(String s1, String s2, String s3)
    {
        super.loadData(s1, s2, s3);
    }

    public void loadDataWithBaseURL(String s1, String s2, String s3, String s4, String s5)
    {
        if (i == ViewState.EXPANDED)
        {
            return;
        } else
        {
            b();
            super.loadDataWithBaseURL(s1, s2, s3, s4, s5);
            return;
        }
    }

    public void loadUrl(String s1)
    {
        if (i == ViewState.EXPANDED)
        {
            return;
        } else
        {
            b();
            super.loadUrl(s1);
            return;
        }
    }

    public void lockExpandOrientation(boolean flag, String s1)
    {
        int i1;
        int j1;
        try
        {
            if (!isConfigChangesListed(t))
            {
                return;
            }
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", "Exception handling the orientation ", exception);
            return;
        }
        i1 = t.getRequestedOrientation();
        if (i1 == 0 || i1 == 1)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        if (android.os.Build.VERSION.SDK_INT >= 9 && (i1 == 8 || i1 == 9 || i1 == 6 || i1 == 7) || !flag)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        j1 = getIntegerCurrentRotation();
        mExpandController.initialExpandOrientation = t.getRequestedOrientation();
        if (s1.equalsIgnoreCase("portrait"))
        {
            mExpandController.useLockOrient = true;
            t.setRequestedOrientation(WrapperFunctions.getParamPortraitOrientation(j1));
            return;
        }
        if (s1.equalsIgnoreCase("landscape"))
        {
            mExpandController.useLockOrient = true;
            t.setRequestedOrientation(WrapperFunctions.getParamLandscapeOrientation(j1));
        }
    }

    public void mediaPlayerReleased(AVPlayer avplayer)
    {
        mAudioVideoController.mediaPlayerReleased(avplayer);
    }

    public void muteAudio(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getCurrentAudioPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "muteAudio");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED)
        {
            raiseError("Invalid player state", "muteAudio");
            return;
        } else
        {
            Message message = v.obtainMessage(1019);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", s1);
            message.setData(bundle);
            message.sendToTarget();
            return;
        }
    }

    public void muteVideo(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getVideoPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "muteVideo");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED || avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.INIT)
        {
            raiseError("Invalid player state", "muteVideo");
            return;
        } else
        {
            Message message = v.obtainMessage(1015);
            message.obj = avplayer;
            v.sendMessage(message);
            return;
        }
    }

    protected void onAttachedToWindow()
    {
        Log.debug("[InMobi]-[RE]-4.3.0", "IMWebView-> onAttachedToWindow");
        saveOriginalViewParent();
        if (!q)
        {
            android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
            g = layoutparams.height;
            h = layoutparams.width;
            q = true;
        }
        e.registerBroadcastListener();
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow()
    {
        Log.debug("[InMobi]-[RE]-4.3.0", "IMWebView-> onDetatchedFromWindow");
        e.stopAllListeners();
        w.clear();
        e.unRegisterBroadcastListener();
        if (mIsInterstitialAd && !mWebViewIsBrowserActivity)
        {
            mInterstitialController.handleInterstitialClose();
        }
        super.onDetachedFromWindow();
    }

    protected void onIMWebviewVisibilityChanged(boolean flag)
    {
        if (E != flag)
        {
            E = flag;
            if (!doNotFireVisibilityChanged.get())
            {
                a(flag);
                return;
            }
        }
    }

    public void onOrientationEventChange()
    {
        v.sendEmptyMessage(1027);
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != 0 && j1 != 0)
        {
            if (!A)
            {
                a((int)((float)i1 / getDensity()), (int)((float)j1 / getDensity()));
            }
            A = false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        requestFocus();
        return super.onTouchEvent(motionevent);
    }

    protected void onWindowVisibilityChanged(int i1)
    {
        super.onWindowVisibilityChanged(i1);
        boolean flag;
        if (i1 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        onIMWebviewVisibilityChanged(flag);
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        if (e.supports("vibrate"))
        {
            ((Vibrator)t.getSystemService("vibrator")).cancel();
        }
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[RE]-4.3.0", "Failed to cancel existing vibration", exception);
        return;
    }

    public void openExternal(String s1)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(s1));
        intent.addFlags(0x10000000);
        try
        {
            getContext().startActivity(intent);
        }
        catch (Exception exception)
        {
            raiseError("Request must specify a valid URL", "openExternal");
            return;
        }
        if (mListener != null)
        {
            mListener.onLeaveApplication();
        }
    }

    public void openURL(String s1)
    {
        if (!isViewable())
        {
            raiseError("Cannot open URL.Ad is not viewable yet", "openURL");
            return;
        } else
        {
            Message message = v.obtainMessage(1024);
            Bundle bundle = new Bundle();
            bundle.putString("expand_url", s1);
            message.setData(bundle);
            v.sendMessage(message);
            return;
        }
    }

    public void pageFinishedCallbackForAdCreativeTesting(Message message)
    {
        s = message;
    }

    public void pauseAudio(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getCurrentAudioPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "pauseAudio");
        } else
        {
            if (avplayer.getState() != com.inmobi.re.controller.util.AVPlayer.playerState.PLAYING)
            {
                if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.INIT && !avplayer.isPrepared())
                {
                    avplayer.setAutoPlay(false);
                    return;
                } else
                {
                    raiseError("Invalid player state", "pauseAudio");
                    return;
                }
            }
            if (avplayer.isPlaying())
            {
                Message message = v.obtainMessage(1010);
                Bundle bundle = new Bundle();
                bundle.putString("aplayerref", s1);
                message.setData(bundle);
                message.sendToTarget();
                return;
            }
        }
    }

    public void pauseVideo(String s1)
    {
        Message message = v.obtainMessage(1011);
        Bundle bundle = new Bundle();
        bundle.putString("pid", s1);
        message.setData(bundle);
        v.sendMessage(message);
    }

    public void playAudio(String s1, boolean flag, boolean flag1, boolean flag2, String s2, String s3, String s4)
    {
        Object obj = mutex;
        obj;
        JVM INSTR monitorenter ;
        boolean flag3 = isMutexAquired.get();
        if (!flag3)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        mutex.wait();
_L1:
        obj;
        JVM INSTR monitorexit ;
        if (!mIsInterstitialAd && i != ViewState.EXPANDED)
        {
            raiseError("Cannot play audio.Ad is not in an expanded state", "playAudio");
            return;
        }
        break MISSING_BLOCK_LABEL_86;
        InterruptedException interruptedexception;
        interruptedexception;
        Log.debug("[InMobi]-[RE]-4.3.0", "mutex failed ", interruptedexception);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (!isViewable())
        {
            raiseError("Cannot play audio.Ad is not viewable yet", "playAudio");
            return;
        } else
        {
            com.inmobi.re.controller.JSController.PlayerProperties playerproperties = new com.inmobi.re.controller.JSController.PlayerProperties();
            playerproperties.setProperties(false, flag, flag1, flag2, s2, s3, s4);
            Bundle bundle = new Bundle();
            bundle.putString("expand_url", s1);
            bundle.putParcelable("player_properties", playerproperties);
            Message message = v.obtainMessage(1007);
            message.setData(bundle);
            v.sendMessage(message);
            return;
        }
    }

    public void playVideo(String s1, boolean flag, boolean flag1, boolean flag2, boolean flag3, com.inmobi.re.controller.JSController.Dimensions dimensions, String s2, 
            String s3, String s4)
    {
        Object obj = mutex;
        obj;
        JVM INSTR monitorenter ;
        boolean flag4 = isMutexAquired.get();
        if (!flag4)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        mutex.wait();
_L1:
        obj;
        JVM INSTR monitorexit ;
        if (!mIsInterstitialAd && i != ViewState.EXPANDED)
        {
            raiseError("Cannot play video.Ad is not in an expanded state", "playVideo");
            return;
        }
        break MISSING_BLOCK_LABEL_86;
        InterruptedException interruptedexception;
        interruptedexception;
        Log.debug("[InMobi]-[RE]-4.3.0", "mutex failed ", interruptedexception);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (!isViewable())
        {
            raiseError("Cannot play video.Ad is not viewable yet", "playVideo");
            return;
        }
        if (!mAudioVideoController.videoPlayerList.isEmpty() && mAudioVideoController.videoPlayerList.size() >= 5 && !mAudioVideoController.videoPlayerList.containsKey(s4))
        {
            raiseError("Player Error. Exceeding permissible limit for saved play instances", "playVideo");
            return;
        } else
        {
            Message message = v.obtainMessage(1006);
            com.inmobi.re.controller.JSController.PlayerProperties playerproperties = new com.inmobi.re.controller.JSController.PlayerProperties();
            playerproperties.setProperties(flag, flag1, flag2, flag3, s2, s3, s4);
            Bundle bundle = new Bundle();
            bundle.putString("expand_url", s1);
            bundle.putParcelable("player_properties", playerproperties);
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("Before validation dimension: (").append(dimensions.x).append(", ").append(dimensions.y).append(", ").append(dimensions.width).append(", ").append(dimensions.height).append(")").toString());
            mAudioVideoController.validateVideoDimensions(dimensions);
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("After validation dimension: (").append(dimensions.x).append(", ").append(dimensions.y).append(", ").append(dimensions.width).append(", ").append(dimensions.height).append(")").toString());
            bundle.putParcelable("expand_dimensions", dimensions);
            message.setData(bundle);
            v.sendMessage(message);
            return;
        }
    }

    public void postInHandler(Runnable runnable)
    {
        v.post(runnable);
    }

    public void postInjectJavaScript(String s1)
    {
        if (s1 != null)
        {
            if (s1.length() < 400)
            {
                Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("Injecting JavaScript: ").append(s1).toString());
            }
            Message message = v.obtainMessage(1025);
            Bundle bundle = new Bundle();
            bundle.putString("injectMessage", s1);
            message.setData(bundle);
            message.sendToTarget();
        }
    }

    public void raiseCameraPictureCapturedEvent(String s1, int i1, int j1)
    {
        String s2 = (new StringBuilder()).append("window.mraidview.fireCameraPictureCatpturedEvent('").append(s1).append("'").append(",").append("'").append(i1).append("','").append(j1).append("')").toString();
        class c
            implements Runnable
        {

            final String a;
            final IMWebView b;

            public void run()
            {
                b.injectJavaScript(a);
            }

            c(String s1)
            {
                b = IMWebView.this;
                a = s1;
                super();
            }
        }

        if (t != null)
        {
            t.runOnUiThread(new c(s2));
        }
    }

    public void raiseError(String s1, String s2)
    {
        Message message = v.obtainMessage(1008);
        Bundle bundle = new Bundle();
        bundle.putString("message", s1);
        bundle.putString("action", s2);
        message.setData(bundle);
        v.sendMessage(message);
    }

    public void raiseGalleryImageSelectedEvent(String s1, int i1, int j1)
    {
        String s2 = (new StringBuilder()).append("window.mraidview.fireGalleryImageSelectedEvent('").append(s1).append("'").append(",").append("'").append(i1).append("','").append(j1).append("')").toString();
        class g
            implements Runnable
        {

            final String a;
            final IMWebView b;

            public void run()
            {
                b.injectJavaScript(a);
            }

            g(String s1)
            {
                b = IMWebView.this;
                a = s1;
                super();
            }
        }

        if (t != null)
        {
            t.runOnUiThread(new g(s2));
        }
    }

    public void raiseMicEvent(double d1)
    {
        a = d1;
        String s1 = (new StringBuilder()).append("window.mraid.broadcastEvent('micIntensityChange',").append(d1).append(")").toString();
        class b
            implements Runnable
        {

            final String a;
            final IMWebView b;

            public void run()
            {
                b.injectJavaScript(a);
            }

            b(String s1)
            {
                b = IMWebView.this;
                a = s1;
                super();
            }
        }

        if (t != null)
        {
            t.runOnUiThread(new b(s1));
        }
    }

    public void raiseVibrateCompleteEvent()
    {
        class a
            implements Runnable
        {

            final IMWebView a;

            public void run()
            {
                try
                {
                    a.injectJavaScript("window.mraid.broadcastEvent('vibrateComplete')");
                    return;
                }
                catch (Exception exception)
                {
                    Log.internal("[InMobi]-[RE]-4.3.0", "Exception giviing vibration complete callback", exception);
                }
            }

            a()
            {
                a = IMWebView.this;
                super();
            }
        }

        if (t != null)
        {
            t.runOnUiThread(new a());
        }
    }

    public void requestOnInterstitialClosed(Message message)
    {
        mInterstitialController.mMsgOnInterstitialClosed = message;
    }

    public void requestOnInterstitialShown(Message message)
    {
        mInterstitialController.mMsgOnInterstitialShown = message;
    }

    public void requestOnPageFinishedCallback(Message message)
    {
        r = message;
    }

    public void resetLayout()
    {
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        if (q)
        {
            layoutparams.height = g;
            layoutparams.width = h;
        }
        setVisibility(0);
        requestLayout();
    }

    public void resetMraid()
    {
        mExpandController.reset();
        mResizeController.reset();
        e.reset();
    }

    public void resize(com.inmobi.re.controller.JSController.ResizeProperties resizeproperties)
    {
        setState(ViewState.RESIZING);
        isMutexAquired.set(true);
        Message message = v.obtainMessage(1030);
        mResizeController.resizeProperties = resizeproperties;
        v.sendMessage(message);
    }

    public void saveOriginalViewParent()
    {
        if (y == null)
        {
            y = getParent();
            if (y != null)
            {
                int i1 = ((ViewGroup)y).getChildCount();
                int j1 = 0;
                do
                {
                    if (j1 >= i1 || ((ViewGroup)y).getChildAt(j1) == this)
                    {
                        z = j1;
                        return;
                    }
                    j1++;
                } while (true);
            }
        }
    }

    public void seekAudio(String s1, int i1)
    {
        AVPlayer avplayer = mAudioVideoController.getCurrentAudioPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "seekAudio");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED)
        {
            raiseError("Invalid player state", "seekAudio");
            return;
        } else
        {
            Message message = v.obtainMessage(1022);
            Bundle bundle = new Bundle();
            bundle.putInt("seekaudio", i1);
            message.setData(bundle);
            message.obj = avplayer;
            message.sendToTarget();
            return;
        }
    }

    public void seekVideo(String s1, int i1)
    {
        AVPlayer avplayer = mAudioVideoController.getVideoPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "seekVideo");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED || avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.INIT)
        {
            raiseError("Invalid player state", "seekVideo");
            return;
        } else
        {
            Message message = v.obtainMessage(1018);
            Bundle bundle = new Bundle();
            bundle.putInt("seek", i1);
            message.setData(bundle);
            message.obj = avplayer;
            v.sendMessage(message);
            return;
        }
    }

    public void sendToCPHandler()
    {
        v.sendEmptyMessage(1029);
    }

    public void sendToDPHandler()
    {
        v.sendEmptyMessage(1032);
    }

    public void sendasyncPing(String s1)
    {
        e.asyncPing(s1);
    }

    public void setActivity(Activity activity)
    {
        t = activity;
    }

    public void setAudioVolume(String s1, int i1)
    {
        if (mAudioVideoController.getCurrentAudioPlayer(s1) == null)
        {
            raiseError("Invalid property ID", "setAudioVolume");
            return;
        } else
        {
            Message message = v.obtainMessage(1021);
            Bundle bundle = new Bundle();
            bundle.putInt("vol", i1);
            bundle.putString("aplayerref", s1);
            message.setData(bundle);
            message.sendToTarget();
            return;
        }
    }

    public void setBusy(boolean flag)
    {
        o = flag;
    }

    public void setCloseButton()
    {
        CustomView customview = (CustomView)((ViewGroup)getRootView()).findViewById(225);
        if (customview == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        if (getCustomClose())
        {
            customview.setSwitchInt(CustomView.SwitchIconType.CLOSE_TRANSPARENT);
            customview.invalidate();
            return;
        }
        try
        {
            customview.setSwitchInt(CustomView.SwitchIconType.CLOSE_BUTTON);
            customview.invalidate();
            return;
        }
        catch (Exception exception) { }
    }

    public void setCustomClose(boolean flag)
    {
        p = flag;
        Message message = v.obtainMessage(1009);
        v.sendMessage(message);
    }

    public void setExpandPropertiesForInterstitial(boolean flag, boolean flag1, String s1)
    {
        setCustomClose(flag);
        mInterstitialController.orientationValueForInterstitial = s1;
        mInterstitialController.lockOrientationValueForInterstitial = flag1;
        if (mWebViewIsBrowserActivity)
        {
            mExpandController.handleOrientationFor2Piece();
        }
        if (isViewable() && mIsInterstitialAd)
        {
            v.sendEmptyMessage(1026);
        }
    }

    public void setExternalWebViewClient(WebViewClient webviewclient)
    {
        u = webviewclient;
    }

    public void setOrientationPropertiesForInterstitial(boolean flag, String s1)
    {
        mInterstitialController.orientationValueForInterstitial = s1;
        mInterstitialController.lockOrientationValueForInterstitial = flag;
        if (mWebViewIsBrowserActivity)
        {
            mExpandController.handleOrientationFor2Piece();
        }
        if (isViewable() && mIsInterstitialAd)
        {
            v.sendEmptyMessage(1026);
        }
    }

    public void setOriginalParent(ViewParent viewparent)
    {
        y = viewparent;
    }

    public void setState(ViewState viewstate)
    {
        Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("State changing from ").append(i).append(" to ").append(viewstate).toString());
        i = viewstate;
        if (viewstate != ViewState.EXPANDING && viewstate != ViewState.RESIZING)
        {
            injectJavaScript((new StringBuilder()).append("window.mraid.broadcastEvent('stateChange','").append(getState()).append("');").toString());
        }
    }

    public void setVideoVolume(String s1, int i1)
    {
        AVPlayer avplayer = mAudioVideoController.getVideoPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "setVideoVolume");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED)
        {
            raiseError("Invalid player state", "setVideoVolume");
            return;
        } else
        {
            Message message = v.obtainMessage(1017);
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i1);
            message.setData(bundle);
            message.obj = avplayer;
            v.sendMessage(message);
            return;
        }
    }

    public void show()
    {
        v.sendEmptyMessage(1003);
    }

    public void showVideo(String s1)
    {
        Message message = v.obtainMessage(1014);
        Bundle bundle = new Bundle();
        bundle.putString("pid", s1);
        message.setData(bundle);
        v.sendMessage(message);
    }

    public void unMuteAudio(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getCurrentAudioPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "unmuteAudio");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED)
        {
            raiseError("Invalid player state", "unmuteAudio");
            return;
        } else
        {
            Message message = v.obtainMessage(1020);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", s1);
            message.setData(bundle);
            message.sendToTarget();
            return;
        }
    }

    public void unMuteVideo(String s1)
    {
        AVPlayer avplayer = mAudioVideoController.getVideoPlayer(s1);
        if (avplayer == null)
        {
            raiseError("Invalid property ID", "unMuteVideo");
            return;
        }
        if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED || avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.INIT)
        {
            raiseError("Invalid player state", "unMuteVideo");
            return;
        } else
        {
            Message message = v.obtainMessage(1016);
            message.obj = avplayer;
            v.sendMessage(message);
            return;
        }
    }

    public void userInteraction(HashMap hashmap)
    {
        Message message = v.obtainMessage(1033);
        Bundle bundle = new Bundle();
        bundle.putSerializable("map", hashmap);
        message.setData(bundle);
        message.sendToTarget();
    }


    // Unreferenced inner class com/inmobi/re/container/IMWebView$f
    class f
    {

        static final int a[];

        static 
        {
            a = new int[ViewState.values().length];
            try
            {
                a[ViewState.RESIZING.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[ViewState.RESIZED.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[ViewState.EXPANDING.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[ViewState.EXPANDED.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[ViewState.HIDDEN.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                a[ViewState.DEFAULT.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5)
            {
                return;
            }
        }
    }


    // Unreferenced inner class com/inmobi/re/container/a
    class a extends WebChromeClient
    {

        final IMWebView a;

        public void onGeolocationPermissionsShowPrompt(String s1, android.webkit.GeolocationPermissions.Callback callback)
        {
            try
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(IMWebView.h(a));
                builder.setTitle("Locations access");
                builder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new a.g(this, callback, s1)).setNegativeButton("Decline", new a.f(this, callback, s1));
                builder.create().show();
                super.onGeolocationPermissionsShowPrompt(s1, callback);
                return;
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "Exception while accessing location from creative ", exception);
            }
            callback.invoke(s1, false, false);
        }

        public boolean onJsAlert(WebView webview, String s1, String s2, JsResult jsresult)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> onJsAlert, ").append(s2).toString());
            try
            {
                (new android.app.AlertDialog.Builder(webview.getContext())).setTitle(s1).setMessage(s2).setPositiveButton(0x104000a, new a.c(this, jsresult)).setCancelable(false).create().show();
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "webchrome client exception onJSAlert ", exception);
            }
            return true;
        }

        public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
        {
            IMWebView.a(a, view);
            IMWebView.a(a, customviewcallback);
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("onShowCustomView ******************************").append(view).toString());
            FrameLayout framelayout;
            IMWebView.a(a, IMWebView.g(a), new a.b(this));
            IMWebView.g(a).setOnTouchListener(new a.e(this));
            if (!(view instanceof FrameLayout))
            {
                break MISSING_BLOCK_LABEL_345;
            }
            IMWebView.a(a, (FrameLayout)view);
            framelayout = (FrameLayout)IMWebView.h(a).findViewById(0x1020002);
            if (IMWebView.i(a).getFocusedChild() instanceof VideoView)
            {
                IMWebView.a(a, (VideoView)IMWebView.i(a).getFocusedChild());
                IMWebView.i(a).setBackgroundColor(0xff000000);
                IMWebView.k(a).setOnCompletionListener(IMWebView.j(a));
                IMWebView.k(a).setOnFocusChangeListener(new a.d(this));
                framelayout.addView(IMWebView.g(a), new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                Log.debug("[InMobi]-[RE]-4.3.0", "Registering");
                IMWebView.a(a, IMWebView.g(a), new a.h(this));
                return;
            }
            try
            {
                IMWebView.a(a, view);
                view.setBackgroundColor(0xff000000);
                Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("adding ").append(view).toString());
                framelayout.addView(view, new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                IMWebView.a(a, IMWebView.g(a), new a.a(this));
                return;
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "IMWebview onShowCustomView exception ", exception);
            }
        }

            a()
            {
                a = IMWebView.this;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$a
    class a.a
        implements android.view.View.OnKeyListener
    {

        final a a;

        public boolean onKey(View view, int i1, KeyEvent keyevent)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", "Back Button pressed when html5 video is playing");
            IMWebView.l(a.a);
            return false;
        }

            a.a(a a1)
            {
                a = a1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$b
    class a.b
        implements android.view.View.OnTouchListener
    {

        final a a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            return false;
        }

            a.b(a a1)
            {
                a = a1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$c
    class a.c
        implements android.content.DialogInterface.OnClickListener
    {

        final JsResult a;
        final a b;

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            a.confirm();
        }

            a.c(a a1, JsResult jsresult)
            {
                b = a1;
                a = jsresult;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$d
    class a.d
        implements android.view.View.OnFocusChangeListener
    {

        final a a;

        public void onFocusChange(View view, boolean flag)
        {
            IMWebView.k(a.a).requestFocus();
        }

            a.d(a a1)
            {
                a = a1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$e
    class a.e
        implements android.view.View.OnTouchListener
    {

        final a a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            return true;
        }

            a.e(a a1)
            {
                a = a1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$f
    class a.f
        implements android.content.DialogInterface.OnClickListener
    {

        final android.webkit.GeolocationPermissions.Callback a;
        final String b;
        final a c;

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            a.invoke(b, false, false);
        }

            a.f(a a1, android.webkit.GeolocationPermissions.Callback callback, String s1)
            {
                c = a1;
                a = callback;
                b = s1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$g
    class a.g
        implements android.content.DialogInterface.OnClickListener
    {

        final android.webkit.GeolocationPermissions.Callback a;
        final String b;
        final a c;

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            a.invoke(b, true, false);
        }

            a.g(a a1, android.webkit.GeolocationPermissions.Callback callback, String s1)
            {
                c = a1;
                a = callback;
                b = s1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/a$h
    class a.h
        implements android.view.View.OnKeyListener
    {

        final a a;

        public boolean onKey(View view, int i1, KeyEvent keyevent)
        {
            if (4 == keyevent.getKeyCode() && keyevent.getAction() == 0)
            {
                Log.debug("[InMobi]-[RE]-4.3.0", "Back Button pressed when html5 video is playing");
                IMWebView.k(a.a).stopPlayback();
                IMWebView.l(a.a);
            }
            return false;
        }

            a.h(a a1)
            {
                a = a1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/b
    class b extends WebViewClient
    {

        final IMWebView a;

        public void onLoadResource(WebView webview, String s1)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> onLoadResource:").append(s1).toString());
            String s2;
            try
            {
                if (IMWebView.a(a) != null)
                {
                    IMWebView.a(a).onLoadResource(webview, s1);
                }
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "Cannot load resource", exception);
                return;
            }
            if (s1 == null)
            {
                break MISSING_BLOCK_LABEL_181;
            }
            if (s1.contains("/mraid.js") && !a.getUrl().equals("about:blank") && !a.getUrl().startsWith("file:"))
            {
                Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object at ").append(webview.getUrl()).toString());
                s2 = a.getUrl();
                if (!IMWebView.d(a).contains(s2))
                {
                    IMWebView.d(a).add(s2);
                }
                if (!a.mraidLoaded)
                {
                    a.injectJavaScript(Initializer.getMRAIDString());
                }
                a.mraidLoaded = true;
            }
        }

        public void onPageFinished(WebView webview, String s1)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> onPageFinished, url: ").append(s1).toString());
            if (IMWebView.a(a) != null)
            {
                IMWebView.a(a).onPageFinished(webview, s1);
            }
            if (IMWebView.d(a).contains(s1) && !a.mraidLoaded)
            {
                a.injectJavaScript(Initializer.getMRAIDString());
            }
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> Current State:").append(IMWebView.b(a)).toString());
            if (IMWebView.b(a) != ViewState.LOADING)
            {
                break MISSING_BLOCK_LABEL_291;
            }
            a.injectJavaScript("window.mraid.broadcastEvent('ready');");
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> Firing ready event at ").append(webview).toString());
            if (a.mOriginalWebviewForExpandUrl == null)
            {
                break MISSING_BLOCK_LABEL_269;
            }
            a.setState(ViewState.EXPANDED);
_L2:
            if ((!a.mIsInterstitialAd || a.mWebViewIsBrowserActivity) && a.getVisibility() == 4)
            {
                a.setVisibility(0);
            }
            if (IMWebView.e(a) != null && !IMWebView.c(a).get())
            {
                IMWebView.e(a).sendToTarget();
            }
            if (IMWebView.f(a) != null)
            {
                IMWebView.f(a).sendToTarget();
                return;
            }
            break MISSING_BLOCK_LABEL_291;
            a.setState(ViewState.DEFAULT);
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            Log.debug("[InMobi]-[RE]-4.3.0", "Exception in onPageFinished ", exception);
        }

        public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
        {
            a.setState(ViewState.LOADING);
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> onPageStarted url: ").append(s1).append(" p ").append(a.getParent()).toString());
            if (a.getParent() == null)
            {
                IMWebView.a(a, true);
            }
            if (IMWebView.a(a) != null)
            {
                IMWebView.a(a).onPageStarted(webview, s1, bitmap);
            }
            a.mraidLoaded = false;
        }

        public void onReceivedError(WebView webview, int i1, String s1, String s2)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> error: ").append(s1).toString());
            if (IMWebView.a(a) != null)
            {
                IMWebView.a(a).onReceivedError(webview, i1, s1, s2);
            }
            try
            {
                if (IMWebView.b(a) == ViewState.LOADING && a.mListener != null && !IMWebView.c(a).get())
                {
                    a.mListener.onError();
                }
                IMWebView.a(a, null);
                return;
            }
            catch (Exception exception)
            {
                Log.debug("[InMobi]-[RE]-4.3.0", "Exception in webview loading ", exception);
            }
        }

        public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            IMWebView.a(a, sslerrorhandler, sslerror);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s1)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> shouldOverrideUrlLoading, url:").append(s1).append("webview id").append(webview).toString());
            if (!a.mWebViewIsBrowserActivity)
            {
                break MISSING_BLOCK_LABEL_91;
            }
            if (!s1.startsWith("http:") && !s1.startsWith("https:"))
            {
                break MISSING_BLOCK_LABEL_70;
            }
            a.doHidePlayers();
            return false;
            try
            {
                IMWebView.a(a, s1);
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "Should override exception", exception);
                return false;
            }
            return true;
            IMWebView.a(a, s1);
            return true;
        }

            b()
            {
                a = IMWebView.this;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/re/container/c
    class c
        implements android.media.MediaPlayer.OnCompletionListener
    {

        final IMWebView a;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            try
            {
                mediaplayer.stop();
                IMWebView.i(a).setVisibility(8);
                IMWebView.l(a);
                IMWebView.h(a).setContentView(IMWebView.m(a));
                return;
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "Media Player onCompletion", exception);
            }
        }

            c()
            {
                a = IMWebView.this;
                super();
            }
    }


    private class ViewState extends Enum
    {

        public static final ViewState DEFAULT;
        public static final ViewState EXPANDED;
        public static final ViewState EXPANDING;
        public static final ViewState HIDDEN;
        public static final ViewState LOADING;
        public static final ViewState RESIZED;
        public static final ViewState RESIZING;
        private static final ViewState a[];

        public static ViewState valueOf(String s1)
        {
            return (ViewState)Enum.valueOf(com/inmobi/re/container/IMWebView$ViewState, s1);
        }

        public static ViewState[] values()
        {
            return (ViewState[])a.clone();
        }

        static 
        {
            LOADING = new ViewState("LOADING", 0);
            DEFAULT = new ViewState("DEFAULT", 1);
            RESIZED = new ViewState("RESIZED", 2);
            EXPANDED = new ViewState("EXPANDED", 3);
            EXPANDING = new ViewState("EXPANDING", 4);
            HIDDEN = new ViewState("HIDDEN", 5);
            RESIZING = new ViewState("RESIZING", 6);
            ViewState aviewstate[] = new ViewState[7];
            aviewstate[0] = LOADING;
            aviewstate[1] = DEFAULT;
            aviewstate[2] = RESIZED;
            aviewstate[3] = EXPANDED;
            aviewstate[4] = EXPANDING;
            aviewstate[5] = HIDDEN;
            aviewstate[6] = RESIZING;
            a = aviewstate;
        }

        private ViewState(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private class j extends Handler
    {

        private final WeakReference a;
        private final WeakReference b;
        private final WeakReference c;
        private final WeakReference d;
        private final WeakReference e;
        private final WeakReference f;

        public void handleMessage(Message message)
        {
            IMWebView imwebview;
            MRAIDBasic mraidbasic;
            MRAIDExpandController mraidexpandcontroller;
            MRAIDResizeController mraidresizecontroller;
            MRAIDInterstitialController mraidinterstitialcontroller;
            MRAIDAudioVideoController mraidaudiovideocontroller;
            Bundle bundle;
            try
            {
                imwebview = (IMWebView)a.get();
                mraidbasic = (MRAIDBasic)d.get();
                mraidexpandcontroller = (MRAIDExpandController)b.get();
                mraidresizecontroller = (MRAIDResizeController)c.get();
                mraidinterstitialcontroller = (MRAIDInterstitialController)e.get();
                mraidaudiovideocontroller = (MRAIDAudioVideoController)f.get();
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "Webview Handle Message Exception ", exception);
                return;
            }
            if (imwebview == null) goto _L2; else goto _L1
_L1:
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView->handleMessage: msg: ").append(message).toString());
            bundle = message.getData();
            message.what;
            JVM INSTR tableswitch 1001 1034: default 260
        //                       1001 314
        //                       1002 404
        //                       1003 419
        //                       1004 453
        //                       1005 295
        //                       1006 501
        //                       1007 473
        //                       1008 1053
        //                       1009 1118
        //                       1010 529
        //                       1011 692
        //                       1012 769
        //                       1013 783
        //                       1014 858
        //                       1015 981
        //                       1016 994
        //                       1017 1032
        //                       1018 1007
        //                       1019 562
        //                       1020 595
        //                       1021 628
        //                       1022 668
        //                       1023 1125
        //                       1024 1133
        //                       1025 1149
        //                       1026 1192
        //                       1027 1200
        //                       1028 1215
        //                       1029 1234
        //                       1030 433
        //                       1031 266
        //                       1032 1242
        //                       1033 1250
        //                       1034 1286;
               goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36
_L2:
            super.handleMessage(message);
            return;
_L33:
            if (imwebview.mListener == null) goto _L2; else goto _L37
_L37:
            imwebview.mListener.onResizeClose();
              goto _L2
_L7:
            if (imwebview.mListener == null) goto _L2; else goto _L38
_L38:
            imwebview.mListener.onExpandClose();
              goto _L2
_L3:
    class f
    {

        static final int a[];

        static 
        {
            a = new int[ViewState.values().length];
            try
            {
                a[ViewState.RESIZING.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[ViewState.RESIZED.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[ViewState.EXPANDING.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[ViewState.EXPANDED.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[ViewState.HIDDEN.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                a[ViewState.DEFAULT.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5)
            {
                return;
            }
        }
    }

            f.a[IMWebView.b(imwebview).ordinal()];
            JVM INSTR tableswitch 1 5: default 360
        //                       1 375
        //                       2 375
        //                       3 383
        //                       4 383
        //                       5 260;
               goto _L39 _L40 _L40 _L41 _L41 _L2
_L39:
            if (!imwebview.mIsInterstitialAd) goto _L43; else goto _L42
_L42:
            mraidinterstitialcontroller.resetContentsForInterstitials();
              goto _L2
_L40:
            mraidresizecontroller.closeResized();
              goto _L2
_L41:
            mraidexpandcontroller.closeExpanded();
            mraidexpandcontroller.mIsExpandUrlValid = false;
              goto _L2
_L43:
            imwebview.hide();
              goto _L2
_L4:
            imwebview.setVisibility(4);
            imwebview.setState(ViewState.HIDDEN);
              goto _L2
_L5:
            imwebview.injectJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
            imwebview.setVisibility(0);
              goto _L2
_L32:
            if (IMWebView.b(imwebview) != ViewState.RESIZING) goto _L2; else goto _L44
_L44:
            mraidresizecontroller.doResize(bundle);
              goto _L2
_L6:
            if (IMWebView.b(imwebview) != ViewState.EXPANDING) goto _L2; else goto _L45
_L45:
            mraidexpandcontroller.doExpand(bundle);
              goto _L2
_L9:
            mraidaudiovideocontroller.playAudioImpl(bundle, IMWebView.h(imwebview));
              goto _L2
            Exception exception2;
            exception2;
            Log.debug("[InMobi]-[RE]-4.3.0", "Play audio failed ", exception2);
              goto _L2
_L8:
            mraidaudiovideocontroller.playVideoImpl(bundle, IMWebView.h(imwebview));
              goto _L2
            Exception exception1;
            exception1;
            Log.debug("[InMobi]-[RE]-4.3.0", "Play video failed ", exception1);
              goto _L2
_L12:
            AVPlayer avplayer6 = (AVPlayer)mraidaudiovideocontroller.audioPlayerList.get(bundle.getString("aplayerref"));
            if (avplayer6 == null) goto _L2; else goto _L46
_L46:
            avplayer6.pause();
              goto _L2
_L21:
            AVPlayer avplayer5 = (AVPlayer)mraidaudiovideocontroller.audioPlayerList.get(bundle.getString("aplayerref"));
            if (avplayer5 == null) goto _L2; else goto _L47
_L47:
            avplayer5.mute();
              goto _L2
_L22:
            AVPlayer avplayer4 = (AVPlayer)mraidaudiovideocontroller.audioPlayerList.get(bundle.getString("aplayerref"));
            if (avplayer4 == null) goto _L2; else goto _L48
_L48:
            avplayer4.unMute();
              goto _L2
_L23:
            AVPlayer avplayer3 = (AVPlayer)mraidaudiovideocontroller.audioPlayerList.get(bundle.getString("aplayerref"));
            if (avplayer3 == null) goto _L2; else goto _L49
_L49:
            avplayer3.setVolume(bundle.getInt("vol"));
              goto _L2
_L24:
            ((AVPlayer)message.obj).seekPlayer(1000 * bundle.getInt("seekaudio"));
              goto _L2
_L13:
            AVPlayer avplayer2 = mraidaudiovideocontroller.getVideoPlayer(bundle.getString("pid"));
            if (avplayer2 != null) goto _L51; else goto _L50
_L50:
            String s8 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"pauseVideo\")";
_L71:
            imwebview.injectJavaScript(s8);
              goto _L2
_L51:
            if (avplayer2.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.PLAYING) goto _L53; else goto _L52
_L52:
            if (avplayer2.getState() != com.inmobi.re.controller.util.AVPlayer.playerState.INIT) goto _L55; else goto _L54
_L54:
            if (!avplayer2.isPrepared())
            {
                avplayer2.setAutoPlay(false);
            }
              goto _L2
_L53:
            avplayer2.pause();
            return;
_L14:
            ((AVPlayer)message.obj).releasePlayer(false);
              goto _L2
_L15:
            String s6;
            AVPlayer avplayer1;
            s6 = bundle.getString("pid");
            avplayer1 = mraidaudiovideocontroller.getVideoPlayer(s6);
            if (avplayer1 != null) goto _L57; else goto _L56
_L56:
            String s7 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"hideVideo\")";
_L60:
            imwebview.injectJavaScript(s7);
              goto _L2
_L57:
            if (avplayer1.getState() != com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED) goto _L59; else goto _L58
_L58:
            s7 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"hideVideo\")";
              goto _L60
_L59:
            mraidaudiovideocontroller.videoPlayerList.put(s6, avplayer1);
            avplayer1.hide();
            return;
_L16:
            String s4;
            AVPlayer avplayer;
            s4 = bundle.getString("pid");
            avplayer = mraidaudiovideocontroller.getVideoPlayer(s4);
            if (avplayer != null) goto _L62; else goto _L61
_L61:
            String s5 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"showVideo\")";
_L65:
            imwebview.injectJavaScript(s5);
              goto _L2
_L62:
            if (avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.RELEASED || avplayer.getState() == com.inmobi.re.controller.util.AVPlayer.playerState.HIDDEN) goto _L64; else goto _L63
_L63:
            s5 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"showVideo\")";
              goto _L65
_L64:
            if (mraidaudiovideocontroller.videoPlayer == null || mraidaudiovideocontroller.videoPlayer.getPropertyID().equalsIgnoreCase(s4)) goto _L67; else goto _L66
_L66:
            s5 = "window.mraid.broadcastEvent('error',\"Show failed. There is already a video playing\", \"showVideo\")";
              goto _L65
_L67:
            mraidaudiovideocontroller.videoPlayerList.remove(s4);
            mraidaudiovideocontroller.videoPlayer = avplayer;
            avplayer.show();
            return;
_L17:
            ((AVPlayer)message.obj).mute();
              goto _L2
_L18:
            ((AVPlayer)message.obj).unMute();
              goto _L2
_L20:
            ((AVPlayer)message.obj).seekPlayer(1000 * bundle.getInt("seek"));
              goto _L2
_L19:
            ((AVPlayer)message.obj).setVolume(bundle.getInt("volume"));
              goto _L2
_L10:
            String s2 = bundle.getString("message");
            String s3 = bundle.getString("action");
            imwebview.injectJavaScript((new StringBuilder()).append("window.mraid.broadcastEvent('error',\"").append(s2).append("\", \"").append(s3).append("\")").toString());
              goto _L2
_L11:
            imwebview.setCloseButton();
              goto _L2
_L25:
            mraidaudiovideocontroller.hidePlayers();
              goto _L2
_L26:
            mraidbasic.open(bundle.getString("expand_url"));
              goto _L2
_L27:
            String s1 = bundle.getString("injectMessage");
            if (s1 == null) goto _L2; else goto _L68
_L68:
            imwebview.loadUrl((new StringBuilder()).append("javascript:").append(s1).toString());
              goto _L2
_L28:
            mraidinterstitialcontroller.handleOrientationForInterstitial();
              goto _L2
_L29:
            if (imwebview.mIsInterstitialAd) goto _L2; else goto _L69
_L69:
            mraidresizecontroller.onOrientationChange();
              goto _L2
_L30:
            if (imwebview.mListener == null) goto _L2; else goto _L70
_L70:
            imwebview.mListener.onDismissAdScreen();
              goto _L2
_L31:
            mraidbasic.getCurrentPosition();
              goto _L2
_L34:
            mraidbasic.getDefaultPosition();
              goto _L2
_L35:
            HashMap hashmap1 = (HashMap)message.getData().getSerializable("map");
            if (imwebview.mListener != null)
            {
                imwebview.mListener.onUserInteraction(hashmap1);
            }
              goto _L2
_L36:
            HashMap hashmap = (HashMap)message.getData().getSerializable("incent_ad_map");
            if (imwebview.mListener != null)
            {
                imwebview.mListener.onIncentCompleted(hashmap);
            }
              goto _L2
_L55:
            s8 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"pauseVideo\")";
              goto _L71
        }

        public j(MRAIDBasic mraidbasic, MRAIDExpandController mraidexpandcontroller, MRAIDInterstitialController mraidinterstitialcontroller, MRAIDAudioVideoController mraidaudiovideocontroller, MRAIDResizeController mraidresizecontroller)
        {
            a = new WeakReference(IMWebView.this);
            b = new WeakReference(mraidexpandcontroller);
            d = new WeakReference(mraidbasic);
            e = new WeakReference(mraidinterstitialcontroller);
            f = new WeakReference(mraidaudiovideocontroller);
            c = new WeakReference(mraidresizecontroller);
        }
    }


    private class IMWebViewListener
    {

        public abstract void onDismissAdScreen();

        public abstract void onError();

        public abstract void onExpand();

        public abstract void onExpandClose();

        public abstract void onIncentCompleted(Map map);

        public abstract void onLeaveApplication();

        public abstract void onResize(ResizeDimensions resizedimensions);

        public abstract void onResizeClose();

        public abstract void onShowAdScreen();

        public abstract void onUserInteraction(Map map);
    }

}
