// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.NetworkEventType;
import com.inmobi.androidsdk.carb.CARB;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.androidsdk.impl.ConnBroadcastReciever;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.androidsdk.impl.net.Response;
import com.inmobi.commons.AnimationType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.inmobi.androidsdk:
//            AdRequest, d, c, b, 
//            a, BannerViewListener

public final class BannerView extends RelativeLayout
{

    public static final int INMOBI_AD_UNIT_120X600 = 13;
    public static final int INMOBI_AD_UNIT_300X250 = 10;
    public static final int INMOBI_AD_UNIT_320X48 = 9;
    public static final int INMOBI_AD_UNIT_320X50 = 15;
    public static final int INMOBI_AD_UNIT_468X60 = 12;
    public static final int INMOBI_AD_UNIT_728X90 = 11;
    public static final String INMOBI_INTERNAL_TAG = "ref-__in__rt";
    public static final String INMOBI_REF_TAG = "ref-tag";
    private d A;
    private android.view.animation.Animation.AnimationListener B;
    private HttpRequestCallback C;
    private com.inmobi.re.container.IMWebView.IMWebViewListener D;
    private boolean E;
    private IMWebView a;
    private IMWebView b;
    private IMWebView c;
    private Activity d;
    private boolean e;
    private UserInfo f;
    private AtomicBoolean g;
    private AtomicBoolean h;
    private Animation i;
    private Animation j;
    private String k;
    private String l;
    private BannerViewListener m;
    private AdRequest n;
    private String o;
    private int p;
    private long q;
    private long r;
    private long s;
    private boolean t;
    private AnimationType u;
    private boolean v;
    private a w;
    private String x;
    private RequestResponseManager y;
    private boolean z;

    public BannerView(Activity activity, int i1, String s1)
    {
        this(((Context) (activity)));
        a(activity, i1, s1);
    }

    public BannerView(Activity activity, int i1, String s1, long l1)
    {
        this(((Context) (activity)));
        q = l1;
        a(activity, i1, s1);
    }

    private BannerView(Context context)
    {
        super(context);
        e = true;
        g = new AtomicBoolean();
        h = new AtomicBoolean();
        k = null;
        l = null;
        n = new AdRequest();
        q = -1L;
        r = 0L;
        s = 0L;
        t = true;
        u = AnimationType.ROTATE_HORIZONTAL_AXIS;
        v = true;
        x = "http://i.w.inmobi.com/showad.asm";
        A = new d();
        B = new com.inmobi.androidsdk.d(this);
        C = new c(this);
        D = new b(this);
        E = true;
    }

