// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.inmobi.androidsdk.bootstrapper.AppGalleryConfigParams;
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
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.inmobi.androidsdk:
//            AdRequest, Mode, f, e, 
//            InterstitialViewListener

public class InterstitialView
{

    long a;
    boolean b;
    private State c;
    private AdRequest d;
    private Activity e;
    private String f;
    private long g;
    private InterstitialViewListener h;
    private String i;
    private long j;
    private long k;
    private UserInfo l;
    private IMWebView m;
    private String n;
    private String o;
    private long p;
    private RequestResponseManager q;
    private Mode r;
    private boolean s;
    private HttpRequestCallback t;
    private c u;
    private com.inmobi.re.container.IMWebView.IMWebViewListener v;

    public InterstitialView(Activity activity, String s1)
    {
        c = State.INIT;
        d = new AdRequest();
        g = -1L;
        o = "http://i.w.inmobi.com/showad.asm";
        p = 0L;
        r = Mode.AD_NETWORK;
        a = 0L;
        b = true;
        t = new f(this);
        u = new c();
        v = new e(this);
        a(activity, s1);
    }

    public InterstitialView(Activity activity, String s1, long l1)
    {
        c = State.INIT;
        d = new AdRequest();
        g = -1L;
        o = "http://i.w.inmobi.com/showad.asm";
        p = 0L;
        r = Mode.AD_NETWORK;
        a = 0L;
        b = true;
        t = new f(this);
        u = new c();
        v = new e(this);
        g = l1;
        a(activity, s1);
    }

    static State a(InterstitialView interstitialview, State state)
    {
        interstitialview.c = state;
        return state;
    }

    static InterstitialViewListener a(InterstitialView interstitialview)
    {
        return interstitialview.h;
    }

    static IMWebView a(InterstitialView interstitialview, IMWebView imwebview)
    {
        interstitialview.m = imwebview;
        return imwebview;
    }

    static String a(InterstitialView interstitialview, String s1)
    {
        interstitialview.i = s1;
        return s1;
    }