    public BannerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = true;
        g = new AtomicBoolean();
        h = new AtomicBoolean();
        k = null;
        l = null;
        n = new AdRequest();
        q = -1L;
        r = 0L;
        s = 0L;
        t = true;
        u = AnimationType.ROTATE_HORIZONTAL_AXIS;
        v = true;
        x = "http://i.w.inmobi.com/showad.asm";
        A = new d();
        B = new com.inmobi.androidsdk.d(this);
        C = new c(this);
        D = new b(this);
        E = true;
        if (attributeset == null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Missing attributes in xml layout of IMAdview ");
            return;
        }
        String s1 = attributeset.getAttributeValue(null, "appId");
        int i1 = attributeset.getAttributeIntValue(null, "adSize", -1);
        String s2 = attributeset.getAttributeValue(null, "slotId");
        if (s2 != null)
        {
            q = Long.parseLong(s2);
        }
        a((Activity)context, i1, s1);
    }

    static BannerViewListener a(BannerView bannerview)
    {
        return bannerview.m;
    }

    static IMWebView a(BannerView bannerview, IMWebView imwebview)
    {
        bannerview.a = imwebview;
        return imwebview;
    }

    static String a(BannerView bannerview, String s1)
    {
        bannerview.k = s1;
        return s1;
    }

    private void a(int i1)
    {
        if (i1 < 0)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Invalid Ad Size. Please provide a valid Ad Size. If Ad Size is declared in the layout XML, please provide a valid 'adSize' attribute in the 'com.inmobi.androidsdk.IMAdView' tag of layout XML. For example, adSize=\"yourAdSize\"");
        }
    }

    private void a(int i1, AdRequest.ErrorCode errorcode)
    {
        class b
            implements Runnable
        {

            final BannerView a;

            public void run()
            {
                a.disableHardwareAcceleration();
            }

            b()
            {
                a = BannerView.this;
                super();
            }
        }

        if (!E)
        {
            d.runOnUiThread(new b());
        }
        if (!v)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "IMAdView not sending callback because the view is not added to any window.");
        } else
        if (m != null)
        {
            class a
                implements Runnable
            {

                final int a;
                final AdRequest.ErrorCode b;
                final BannerView c;

                public void run()
                {
                    a;
                    JVM INSTR tableswitch 100 106: default 48
                //                               100 61
                //                               101 88
                //                               102 218
                //                               103 201
                //                               104 235
                //                               105 252
                //                               106 269;
                       goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
                    Log.debug("[InMobi]-[Network]-4.3.0", b.toString());
                    return;
_L2:
                    try
                    {
                        BannerView.a(c).onAdRequestCompleted(c);
                        return;
                    }
                    catch (Exception exception)
                    {
                        Log.debug("[InMobi]-[Network]-4.3.0", "Exception giving callback to the publisher ", exception);
                    }
                    return;
_L3:
                    class c
                    {

                        static final int a[];

                        static 
                        {
                            a = new int[AdRequest.ErrorCode.values().length];
                            try
                            {
                                a[AdRequest.ErrorCode.AD_CLICK_IN_PROGRESS.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                a[AdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                a[AdRequest.ErrorCode.NO_FILL.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2) { }
                            try
                            {
                                a[AdRequest.ErrorCode.INVALID_APP_ID.ordinal()] = 4;
                            }
                            catch (NoSuchFieldError nosuchfielderror3)
                            {
                                return;
                            }
                        }
                    }

                    c.a[b.ordinal()];
                    JVM INSTR tableswitch 1 4: default 128
                //                               1 161
                //                               2 171
                //                               3 181
                //                               4 191;
                       goto _L9 _L10 _L11 _L12 _L13
_L9:
                    Log.debug("[InMobi]-[Network]-4.3.0", b.toString());
_L14:
                    BannerView.a(c).onAdRequestFailed(c, b);
                    return;
_L10:
                    Log.debug("[InMobi]-[Network]-4.3.0", "Ad click in progress. Your request cannot be processed at this time. Try again later.");
                      goto _L14
_L11:
                    Log.debug("[InMobi]-[Network]-4.3.0", "Ad download in progress. Your request cannot be processed at this time. Try again later.");
                      goto _L14
_L12:
                    Log.debug("[InMobi]-[Network]-4.3.0", "Ad request successful, but no ad was returned due to lack of ad inventory.");
                      goto _L14
_L13:
                    Log.debug("[InMobi]-[Network]-4.3.0", "Your App Id may be invalid or inactive. Please verify the app ID");
                      goto _L14
_L5:
                    BannerView.a(c).onDismissAdScreen(c);
                    return;
_L4:
                    BannerView.a(c).onShowAdScreen(c);
                    return;
_L6:
                    BannerView.a(c).onLeaveApplication(c);
                    return;
_L7:
                    BannerView.a(c).onShowAdScreen(c);
                    return;
_L8:
                    BannerView.a(c).onDismissAdScreen(c);
                    return;
                }

            a(int i1, AdRequest.ErrorCode errorcode)
            {
                c = BannerView.this;
                a = i1;
                b = errorcode;
                super();
            }
            }

            d.runOnUiThread(new a(i1, errorcode));
            return;
        }
    }

    private void a(Activity activity, int i1, String s1)
    {
        try
        {
            SDKUtil.validateAdConfiguration(activity);
        }
        catch (ConfigException configexception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "IMConfigException occured while initializing interstitial while validating adView", configexception);
        }
        InternalSDKUtil.getUserAgent(activity.getApplicationContext());
        a(i1);
        o = s1;
        p = i1;
        d = SDKUtil.getRootActivity(activity);
        IMWebView.setIMAIController(com/inmobi/androidsdk/impl/imai/IMAIController);
        try
        {
            String s2 = UIDHelper.getAndroidId(activity.getApplicationContext());
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Publisher device Id is ").append(UIDHelper.getODIN1(s2)).toString());
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Cannot get publisher device id", exception);
        }
        if (a == null)
        {
            a = new IMWebView(d, D, false, false);
            if (!E)
            {
                a.disableHardwareAcceleration();
            }
            a.addJavascriptInterface(new IMAIController(a), "imaiController");
        }
        if (b == null)
        {
            b = new IMWebView(d, D, false, false);
            if (!E)
            {
                b.disableHardwareAcceleration();
            }
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            c = b;
            addView(b, layoutparams);
            b.addJavascriptInterface(new IMAIController(b), "imaiController");
        }
        d();
        w = new a(this, B);
        d.getApplicationContext().registerReceiver(new ConnBroadcastReciever(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    static void a(BannerView bannerview, int i1, AdRequest.ErrorCode errorcode)
    {
        bannerview.a(i1, errorcode);
    }

    static void a(BannerView bannerview, boolean flag)
    {
        bannerview.a(flag);
    }

    private void a(String s1)
    {
        if (s1 != null)
        {
            if (android.os.Build.VERSION.SDK_INT <= 8)
            {
                s1.replaceAll("%", "%25");
            }
            IMWebView imwebview;
            if (i())
            {
                if (a == null)
                {
                    a = new IMWebView(d, D, false, false);
                    if (!E)
                    {
                        a.disableHardwareAcceleration();
                    }
                }
                imwebview = a;
            } else
            {
                if (b == null)
                {
                    b = new IMWebView(d, D, false, false);
                    if (!E)
                    {
                        b.disableHardwareAcceleration();
                    }
                }
                imwebview = b;
            }
            imwebview.addJavascriptInterface(new IMAIController(imwebview), "imaiController");
            imwebview.requestOnPageFinishedCallback(A.obtainMessage(101));
            r = System.currentTimeMillis();
            A.sendEmptyMessageDelayed(108, Initializer.getConfigParams().getRenderTimeOut());
            imwebview.resetMraid();
            imwebview.loadDataWithBaseURL("", s1, "text/html", null, null);
            return;
        } else
        {
            a(false);
            Log.debug("[InMobi]-[Network]-4.3.0", "Cannot load Ad. Invalid Ad Response");
            a(101, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
    }

    private void a(boolean flag)
    {
        g.set(flag);
    }

    static long b(BannerView bannerview)
    {
        return bannerview.s;
    }

    static IMWebView b(BannerView bannerview, IMWebView imwebview)
    {
        bannerview.b = imwebview;
        return imwebview;
    }

    static void b(BannerView bannerview, String s1)
    {
        bannerview.a(s1);
    }

    private void b(boolean flag)
    {
        h.set(flag);
    }

    static boolean b(BannerView bannerview, boolean flag)
    {
        bannerview.t = flag;
        return flag;
    }

    static IMWebView c(BannerView bannerview, IMWebView imwebview)
    {
        bannerview.c = imwebview;
        return imwebview;
    }

    static String c(BannerView bannerview, String s1)
    {
        bannerview.l = s1;
        return s1;
    }

    private void c()
    {
        int i1;
        float f1;
        i1 = 320;
        f1 = d.getResources().getDisplayMetrics().density;
        p;
        JVM INSTR tableswitch 9 15: default 185
    //                   9 115
    //                   10 122
    //                   11 134
    //                   12 145
    //                   13 156
    //                   14 185
    //                   15 167;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L1 _L7
_L11:
        int j1;
        if (i1 == 0 || j1 == 0) goto _L9; else goto _L8
_L8:
        int k1;
        int l1;
        k1 = (int)(f1 * (float)i1);
        l1 = (int)(f1 * (float)j1);
        getLayoutParams().height = l1;
        getLayoutParams().width = k1;
        setLayoutParams(getLayoutParams());
_L9:
        return;
_L2:
        j1 = 48;
        continue; /* Loop/switch isn't completed */
_L3:
        i1 = 300;
        j1 = 250;
        continue; /* Loop/switch isn't completed */
_L4:
        i1 = 729;
        j1 = 90;
        continue; /* Loop/switch isn't completed */
_L5:
        i1 = 468;
        j1 = 60;
        continue; /* Loop/switch isn't completed */
_L6:
        i1 = 120;
        j1 = 600;
        continue; /* Loop/switch isn't completed */
_L7:
        j1 = 50;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Cannot set default size for adview", exception);
        return;
_L1:
        j1 = 0;
        i1 = 0;
        if (true) goto _L11; else goto _L10
_L10:
    }

    static void c(BannerView bannerview, boolean flag)
    {
        bannerview.b(flag);
    }

    private void c(boolean flag)
    {
        e = flag;
        if (flag)
        {
            a.deinit();
            a = null;
            return;
        } else
        {
            b.deinit();
            b = null;
            return;
        }
    }

    static boolean c(BannerView bannerview)
    {
        return bannerview.z;
    }

    static String d(BannerView bannerview)
    {
        return bannerview.l;
    }

    private void d()
    {
        if (f == null)
        {
            f = new UserInfo(d);
            DisplayMetrics displaymetrics = new DisplayMetrics();
            d.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            float f1 = displaymetrics.density;
            Display display = ((WindowManager)d.getSystemService("window")).getDefaultDisplay();
            int i1 = (int)((float)WrapperFunctions.getDisplayWidth(display) / f1);
            int j1 = (int)((float)WrapperFunctions.getDisplayHeight(display) / f1);
            f.setScreenDensity(String.valueOf(f1));
            f.setScreenSize((new StringBuilder()).append("").append(i1).append("X").append(j1).toString());
            try
            {
                if (a != null && f.getPhoneDefaultUserAgent().equals(""))
                {
                    f.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(d.getApplicationContext()));
                }
            }
            catch (Exception exception)
            {
                Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Exception occured while setting user agent").append(exception).toString());
            }
        }
        f.setAdUnitSlot(String.valueOf(p));
        if (q != -1L)
        {
            f.setSlotId(Long.toString(q));
        }
        f.updateInfo(o, n);
    }

    static void d(BannerView bannerview, boolean flag)
    {
        bannerview.c(flag);
    }

    static String e(BannerView bannerview)
    {
        return bannerview.k;
    }

    private void e()
    {
        removeAllViews();
        if (!i())
        {
            break MISSING_BLOCK_LABEL_78;
        }
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        c = a;
        addView(a, layoutparams);
_L1:
        boolean flag = i();
        boolean flag1;
        flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        c(flag1);
        a(false);
        j();
        a(100, ((AdRequest.ErrorCode) (null)));
        return;
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        c = b;
        addView(b, layoutparams1);
          goto _L1
        Exception exception1;
        exception1;
        Log.debug("[InMobi]-[Network]-4.3.0", "Error swapping banner ads", exception1);
        a(100, ((AdRequest.ErrorCode) (null)));
        return;
        Exception exception;
        exception;
        a(100, ((AdRequest.ErrorCode) (null)));
        throw exception;
    }

    static long f(BannerView bannerview)
    {
        return bannerview.r;
    }

    private boolean f()
    {
        if (p < 0)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Invalid Ad Size. Please provide a valid adSize.");
            return false;
        } else
        {
            return true;
        }
    }

    private boolean g()
    {
        return g.get();
    }

    static boolean g(BannerView bannerview)
    {
        return bannerview.i();
    }

    static IMWebView h(BannerView bannerview)
    {
        return bannerview.a;
    }

    private boolean h()
    {
        if (h.get())
        {
            return true;
        }
        IMWebView imwebview;
        String s1;
        if (i())
        {
            imwebview = b;
        } else
        {
            imwebview = a;
        }
        s1 = imwebview.getState();
        Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Current Ad State: ").append(s1).toString());
        if (com.inmobi.re.container.IMWebView.ViewState.EXPANDED.toString().equalsIgnoreCase(s1) || com.inmobi.re.container.IMWebView.ViewState.RESIZED.toString().equalsIgnoreCase(s1) || com.inmobi.re.container.IMWebView.ViewState.RESIZING.toString().equalsIgnoreCase(s1) || com.inmobi.re.container.IMWebView.ViewState.EXPANDING.toString().equalsIgnoreCase(s1))
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Current Ad State is neither default nor loading. New ad will not be shown.");
            return true;
        }
        if (imwebview.isBusy())
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc.");
            return true;
        } else
        {
            return false;
        }
    }

    static IMWebView i(BannerView bannerview)
    {
        return bannerview.b;
    }

    private boolean i()
    {
        return e;
    }

    static RequestResponseManager j(BannerView bannerview)
    {
        return bannerview.y;
    }

    private void j()
    {
        try
        {
            if (b != null)
            {
                b.setBackgroundColor(0);
            }
            if (a != null)
            {
                a.setBackgroundColor(0);
            }
            return;
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Error setNormalBGColor", exception);
        }
    }

    static boolean k(BannerView bannerview)
    {
        return bannerview.t;
    }

    static void l(BannerView bannerview)
    {
        bannerview.e();
    }

    static AnimationType m(BannerView bannerview)
    {
        return bannerview.u;
    }

    static a n(BannerView bannerview)
    {
        return bannerview.w;
    }

    static void o(BannerView bannerview)
    {
        bannerview.j();
    }

    static d p(BannerView bannerview)
    {
        return bannerview.A;
    }

    Animation a()
    {
        return i;
    }

    void a(Animation animation)
    {
        i = animation;
    }

    Animation b()
    {
        return j;
    }

    void b(Animation animation)
    {
        j = animation;
    }

    public void destroy()
    {
        try
        {
            if (c != null)
            {
                c.destroy();
            }
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Unable to destroy webview, or it has been destroyed already.");
        }
        c = null;
    }

    public void disableHardwareAcceleration()
    {
        E = false;
        if (c != null)
        {
            c.disableHardwareAcceleration();
        }
    }

    public int getAdSize()
    {
        return p;
    }

    public android.widget.RelativeLayout.LayoutParams getAdViewPosition()
    {
        int ai[] = new int[2];
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        if (c == null || c.getLayoutParams() == null || c.getParent() == this)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(getLayoutParams());
            layoutparams.width = getWidth();
            layoutparams.height = getHeight();
            getLocationOnScreen(ai);
            layoutparams.leftMargin = ai[0];
            layoutparams.topMargin = ai[1];
            layoutparams1 = layoutparams;
        } else
        {
            android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(c.getLayoutParams());
            layoutparams2.width = c.getWidth();
            layoutparams2.height = c.getHeight();
            c.getLocationOnScreen(ai);
            layoutparams2.leftMargin = ai[0];
            layoutparams2.topMargin = ai[1];
            layoutparams1 = layoutparams2;
        }
        ((FrameLayout)getRootView().findViewById(0x1020002)).getLocationOnScreen(ai);
        layoutparams1.leftMargin = layoutparams1.leftMargin - ai[0];
        layoutparams1.topMargin = layoutparams1.topMargin - ai[1];
        layoutparams1.rightMargin = 0;
        layoutparams1.bottomMargin = 0;
        return layoutparams1;
    }

    public String getAppId()
    {
        return o;
    }

    public BannerViewListener getIMAdListener()
    {
        return m;
    }

    public AdRequest getIMAdRequest()
    {
        return n;
    }

    public long getSlotId()
    {
        return q;
    }

    public boolean isModal()
    {
        if (c != null)
        {
            return c.isModal();
        } else
        {
            return false;
        }
    }

    public void loadNewAd()
    {
        this;
        JVM INSTR monitorenter ;
        y = new RequestResponseManager();
        z = Initializer.getLogger().startNewSample();
        String s1 = UIDHelper.getAndroidId(d.getApplicationContext());
        Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Publisher device Id is ").append(UIDHelper.getODIN1(s1)).toString());
_L3:
        Log.debug("[InMobi]-[Network]-4.3.0", " >>>> Start loading new Ad <<<<");
        if (InternalSDKUtil.checkNetworkAvailibility(d.getApplicationContext())) goto _L2; else goto _L1
_L1:
        a(101, AdRequest.ErrorCode.NETWORK_ERROR);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        Log.internal("[InMobi]-[Network]-4.3.0", "Cannot get publisher device id", exception1);
          goto _L3
        Exception exception;
        exception;
        throw exception;
_L2:
        if (!g())
        {
            break MISSING_BLOCK_LABEL_147;
        }
        a(101, AdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
          goto _L4
        Exception exception2;
        exception2;
        Log.debug("[InMobi]-[Network]-4.3.0", "Error in loading ad ", exception2);
          goto _L4
label0:
        {
            if (!h())
            {
                break label0;
            }
            a(101, AdRequest.ErrorCode.AD_CLICK_IN_PROGRESS);
        }
          goto _L4
label1:
        {
            if (f())
            {
                break label1;
            }
            a(101, AdRequest.ErrorCode.INVALID_REQUEST);
        }
          goto _L4
        CARB.getInstance().startCarb();
        a(true);
        d();
        s = System.currentTimeMillis();
        A.sendEmptyMessageDelayed(107, Initializer.getConfigParams().getFetchTimeOut());
        y.asyncRequestSecuredAd(f, com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType.AdRequest, x, C);
          goto _L4
    }

    public void loadNewAd(AdRequest adrequest)
    {
        if (adrequest != null)
        {
            setIMAdRequest(adrequest);
        }
        loadNewAd();
    }

    protected void onAttachedToWindow()
    {
        Log.debug("[InMobi]-[Network]-4.3.0", "onAttachedToWindow");
        v = true;
        c();
    }

    protected void onDetachedFromWindow()
    {
        Log.debug("[InMobi]-[Network]-4.3.0", "onDetatchedFromWindow");
        v = false;
        IMWebView imwebview;
        if (i())
        {
            imwebview = b;
        } else
        {
            imwebview = a;
        }
        if (imwebview != null)
        {
            imwebview.deinit();
        }
    }

    protected void onWindowVisibilityChanged(int i1)
    {
        super.onWindowVisibilityChanged(i1);
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        RequestResponseManager requestresponsemanager = new RequestResponseManager();
        requestresponsemanager.init();
        requestresponsemanager.processClick(d.getApplicationContext(), null);
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Exception ping in background", exception);
        return;
    }

    public void setAdBackgroundColor(String s1)
    {
    }

    public void setAdBackgroundGradientColor(String s1, String s2)
    {
    }

    public void setAdServerUrl(String s1)
    {
        x = s1;
    }

    public void setAdSize(int i1)
    {
        a(i1);
        p = i1;
    }

    public void setAdTextColor(String s1)
    {
    }

    public void setAnimationType(AnimationType animationtype)
    {
        u = animationtype;
    }

    public void setAppId(String s1)
    {
        o = s1;
    }

    public void setIMAdListener(BannerViewListener bannerviewlistener)
    {
        m = bannerviewlistener;
    }

    public void setIMAdRequest(AdRequest adrequest)
    {
        n = adrequest;
    }

    public void setRefTagParam(String s1, String s2)
    {
        if (s1 == null || s2 == null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Key or Value cannot be null");
        } else
        {
            if (s1.trim().equals("") || s2.trim().equals(""))
            {
                Log.debug("[InMobi]-[Network]-4.3.0", "Key or Value cannot be empty");
                return;
            }
            if (f != null)
            {
                f.setRefTagKey(s1.toLowerCase(Locale.ENGLISH));
                f.setRefTagValue(s2.toLowerCase(Locale.ENGLISH));
                return;
            }
        }
    }

    public void setSlotId(long l1)
    {
        q = l1;
    }

    public void stopLoading()
    {
        if (A.hasMessages(107))
        {
            A.removeMessages(107);
            A.sendEmptyMessage(107);
        } else
        if (A.hasMessages(108))
        {
            A.removeMessages(108);
            A.sendEmptyMessage(108);
            return;
        }
    }

    // Unreferenced inner class com/inmobi/androidsdk/b
    class b
        implements com.inmobi.re.container.IMWebView.IMWebViewListener
    {

        final BannerView a;

        public void onDismissAdScreen()
        {
            BannerView.a(a, 103, null);
        }

        public void onError()
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Error loading ad ");
            BannerView.p(a).sendEmptyMessage(111);
        }

        public void onExpand()
        {
            BannerView.a(a, 102, null);
        }

        public void onExpandClose()
        {
            BannerView.a(a, 103, null);
        }

        public void onIncentCompleted(Map map)
        {
        }

        public void onLeaveApplication()
        {
            BannerView.a(a, 104, null);
        }

        public void onResize(ResizeDimensions resizedimensions)
        {
            BannerView.a(a, 105, null);
        }

        public void onResizeClose()
        {
            BannerView.a(a, 106, null);
        }

        public void onShowAdScreen()
        {
            BannerView.a(a, 102, null);
        }

        public void onUserInteraction(Map map)
        {
            BannerView.a(a).onBannerInteraction(a, map);
        }

            b()
            {
                a = BannerView.this;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/androidsdk/c
    class c
        implements HttpRequestCallback
    {

        final BannerView a;

        public void notifyResult(int i1, Object obj)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append(">>> Got HTTP REQUEST callback. Status: ").append(i1).toString());
            if (i1 != 0) goto _L2; else goto _L1
_L1:
            BannerView.a(a, ((Response)obj).getAdResponse());
            BannerView.c(a, ((Response)obj).getImpressionId());
            BannerView.p(a).sendEmptyMessage(109);
_L4:
            return;
_L2:
            if (i1 != 1) goto _L4; else goto _L3
_L3:
            long l1;
            Message message;
            l1 = System.currentTimeMillis() - BannerView.b(a);
            message = BannerView.p(a).obtainMessage(110);
            if (!(obj instanceof AdException)) goto _L6; else goto _L5
_L5:
            AdRequest.ErrorCode errorcode;
            AdException adexception = (AdException)obj;
            AdRequest.ErrorCode errorcode1 = adexception.getErrorCode();
            if (BannerView.c(a))
            {
                JSONObject jsonobject1 = new JSONObject();
                try
                {
                    jsonobject1.put("ad", adexception.getImpressionId());
                    jsonobject1.put("t", l1);
                    jsonobject1.put("m", adexception.getHttpCode());
                }
                catch (JSONException jsonexception1)
                {
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for error at ").append(System.currentTimeMillis()).toString());
                }
                Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RESPONSE_ERROR, jsonobject1));
            }
            errorcode = errorcode1;
_L8:
            message.obj = errorcode;
            message.sendToTarget();
            return;
_L6:
            errorcode = (AdRequest.ErrorCode)obj;
            int j1 = errorcode.getErrorCode();
            if (BannerView.c(a))
            {
                JSONObject jsonobject = new JSONObject();
                try
                {
                    jsonobject.put("t", l1);
                    jsonobject.put("m", j1);
                }
                catch (JSONException jsonexception)
                {
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for error at ").append(System.currentTimeMillis()).toString());
                }
                Initializer.getLogger().logEvent(new EventLog(NetworkEventType.CONNECT_ERROR, jsonobject));
            }
            if (true) goto _L8; else goto _L7
_L7:
        }

            c()
            {
                a = BannerView.this;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/androidsdk/d
    class com.inmobi.androidsdk.d
        implements android.view.animation.Animation.AnimationListener
    {

        final BannerView a;

        public void onAnimationEnd(Animation animation)
        {
            if (!animation.equals(a.a())) goto _L2; else goto _L1
_L1:
            boolean flag2;
            a.removeAllViews();
            flag2 = BannerView.g(a);
            if (!flag2) goto _L4; else goto _L3
_L3:
            Exception exception;
            Exception exception1;
            BannerView bannerview;
            boolean flag;
            boolean flag1;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            try
            {
                ((ViewGroup)BannerView.h(a).getParent()).removeView(BannerView.h(a));
            }
            catch (Exception exception3) { }
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            BannerView.c(a, BannerView.h(a));
            a.addView(BannerView.h(a), layoutparams1);
_L5:
            a.startAnimation(a.b());
_L8:
            if (!animation.equals(a.a()))
            {
                BannerView.a(a, 100, null);
            }
_L7:
            return;
_L4:
            try
            {
                ((ViewGroup)BannerView.i(a).getParent()).removeView(BannerView.i(a));
            }
            catch (Exception exception2) { }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            BannerView.c(a, BannerView.i(a));
            a.addView(BannerView.i(a), layoutparams);
              goto _L5
            exception1;
            Log.debug("[InMobi]-[Network]-4.3.0", "Error animating banner ads", exception1);
            if (animation.equals(a.a())) goto _L7; else goto _L6
_L6:
            BannerView.a(a, 100, null);
            return;
_L2:
            bannerview = a;
            flag = BannerView.g(a);
            flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            BannerView.d(bannerview, flag1);
            BannerView.a(a, false);
            BannerView.o(a);
              goto _L8
            exception;
            if (!animation.equals(a.a()))
            {
                BannerView.a(a, 100, null);
            }
            throw exception;
              goto _L5
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

            d()
            {
                a = BannerView.this;
                super();
            }
    }


    private class d extends Handler
    {

        private final WeakReference a;

        public void handleMessage(Message message)
        {
            BannerView bannerview = (BannerView)a.get();
            if (bannerview == null) goto _L2; else goto _L1
_L1:
            int i1 = message.what;
            i1;
            JVM INSTR tableswitch 101 111: default 80
        //                       101 609
        //                       102 763
        //                       103 80
        //                       104 771
        //                       105 781
        //                       106 791
        //                       107 479
        //                       108 304
        //                       109 86
        //                       110 253
        //                       111 280;
               goto _L3 _L4 _L5 _L3 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L3:
            break; /* Loop/switch isn't completed */
_L8:
            break MISSING_BLOCK_LABEL_791;
_L2:
            super.handleMessage(message);
            return;
_L11:
            long l4 = System.currentTimeMillis() - BannerView.b(bannerview);
            if (!BannerView.c(bannerview)) goto _L15; else goto _L14
_L14:
            JSONObject jsonobject3 = new JSONObject();
            jsonobject3.put("ad", BannerView.d(bannerview));
            jsonobject3.put("t", l4);
_L16:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.FETCH_COMPLETE, jsonobject3));
_L15:
            Exception exception;
            removeMessages(107);
            if (BannerView.e(bannerview) != null)
            {
                BannerView.a(bannerview, BannerView.e(bannerview).replace("@__imm_aft@", (new StringBuilder()).append("").append(l4).toString()));
            }
            BannerView.b(bannerview, BannerView.e(bannerview));
              goto _L2
            JSONException jsonexception3;
            jsonexception3;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for fetch_complete at ").append(System.currentTimeMillis()).toString());
              goto _L16
_L12:
            try
            {
                removeMessages(107);
                BannerView.a(bannerview, 101, (AdRequest.ErrorCode)message.obj);
                BannerView.a(bannerview, false);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[Network]-4.3.0", "Exception hanlde message adview", exception);
            }
              goto _L2
_L13:
            removeMessages(108);
            removeMessages(101);
            BannerView.a(bannerview, 101, AdRequest.ErrorCode.INTERNAL_ERROR);
              goto _L2
_L10:
            if (!BannerView.c(bannerview)) goto _L18; else goto _L17
_L17:
            long l3;
            JSONObject jsonobject2;
            l3 = System.currentTimeMillis() - BannerView.f(bannerview);
            jsonobject2 = new JSONObject();
            jsonobject2.put("ad", BannerView.d(bannerview));
            jsonobject2.put("t", l3);
_L19:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_TIMEOUT, jsonobject2));
_L18:
            IMWebView imwebview;
            removeMessages(111);
            removeMessages(101);
            BannerView.a(bannerview, false);
            if (!BannerView.g(bannerview))
            {
                break MISSING_BLOCK_LABEL_464;
            }
            imwebview = BannerView.h(bannerview);
            BannerView.a(bannerview, null);
_L20:
            imwebview.cancelLoad();
            imwebview.stopLoading();
            imwebview.deinit();
            BannerView.a(bannerview, 101, AdRequest.ErrorCode.AD_RENDERING_TIMEOUT);
              goto _L2
            JSONException jsonexception2;
            jsonexception2;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for fetch_complete at ").append(System.currentTimeMillis()).toString());
              goto _L19
            imwebview = BannerView.i(bannerview);
            BannerView.b(bannerview, null);
              goto _L20
_L9:
            long l2;
            removeMessages(109);
            removeMessages(110);
            BannerView.j(bannerview).doCancel();
            l2 = System.currentTimeMillis() - BannerView.b(bannerview);
            if (!BannerView.c(bannerview)) goto _L22; else goto _L21
_L21:
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("t", l2);
            jsonobject1.put("m", 1);
_L23:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.CONNECT_ERROR, jsonobject1));
_L22:
            BannerView.a(bannerview, false);
            BannerView.a(bannerview, 101, AdRequest.ErrorCode.AD_FETCH_TIMEOUT);
              goto _L2
            JSONException jsonexception1;
            jsonexception1;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for error at ").append(System.currentTimeMillis()).toString());
              goto _L23
_L4:
            if (!BannerView.c(bannerview)) goto _L25; else goto _L24