    private void a()
    {
        Display display = ((WindowManager)e.getSystemService("window")).getDefaultDisplay();
        if (l == null)
        {
            l = new UserInfo(e);
            DisplayMetrics displaymetrics = new DisplayMetrics();
            e.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            float f1 = displaymetrics.density;
            int i1 = (int)((float)WrapperFunctions.getDisplayWidth(display) / f1);
            int j1 = (int)((float)WrapperFunctions.getDisplayHeight(display) / f1);
            l.setScreenDensity(String.valueOf(f1));
            l.setScreenSize((new StringBuilder()).append("").append(i1).append("X").append(j1).toString());
            byte byte0;
            try
            {
                if (l.getPhoneDefaultUserAgent().equals(""))
                {
                    l.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(e.getApplicationContext()));
                }
            }
            catch (Exception exception)
            {
                Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Exception occured while setting user agent").append(exception).toString());
            }
        }
        l.updateInfo(f, d);
        byte0 = 14;
        if (InternalSDKUtil.isTablet(e.getApplicationContext()))
        {
            byte0 = 17;
        }
        l.setAdUnitSlot(String.valueOf(byte0));
        if (g != -1L)
        {
            l.setSlotId(Long.toString(g));
        }
    }

    private void a(int i1, AdRequest.ErrorCode errorcode)
    {
        if (h == null)
        {
            return;
        } else
        {
            class a
                implements Runnable
            {

                final int a;
                final AdRequest.ErrorCode b;
                final InterstitialView c;

                public void run()
                {
                    a;
                    JVM INSTR tableswitch 100 104: default 40
                //                               100 53
                //                               101 70
                //                               102 174
                //                               103 157
                //                               104 191;
                       goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                    Log.debug("[InMobi]-[Network]-4.3.0", b.toString());
                    return;
_L2:
                    InterstitialView.a(c).onAdRequestLoaded(c);
                    return;
_L3:
                    class b
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
                            catch (NoSuchFieldError nosuchfielderror1)
                            {
                                return;
                            }
                        }
                    }

                    b.a[b.ordinal()];
                    JVM INSTR tableswitch 1 2: default 104
                //                               1 137
                //                               2 147;
                       goto _L7 _L8 _L9
_L7:
                    Log.debug("[InMobi]-[Network]-4.3.0", b.toString());
_L10:
                    InterstitialView.a(c).onAdRequestFailed(c, b);
                    return;
_L8:
                    Log.debug("[InMobi]-[Network]-4.3.0", "Ad click in progress. Your request cannot be processed at this time. Try again later.");
                      goto _L10
_L9:
                    Log.debug("[InMobi]-[Network]-4.3.0", "Ad download in progress. Your request cannot be processed at this time. Try again later.");
                      goto _L10
_L5:
                    InterstitialView.a(c).onDismissAdScreen(c);
                    return;
_L4:
                    InterstitialView.a(c).onShowAdScreen(c);
                    return;
_L6:
                    InterstitialView.a(c).onLeaveApplication(c);
                    return;
                }

            a(int i1, AdRequest.ErrorCode errorcode)
            {
                c = InterstitialView.this;
                a = i1;
                b = errorcode;
                super();
            }
            }

            e.runOnUiThread(new a(i1, errorcode));
            return;
        }
    }

    private void a(Activity activity, String s1)
    {
        if (activity == null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Activity cannot be null");
            return;
        }
        InternalSDKUtil.getUserAgent(activity.getApplicationContext());
        try
        {
            SDKUtil.validateAdConfiguration(activity);
        }
        catch (ConfigException configexception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "IMConfigException occured while initializing interstitial while validating adConfig", configexception);
        }
        e = SDKUtil.getRootActivity(activity);
        IMWebView.setIMAIController(com/inmobi/androidsdk/impl/imai/IMAIController);
        try
        {
            String s2 = UIDHelper.getAndroidId(e.getApplicationContext());
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Publisher device Id is ").append(UIDHelper.getODIN1(s2)).toString());
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Cannot get publisher device id", exception);
        }
        f = s1;
        a();
        try
        {
            e.getApplicationContext().registerReceiver(new ConnBroadcastReciever(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        catch (Exception exception1)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Cannot register network receiver", exception1);
        }
    }

    static void a(InterstitialView interstitialview, int i1, AdRequest.ErrorCode errorcode)
    {
        interstitialview.a(i1, errorcode);
    }

    private void a(String s1)
    {
        if (s1 != null)
        {
            if (android.os.Build.VERSION.SDK_INT <= 8)
            {
                s1.replaceAll("%", "%25");
            }
            m.requestOnPageFinishedCallback(u.obtainMessage(303));
            j = System.currentTimeMillis();
            u.sendEmptyMessageDelayed(307, Initializer.getConfigParams().getRenderTimeOut());
            m.loadDataWithBaseURL("", s1, "text/html", null, null);
            return;
        } else
        {
            c = State.INIT;
            Log.debug("[InMobi]-[Network]-4.3.0", "Cannot load Ad. Invalid Ad Response");
            a(101, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
    }

    static c b(InterstitialView interstitialview)
    {
        return interstitialview.u;
    }

    static String b(InterstitialView interstitialview, String s1)
    {
        interstitialview.n = s1;
        return s1;
    }

    static long c(InterstitialView interstitialview)
    {
        return interstitialview.k;
    }

    static void c(InterstitialView interstitialview, String s1)
    {
        interstitialview.a(s1);
    }

    static boolean d(InterstitialView interstitialview)
    {
        return interstitialview.s;
    }

    static String e(InterstitialView interstitialview)
    {
        return interstitialview.n;
    }

    static IMWebView f(InterstitialView interstitialview)
    {
        return interstitialview.m;
    }

    static Activity g(InterstitialView interstitialview)
    {
        return interstitialview.e;
    }

    static com.inmobi.re.container.IMWebView.IMWebViewListener h(InterstitialView interstitialview)
    {
        return interstitialview.v;
    }

    static String i(InterstitialView interstitialview)
    {
        return interstitialview.i;
    }

    static long j(InterstitialView interstitialview)
    {
        return interstitialview.j;
    }

    static RequestResponseManager k(InterstitialView interstitialview)
    {
        return interstitialview.q;
    }

    public void destroy()
    {
        try
        {
            if (m != null)
            {
                m.destroy();
            }
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Unable to destroy webview, or it has been destroyed already.");
        }
        m = null;
    }

    public void disableHardwareAcceleration()
    {
        b = false;
        if (m != null)
        {
            m.disableHardwareAcceleration();
        }
    }

    public String getAppId()
    {
        return f;
    }

    public InterstitialViewListener getIMAdInterstitialListener()
    {
        return h;
    }

    public AdRequest getIMAdRequest()
    {
        return d;
    }

    public long getSlotId()
    {
        return g;
    }

    public State getState()
    {
        return c;
    }

    public void loadNewAd()
    {
        ConfigParams configparams = Initializer.getConfigParams();
        s = Initializer.getLogger().startNewSample();
        Log.debug("[InMobi]-[Network]-4.3.0", " >>>> Start loading new Interstitial Ad <<<<");
        try
        {
            String s2 = UIDHelper.getAndroidId(e.getApplicationContext());
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Publisher device Id is ").append(UIDHelper.getODIN1(s2)).toString());
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Cannot get publisher device id", exception);
        }
        if (!InternalSDKUtil.checkNetworkAvailibility(e.getApplicationContext()))
        {
            a(101, AdRequest.ErrorCode.NETWORK_ERROR);
            return;
        }
        if (c == State.LOADING)
        {
            a(101, AdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
            return;
        }
        if (c == State.ACTIVE)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Interstitial ad is in ACTIVE state. Try again after sometime.");
            a(101, AdRequest.ErrorCode.INVALID_REQUEST);
            return;
        }
        c = State.LOADING;
        CARB.getInstance().startCarb();
        a();
        a = System.currentTimeMillis();
        k = System.currentTimeMillis();
        u.sendEmptyMessageDelayed(306, configparams.getFetchTimeOut());
        q = new RequestResponseManager();
        String s1;
        if (r == Mode.APP_GALLERY)
        {
            s1 = configparams.getAppAppGalleryConfigParams().getUrl();
        } else
        {
            s1 = o;
        }
        q.asyncRequestSecuredAd(l, com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType.AdRequest_Interstitial, s1, t);
    }

    public void loadNewAd(AdRequest adrequest)
    {
        d = adrequest;
        loadNewAd();
    }

    public void setAdServerUrl(String s1)
    {
        o = s1;
    }

    public void setAppId(String s1)
    {
        f = s1;
    }

    public void setIMAdInterstitialListener(InterstitialViewListener interstitialviewlistener)
    {
        h = interstitialviewlistener;
    }

    public void setIMAdRequest(AdRequest adrequest)
    {
        d = adrequest;
    }

    public void setMode(Mode mode)
    {
        r = mode;
    }

    public void setSlotId(long l1)
    {
        g = l1;
    }

    public void show()
    {
        Log.debug("[InMobi]-[Network]-4.3.0", "Showing the Interstitial Ad. ");
        if (c != State.READY)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Interstitial ad is not in the 'READY' state. Current state: ").append(c).toString());
            return;
        }
        try
        {
            if (i != null)
            {
                m.requestOnInterstitialClosed(u.obtainMessage(304));
                m.requestOnInterstitialShown(u.obtainMessage(305));
                m.mInterstitialController.changeContentAreaForInterstitials(p);
                return;
            }
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Error showing ad ", exception);
        }
        return;
    }

    public void show(long l1)
    {
        p = l1;
        show();
    }

    public void stopLoading()
    {
        if (u.hasMessages(306))
        {
            u.removeMessages(306);
            u.sendEmptyMessage(306);
        } else
        if (u.hasMessages(307))
        {
            u.removeMessages(307);
            u.sendEmptyMessage(307);
            return;
        }
    }

    // Unreferenced inner class com/inmobi/androidsdk/e
    class e
        implements com.inmobi.re.container.IMWebView.IMWebViewListener
    {

        final InterstitialView a;

        public void onDismissAdScreen()
        {
            InterstitialView.a(a, 103, null);
        }

        public void onError()
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Error loading the interstitial ad ");
            InterstitialView.b(a).sendEmptyMessage(310);
        }

        public void onExpand()
        {
        }

        public void onExpandClose()
        {
        }

        public void onIncentCompleted(Map map)
        {
            if (InterstitialView.a(a) != null)
            {
                InterstitialView.a(a).onIncentCompleted(a, map);
            }
        }

        public void onLeaveApplication()
        {
            InterstitialView.a(a, 104, null);
        }

        public void onResize(ResizeDimensions resizedimensions)
        {
        }

        public void onResizeClose()
        {
        }

        public void onShowAdScreen()
        {
            InterstitialView.a(a, 102, null);
        }

        public void onUserInteraction(Map map)
        {
            if (InterstitialView.a(a) != null)
            {
                InterstitialView.a(a).onInterstitialInteraction(a, map);
            }
        }

            e()
            {
                a = InterstitialView.this;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/androidsdk/f
    class f
        implements HttpRequestCallback
    {

        final InterstitialView a;

        public void notifyResult(int i1, Object obj)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append(">>> Got HTTP REQUEST callback. Status: ").append(i1).toString());
            if (i1 != 0) goto _L2; else goto _L1
_L1:
            InterstitialView.a(a, ((Response)obj).getAdResponse());
            InterstitialView.b(a, ((Response)obj).getImpressionId());
            InterstitialView.b(a).sendEmptyMessage(308);
_L4:
            return;
_L2:
            if (i1 != 1) goto _L4; else goto _L3
_L3:
            long l1;
            Message message;
            l1 = System.currentTimeMillis() - InterstitialView.c(a);
            message = InterstitialView.b(a).obtainMessage(309);
            if (!(obj instanceof AdException)) goto _L6; else goto _L5
_L5:
            AdRequest.ErrorCode errorcode;
            AdException adexception = (AdException)obj;
            AdRequest.ErrorCode errorcode1 = adexception.getErrorCode();
            if (InterstitialView.d(a))
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
            if (InterstitialView.d(a))
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

            f()
            {
                a = InterstitialView.this;
                super();
            }
    }


    private class State extends Enum
    {

        public static final State ACTIVE;
        public static final State INIT;
        public static final State LOADING;
        public static final State READY;
        private static final State a[];

        public static State valueOf(String s1)
        {
            return (State)Enum.valueOf(com/inmobi/androidsdk/InterstitialView$State, s1);
        }

        public static State[] values()
        {
            return (State[])a.clone();
        }

        static 
        {
            INIT = new State("INIT", 0);
            READY = new State("READY", 1);
            LOADING = new State("LOADING", 2);
            ACTIVE = new State("ACTIVE", 3);
            State astate[] = new State[4];
            astate[0] = INIT;
            astate[1] = READY;
            astate[2] = LOADING;
            astate[3] = ACTIVE;
            a = astate;
        }

        private State(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private class c extends Handler
    {

        private final WeakReference a;

        public void handleMessage(Message message)
        {
            InterstitialView interstitialview = (InterstitialView)a.get();
            if (interstitialview == null) goto _L2; else goto _L1
_L1:
            message.what;
            JVM INSTR tableswitch 303 310: default 834
        //                       303 676
        //                       304 797
        //                       305 819
        //                       306 543
        //                       307 387
        //                       308 64
        //                       309 320
        //                       310 349;
               goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L3:
            break; /* Loop/switch isn't completed */
_L9:
            long l4 = System.currentTimeMillis() - InterstitialView.c(interstitialview);
            if (!InterstitialView.d(interstitialview)) goto _L13; else goto _L12
_L12:
            JSONObject jsonobject3 = new JSONObject();
            jsonobject3.put("ad", InterstitialView.e(interstitialview));
            jsonobject3.put("t", l4);
_L14:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.FETCH_COMPLETE, jsonobject3));
_L13:
            removeMessages(306);
            try
            {
                if (InterstitialView.f(interstitialview) == null)
                {
                    InterstitialView.a(interstitialview, new IMWebView(InterstitialView.g(interstitialview), InterstitialView.h(interstitialview), true, false));
                    if (!interstitialview.b)
                    {
                        InterstitialView.f(interstitialview).disableHardwareAcceleration();
                    }
                    InterstitialView.f(interstitialview).addJavascriptInterface(new IMAIController(InterstitialView.f(interstitialview)), "imaiController");
                }
                if (InterstitialView.i(interstitialview) != null)
                {
                    InterstitialView.a(interstitialview, InterstitialView.i(interstitialview).replace("@__imm_aft@", (new StringBuilder()).append("").append(l4).toString()));
                }
                InterstitialView.c(interstitialview, InterstitialView.i(interstitialview));
                return;
            }
            catch (Exception exception1)
            {
                try
                {
                    Log.debug("[InMobi]-[Network]-4.3.0", "Error retrieving ad ", exception1);
                    InterstitialView.a(interstitialview, State.INIT);
                    InterstitialView.a(interstitialview, 101, AdRequest.ErrorCode.INTERNAL_ERROR);
                    return;
                }
                catch (Exception exception)
                {
                    Log.internal("[InMobi]-[Network]-4.3.0", "Exception handling message in Interstitial", exception);
                }
            }
            return;
            JSONException jsonexception3;
            jsonexception3;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for fetch_complete at ").append(System.currentTimeMillis()).toString());
              goto _L14
_L10:
            removeMessages(306);
            InterstitialView.a(interstitialview, State.INIT);
            InterstitialView.a(interstitialview, 101, (AdRequest.ErrorCode)message.obj);
            return;
_L11:
            removeMessages(307);
            removeMessages(303);
            InterstitialView.a(interstitialview, State.INIT);
            InterstitialView.a(interstitialview, null);
            InterstitialView.a(interstitialview, 101, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
_L8:
            removeMessages(310);
            removeMessages(303);
            InterstitialView.a(interstitialview, State.INIT);
            InterstitialView.f(interstitialview).cancelLoad();
            InterstitialView.f(interstitialview).stopLoading();
            InterstitialView.f(interstitialview).deinit();
            InterstitialView.a(interstitialview, null);
            if (!InterstitialView.d(interstitialview)) goto _L16; else goto _L15
_L15:
            long l3;
            JSONObject jsonobject2;
            l3 = System.currentTimeMillis() - InterstitialView.j(interstitialview);
            jsonobject2 = new JSONObject();
            jsonobject2.put("ad", InterstitialView.e(interstitialview));
            jsonobject2.put("t", l3);
_L17:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_TIMEOUT, jsonobject2));
_L16:
            InterstitialView.a(interstitialview, 101, AdRequest.ErrorCode.AD_RENDERING_TIMEOUT);
            return;
            JSONException jsonexception2;
            jsonexception2;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for fetch_complete at ").append(System.currentTimeMillis()).toString());
              goto _L17
_L7:
            long l2;
            removeMessages(308);
            removeMessages(309);
            InterstitialView.a(interstitialview, State.INIT);
            l2 = System.currentTimeMillis() - InterstitialView.c(interstitialview);
            if (!InterstitialView.d(interstitialview)) goto _L19; else goto _L18
_L18:
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("t", l2);
            jsonobject1.put("m", 1);
_L20:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.CONNECT_ERROR, jsonobject1));
_L19:
            InterstitialView.k(interstitialview).doCancel();
            InterstitialView.a(interstitialview, 101, AdRequest.ErrorCode.AD_FETCH_TIMEOUT);
            return;
            JSONException jsonexception1;
            jsonexception1;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for error at ").append(System.currentTimeMillis()).toString());
              goto _L20
_L4:
            if (!InterstitialView.d(interstitialview)) goto _L22; else goto _L21
_L21:
            long l1;
            JSONObject jsonobject;
            l1 = System.currentTimeMillis() - InterstitialView.j(interstitialview);
            jsonobject = new JSONObject();
            jsonobject.put("ad", InterstitialView.e(interstitialview));
            jsonobject.put("t", l1);
_L23:
            Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_COMPLETE, jsonobject));
_L22:
            removeMessages(307);
            InterstitialView.a(interstitialview, State.READY);
            InterstitialView.a(interstitialview, 100, null);
            return;
            JSONException jsonexception;
            jsonexception;
            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Error creating metric logs for RENDER_COMPLETE at ").append(System.currentTimeMillis()).toString());
              goto _L23
_L5:
            InterstitialView.a(interstitialview, State.INIT);
            InterstitialView.a(interstitialview, 103, null);
            InterstitialView.a(interstitialview, null);
            return;
_L6:
            InterstitialView.a(interstitialview, State.ACTIVE);
            InterstitialView.a(interstitialview, 102, null);
_L2:
        }

        public c()
        {
            a = new WeakReference(InterstitialView.this);
        }
    }

}