_L24:
            long l1;
            JSONObject jsonobject;
            l1 = System.currentTimeMillis() - BannerView.b(bannerview);
            jsonobject = new JSONObject();
            jsonobject.put("ad", BannerView.d(bannerview));
            jsonobject.put("t", l1);
_L26:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_COMPLETE, jsonobject));
_L25:
            removeMessages(108);
            if (!BannerView.k(bannerview))
            {
                break MISSING_BLOCK_LABEL_732;
            }
            BannerView.l(bannerview);
            BannerView.b(bannerview, false);
              goto _L2
            JSONException jsonexception;
            jsonexception;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for fetch_complete at ").append(System.currentTimeMillis()).toString());
              goto _L26
label0:
            {
                if (BannerView.m(bannerview) != AnimationType.ANIMATION_OFF)
                {
                    break label0;
                }
                BannerView.l(bannerview);
            }
              goto _L2
            BannerView.n(bannerview).a(BannerView.m(bannerview));
              goto _L2
_L5:
            BannerView.c(bannerview, false);
              goto _L2
_L6:
            BannerView.a(bannerview, 103, null);
              goto _L2
_L7:
            BannerView.a(bannerview, 102, null);
              goto _L2
            BannerView.a(bannerview, 104, null);
              goto _L2
        }

        public d()
        {
            a = new WeakReference(BannerView.this);
        }
    }

}
