// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.os.Build;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

// Referenced classes of package com.millennialmedia.android:
//            MMLog, HandShake, MMSDK, MRaid, 
//            MMAdImpl, MMLayout, MMAdView, BridgeMMSpeechkit, 
//            MMActivity, AdViewOverlayView, AdProperties, Utils, 
//            HttpMMHeaders, DTOResizeParameters

class MMWebView extends WebView
{

    long a;
    volatile boolean b;
    volatile String c;
    boolean d;
    final String e;
    final GestureDetector f;
    volatile boolean g;
    String h;
    int i;
    volatile boolean j;
    int k;
    int l;
    volatile boolean m;
    boolean n;
    boolean o;
    private HttpMMHeaders p;

    public MMWebView(Context context, long l1)
    {
        super(context);
        d = true;
        k = -50;
        l = -50;
        m = false;
        n = false;
        o = false;
        setWillNotDraw(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setOnTouchListener(new WebTouchListener());
        c = "loading";
        a = l1;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(a);
        MMLog.a("MMWebView", String.format("Assigning WebView internal id: %d", aobj));
        setId((int)(15063L + a));
        WebSettings websettings;
        if (HandShake.a(context).e)
        {
            c();
        } else
        {
            a();
        }
        setWebChromeClient(new MyWebChromeClient());
        websettings = getSettings();
        e = websettings.getUserAgentString();
        websettings.setJavaScriptEnabled(true);
        websettings.setCacheMode(-1);
        websettings.setDefaultTextEncodingName("UTF-8");
        websettings.setLoadWithOverviewMode(true);
        websettings.setGeolocationEnabled(true);
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            MMLog.c("MMWebView", "Disabling user gesture requirement for media playback");
            websettings.setMediaPlaybackRequiresUserGesture(false);
        }
        websettings.setJavaScriptCanOpenWindowsAutomatically(true);
        f = new GestureDetector(context.getApplicationContext(), new BannerGestureListener());
    }

    private boolean B()
    {
        int i1 = Integer.parseInt(android.os.Build.VERSION.SDK);
        return "Nexus S".equals(Build.MODEL) && "samsung".equals(Build.MANUFACTURER) && (i1 == 16 || i1 == 17);
    }

    private boolean C()
    {
        return l == -50 && k == -50;
    }

    private boolean D()
    {
        return k() == null;
    }

    static boolean a(MMWebView mmwebview)
    {
        return mmwebview.C();
    }

    void A()
    {
        d = true;
    }

    void a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            MMLog.c("MMWebView", "Disabling acceleration");
            setLayerType(0, null);
        }
    }

    void a(DTOResizeParameters dtoresizeparameters)
    {
        this;
        JVM INSTR monitorenter ;
        MMAdView mmadview;
        if (!MMSDK.c())
        {
            break MISSING_BLOCK_LABEL_59;
        }
        mmadview = g();
        j = false;
        MMLog.b("MMWebView", (new StringBuilder()).append("New DTOResizeParameters = ").append(dtoresizeparameters).toString());
        if (mmadview == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        MMSDK.a(new Runnable(mmadview, dtoresizeparameters) {

            final MMAdView a;
            final DTOResizeParameters b;
            final MMWebView c;

            private void a()
            {
                if (MMWebView.a(c))
                {
                    android.view.ViewGroup.LayoutParams layoutparams = c.getLayoutParams();
                    c.l = layoutparams.width;
                    c.k = layoutparams.height;
                    if (c.l <= 0)
                    {
                        c.l = c.getWidth();
                    }
                    if (c.k <= 0)
                    {
                        c.k = c.getHeight();
                    }
                }
            }

            private void a(DTOResizeParameters dtoresizeparameters1)
            {
                MMAdView mmadview1 = a;
                mmadview1.getClass();
                MMAdView.BannerBounds bannerbounds = new MMAdView.BannerBounds(mmadview1, dtoresizeparameters1);
                a();
                bannerbounds.a(c.getLayoutParams());
            }

            public void run()
            {
                synchronized (c)
                {
                    c.d = true;
                    a.a(b);
                    a(b);
                    c.loadUrl("javascript:MMJS.sdk.setState('resized');");
                    c.c = "resized";
                }
                return;
                exception1;
                mmwebview;
                JVM INSTR monitorexit ;
                throw exception1;
            }

            
            {
                c = MMWebView.this;
                a = mmadview;
                b = dtoresizeparameters;
                super();
            }
        });
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void a(HttpMMHeaders httpmmheaders)
    {
        p = httpmmheaders;
    }

    void a(MMAdImpl mmadimpl)
    {
        FutureTask futuretask = new FutureTask(new Callable(mmadimpl) {

            final MMAdImpl a;
            final MMWebView b;

            public volatile Object call()
            {
                return call();
            }

            public Void call()
            {
                Bitmap bitmap;
                b.buildDrawingCache();
                bitmap = b.getDrawingCache();
                if (bitmap == null)
                {
                    break MISSING_BLOCK_LABEL_32;
                }
                Bitmap bitmap1 = Bitmap.createBitmap(bitmap);
                a.a(bitmap1);
                b.destroyDrawingCache();
_L2:
                return null;
                Exception exception;
                exception;
                MMLog.a("MMWebView", "Animation exception: ", exception);
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                b = MMWebView.this;
                a = mmadimpl;
                super();
            }
        });
        MMSDK.a(futuretask);
        try
        {
            futuretask.get();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
        catch (ExecutionException executionexception)
        {
            return;
        }
    }

    void a(String s1, String s2, Context context)
    {
        if (s1 == null || s2 == null)
        {
            return;
        }
        String s3 = s2.substring(0, 1 + s2.lastIndexOf("/"));
        d();
        String s4;
        if (MRaid.c(context))
        {
            s4 = MRaid.a(context, s1);
        } else
        {
            MMLog.e("MMWebView", "MMJS is not downloaded");
            s4 = s1;
        }
        if (MMSDK.a >= 5)
        {
            MMLog.a("MMWebView", String.format("Received ad with base url %s.", new Object[] {
                s2
            }));
            MMLog.a("MMWebView", s1);
        }
        MMSDK.a(new Runnable(s3, s4) {

            final String a;
            final String b;
            final MMWebView c;

            public void run()
            {
                if (HandShake.a(c.getContext()).e)
                {
                    c.c();
                } else
                if (c.i == 0)
                {
                    c.b();
                } else
                {
                    c.a();
                }
                c.d = true;
                c.loadDataWithBaseURL(a, b, "text/html", "UTF-8", null);
            }

            
            {
                c = MMWebView.this;
                a = s1;
                b = s2;
                super();
            }
        });
    }

    void a(String s1, String s2, MMAdImpl mmadimpl)
    {
        if (s1 == null || s2 == null || mmadimpl == null)
        {
            return;
        }
        b(mmadimpl);
        d();
        String s3 = s2.substring(0, 1 + s2.lastIndexOf("/"));
        if (MMSDK.a >= 5)
        {
            MMLog.a("MMWebView", String.format("Received ad with base url %s.", new Object[] {
                s3
            }));
            MMLog.a("MMWebView", s1);
        }
        if (mmadimpl.h())
        {
            a(mmadimpl);
        }
        if (mmadimpl.d)
        {
            s1 = (new StringBuilder()).append("<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>").append(s1).toString();
        }
        if (MRaid.c(mmadimpl.j()))
        {
            s1 = MRaid.a(mmadimpl.j(), s1);
        } else
        {
            MMLog.e("MMWebView", "MMJS is not downloaded");
        }
        MMSDK.a(new Runnable(mmadimpl, s3, s1) {

            final MMAdImpl a;
            final String b;
            final String c;
            final MMWebView d;

            public void run()
            {
                MMAd mmad;
                if (HandShake.a(d.getContext()).e)
                {
                    d.c();
                } else
                if (d.i == 0)
                {
                    d.b();
                } else
                {
                    d.a();
                }
                mmad = a.d();
                if (mmad != null && (mmad instanceof MMLayout))
                {
                    ((MMLayout)mmad).m();
                }
                d.d = true;
                d.loadDataWithBaseURL(b, c, "text/html", "UTF-8", null);
            }

            
            {
                d = MMWebView.this;
                a = mmadimpl;
                b = s1;
                c = s2;
                super();
            }
        });
    }

    void a(Map map)
    {
        String s1;
        if (e())
        {
            s1 = "true";
        } else
        {
            s1 = "false";
        }
        map.put("PROPERTY_BANNER_TYPE", s1);
        map.put("PROPERTY_STATE", c);
        map.put("PROPERTY_EXPANDING", String.valueOf(a));
    }

    boolean a(long l1)
    {
        android.view.ViewParent viewparent = getParent();
        if (viewparent == null)
        {
            return false;
        }
        MMLog.d("MMWebView", (new StringBuilder()).append("Id check for parent: ").append(l1).append(" versus ").append(((MMLayout)viewparent).h.h).toString());
        boolean flag;
        if (l1 == ((MMLayout)viewparent).h.h)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    boolean a(String s1)
    {
        return !TextUtils.isEmpty(h) && s1.equals((new StringBuilder()).append(h).append("?").toString()) || s1.equals((new StringBuilder()).append(h).append("#").toString());
    }

    void b()
    {
        if (B())
        {
            break MISSING_BLOCK_LABEL_69;
        }
        Class aclass[] = new Class[2];
        aclass[0] = Integer.TYPE;
        aclass[1] = android/graphics/Paint;
        Method method = android/webkit/WebView.getMethod("setLayerType", aclass);
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(1);
        aobj[1] = null;
        method.invoke(this, aobj);
        MMLog.b("MMWebView", "Enable softwareAcceleration");
        return;
        Exception exception;
        exception;
    }

    void b(MMAdImpl mmadimpl)
    {
        this;
        JVM INSTR monitorenter ;
        if (!MMSDK.c() || !w() || mmadimpl == null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        MMAd mmad = mmadimpl.d();
        if (mmad instanceof MMAdView)
        {
            MMAdView mmadview = (MMAdView)mmad;
            j = true;
            MMSDK.a(new Runnable(mmadview) {

                final MMAdView a;
                final MMWebView b;

                void a()
                {
                    if (MMSDK.c() && !MMWebView.a(b))
                    {
                        android.view.ViewGroup.LayoutParams layoutparams = b.getLayoutParams();
                        layoutparams.width = b.l;
                        layoutparams.height = b.k;
                        b.l = -50;
                        b.k = -50;
                        b.requestLayout();
                    }
                }

                public void run()
                {
                    synchronized (b)
                    {
                        a.a();
                        a();
                        b.n();
                        b.d = true;
                        b.invalidate();
                    }
                    return;
                    exception1;
                    mmwebview;
                    JVM INSTR monitorexit ;
                    throw exception1;
                }

            
            {
                b = MMWebView.this;
                a = mmadview;
                super();
            }
            });
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void c()
    {
        if (B())
        {
            break MISSING_BLOCK_LABEL_69;
        }
        Class aclass[] = new Class[2];
        aclass[0] = Integer.TYPE;
        aclass[1] = android/graphics/Paint;
        Method method = android/webkit/WebView.getMethod("setLayerType", aclass);
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(2);
        aobj[1] = null;
        method.invoke(this, aobj);
        MMLog.b("MMWebView", "Enabled hardwareAcceleration");
        return;
        Exception exception;
        exception;
    }

    void d()
    {
        BridgeMMSpeechkit.a();
        n = false;
        o = false;
    }

    boolean e()
    {
        if (getParent() != null)
        {
            return (ViewGroup)getParent() instanceof MMAdView;
        } else
        {
            return false;
        }
    }

    boolean f()
    {
        return getParent() instanceof MMAdView;
    }

    MMAdView g()
    {
        if (getParent() instanceof MMAdView)
        {
            return (MMAdView)getParent();
        } else
        {
            return null;
        }
    }

    MMLayout h()
    {
        if (getParent() instanceof MMLayout)
        {
            return (MMLayout)getParent();
        } else
        {
            return null;
        }
    }

    Activity i()
    {
        this;
        JVM INSTR monitorenter ;
        android.view.ViewParent viewparent = getParent();
        if (viewparent == null) goto _L2; else goto _L1
_L1:
        if (!(viewparent instanceof ViewGroup)) goto _L2; else goto _L3
_L3:
        Context context = ((ViewGroup)viewparent).getContext();
        if (context == null) goto _L2; else goto _L4
_L4:
        if (!(context instanceof MMActivity)) goto _L2; else goto _L5
_L5:
        MMActivity mmactivity = (MMActivity)context;
_L7:
        this;
        JVM INSTR monitorexit ;
        return mmactivity;
_L2:
        mmactivity = null;
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception;
        exception;
        throw exception;
    }

    AdViewOverlayView j()
    {
        this;
        JVM INSTR monitorenter ;
        android.view.ViewParent viewparent = getParent();
        if (viewparent == null) goto _L2; else goto _L1
_L1:
        if (!(viewparent instanceof AdViewOverlayView)) goto _L2; else goto _L3
_L3:
        AdViewOverlayView adviewoverlayview = (AdViewOverlayView)viewparent;
_L5:
        this;
        JVM INSTR monitorexit ;
        return adviewoverlayview;
_L2:
        adviewoverlayview = null;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    MMAdView k()
    {
        this;
        JVM INSTR monitorenter ;
        android.view.ViewParent viewparent = getParent();
        if (viewparent == null) goto _L2; else goto _L1
_L1:
        if (!(viewparent instanceof MMAdView)) goto _L2; else goto _L3
_L3:
        MMAdView mmadview = (MMAdView)viewparent;
_L5:
        this;
        JVM INSTR monitorexit ;
        return mmadview;
_L2:
        mmadview = null;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    void l()
    {
        loadUrl("javascript:MMJS.sdk.setPlacementType('interstitial');");
    }

    public void loadDataWithBaseURL(String s1, String s2, String s3, String s4, String s5)
    {
        h = s1;
        try
        {
            super.loadDataWithBaseURL(s1, s2, s3, s4, s5);
            return;
        }
        catch (Exception exception)
        {
            MMLog.a("MMWebView", "Error hit when calling through to loadDataWithBaseUrl", exception);
        }
    }

    public void loadUrl(String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            return;
        }
        if (s1.startsWith("http"))
        {
            h = s1;
        }
        MMLog.a("MMWebView", (new StringBuilder()).append("loadUrl @@").append(s1).toString());
        if (MMSDK.a())
        {
            try
            {
                super.loadUrl(s1);
                return;
            }
            catch (Exception exception)
            {
                return;
            }
        } else
        {
            MMSDK.a(new Runnable(s1) {

                final String a;
                final MMWebView b;

                public void run()
                {
                    b.loadUrl(a);
                }

            
            {
                b = MMWebView.this;
                a = s1;
                super();
            }
            });
            return;
        }
    }

    void m()
    {
        loadUrl("javascript:MMJS.sdk.setPlacementType('inline');");
    }

    void n()
    {
        loadUrl("javascript:MMJS.sdk.setState('default')");
        c = "default";
        d = true;
    }

    void o()
    {
        loadUrl("javascript:MMJS.sdk.setState('hidden')");
        c = "hidden";
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        int k1 = android.view.View.MeasureSpec.getSize(j1);
        int l1 = android.view.View.MeasureSpec.getSize(i1);
        int i2 = getMeasuredHeight();
        if (i2 != 0)
        {
            k1 = i2;
        }
        if (g)
        {
            setMeasuredDimension(1, 1);
            return;
        } else
        {
            setMeasuredDimension(l1, k1);
            return;
        }
    }

    public void onPauseWebView()
    {
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        android/webkit/WebView.getMethod("onPause", new Class[0]).invoke(this, new Object[0]);
        return;
        Exception exception;
        exception;
        MMLog.d("MMWebView", "No onPause()");
        return;
    }

    public void onResumeWebView()
    {
        if (!e() && android.os.Build.VERSION.SDK_INT >= 19)
        {
            Activity activity = i();
            if (activity != null)
            {
                activity.setRequestedOrientation(14);
            }
        }
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        android/webkit/WebView.getMethod("onResume", new Class[0]).invoke(this, new Object[0]);
        return;
        Exception exception;
        exception;
        MMLog.d("MMWebView", "No onResume()");
        return;
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        if (getContext().getResources().getDisplayMetrics() != null && d)
        {
            u();
            if (getHeight() != 1 || getWidth() != 1)
            {
                MMSDK.a(new Runnable() {

                    final MMWebView a;

                    public void run()
                    {
                        a.d = false;
                    }

            
            {
                a = MMWebView.this;
                super();
            }
                }, 800L);
            }
        }
        super.onSizeChanged(i1, j1, k1, l1);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            requestFocus();
        }
        if (f != null)
        {
            f.onTouchEvent(motionevent);
        }
        if (motionevent.getAction() == 1)
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(motionevent.getAction());
            aobj[1] = Float.valueOf(motionevent.getX());
            aobj[2] = Float.valueOf(motionevent.getY());
            MMLog.a("MMWebView", String.format("Ad clicked: action=%d x=%f y=%f", aobj));
        }
        return super.onTouchEvent(motionevent);
    }

    void p()
    {
        loadUrl("javascript:MMJS.sdk.setViewable(false)");
        m = false;
    }

    void q()
    {
        loadUrl("javascript:MMJS.sdk.setViewable(true)");
        m = true;
    }

    void r()
    {
        loadUrl("javascript:MMJS.sdk.setState('expanded');");
        c = "expanded";
        n = false;
        o = false;
        d = true;
    }

    void s()
    {
        loadUrl("javascript:MMJS.sdk.ready();");
    }

    public void setBackgroundColor(int i1)
    {
        i = i1;
        if (i1 == 0)
        {
            b();
        }
        super.setBackgroundColor(i1);
    }

    void t()
    {
        org.json.JSONObject jsonobject = (new AdProperties(getContext())).getAdProperties(this);
        loadUrl((new StringBuilder()).append("javascript:MMJS.sdk.setAdProperties(").append(jsonobject).append(");").toString());
    }

    public String toString()
    {
        return (new StringBuilder()).append("MMWebView originally from(").append(a).append(") MRaidState(").append(c).append(").").append(super.toString()).toString();
    }

    void u()
    {
        org.json.JSONObject jsonobject = Utils.a(this);
        loadUrl((new StringBuilder()).append("javascript:MMJS.sdk.setAdSize(").append(jsonobject).append(");").toString());
    }

    void v()
    {
        android.view.ViewParent viewparent = getParent();
        if (viewparent != null && (viewparent instanceof ViewGroup))
        {
            ((ViewGroup)viewparent).removeView(this);
        }
    }

    boolean w()
    {
        return "resized".equals(c);
    }

    String x()
    {
        if (p != null && !TextUtils.isEmpty(p.f))
        {
            return p.f;
        } else
        {
            return "DEFAULT_AD_ID";
        }
    }

    boolean y()
    {
        boolean flag = true;
        if (n)
        {
            flag = z();
        } else
        {
            n = flag;
            if (!D() || !m)
            {
                return false;
            }
        }
        return flag;
    }

    boolean z()
    {
        return hasWindowFocus() && D();
    }

    private class WebTouchListener
        implements android.view.View.OnTouchListener
    {

        WeakReference a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            MMWebView mmwebview = (MMWebView)a.get();
            boolean flag;
            if (motionevent.getAction() == 2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (mmwebview != null)
            {
                return flag && mmwebview.f();
            } else
            {
                return flag;
            }
        }

        WebTouchListener()
        {
            a = new WeakReference(MMWebView.this);
        }
    }


    private class MyWebChromeClient extends WebChromeClient
    {

        WeakReference a;

        private String a(Context context)
        {
            PackageManager packagemanager = context.getApplicationContext().getPackageManager();
            android.content.pm.ApplicationInfo applicationinfo1 = packagemanager.getApplicationInfo(context.getPackageName(), 0);
            android.content.pm.ApplicationInfo applicationinfo = applicationinfo1;
_L1:
            android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
            Object obj;
            if (applicationinfo != null)
            {
                obj = packagemanager.getApplicationLabel(applicationinfo);
            } else
            {
                obj = "This app";
            }
            return (String)(String)obj;
            namenotfoundexception;
            applicationinfo = null;
              goto _L1
        }

        static void a(MyWebChromeClient mywebchromeclient, boolean flag)
        {
            mywebchromeclient.a(flag);
        }

        private void a(boolean flag)
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                android.content.SharedPreferences.Editor editor = mmwebview.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
                editor.putBoolean("mm_use_geo_location", flag);
                editor.commit();
            }
        }

        private boolean a()
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                return !mmwebview.getContext().getSharedPreferences("MillennialMediaSettings", 0).contains("mm_use_geo_location");
            } else
            {
                return false;
            }
        }

        private boolean b()
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                return mmwebview.getContext().getSharedPreferences("MillennialMediaSettings", 0).getBoolean("mm_use_geo_location", false);
            } else
            {
                return false;
            }
        }

        public void onConsoleMessage(String s1, int i1, String s2)
        {
            super.onConsoleMessage(s1, i1, s2);
        }

        public void onGeolocationPermissionsShowPrompt(String s1, android.webkit.GeolocationPermissions.Callback callback)
        {
            if (!a())
            {
                break MISSING_BLOCK_LABEL_120;
            }
            if (!b()) goto _L2; else goto _L1
_L1:
            callback.invoke(s1, true, true);
_L4:
            return;
_L2:
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview == null) goto _L4; else goto _L3
_L3:
            Activity activity = mmwebview.i();
            if (activity == null) goto _L4; else goto _L5
_L5:
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
            builder.setTitle(a(activity));
            builder.setMessage("Would like to use your Current Location.").setPositiveButton("Allow", new android.content.DialogInterface.OnClickListener(callback, s1) {

                final android.webkit.GeolocationPermissions.Callback a;
                final String b;
                final MyWebChromeClient c;

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    MyWebChromeClient.a(c, true);
                    a.invoke(b, true, true);
                }

                
                {
                    c = MyWebChromeClient.this;
                    a = callback;
                    b = s1;
                    super();
                }
            }).setNegativeButton("Don't Allow", new android.content.DialogInterface.OnClickListener(callback, s1) {

                final android.webkit.GeolocationPermissions.Callback a;
                final String b;
                final MyWebChromeClient c;

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    MyWebChromeClient.a(c, false);
                    a.invoke(b, false, false);
                }

                
                {
                    c = MyWebChromeClient.this;
                    a = callback;
                    b = s1;
                    super();
                }
            });
            builder.create().show();
            return;
            callback.invoke(s1, false, false);
            return;
        }

        public boolean onJsAlert(WebView webview, String s1, String s2, JsResult jsresult)
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
                {
                    return super.onJsAlert(webview, s1, s2, jsresult);
                }
                Toast.makeText(mmwebview.getContext(), s2, 0).show();
            }
            return true;
        }

        public boolean onJsBeforeUnload(WebView webview, String s1, String s2, JsResult jsresult)
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
                {
                    return super.onJsBeforeUnload(webview, s1, s2, jsresult);
                }
                Toast.makeText(mmwebview.getContext(), s2, 0).show();
            }
            return true;
        }

        public boolean onJsConfirm(WebView webview, String s1, String s2, JsResult jsresult)
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
                {
                    return super.onJsConfirm(webview, s1, s2, jsresult);
                }
                Toast.makeText(mmwebview.getContext(), s2, 0).show();
            }
            return true;
        }

        public boolean onJsPrompt(WebView webview, String s1, String s2, String s3, JsPromptResult jspromptresult)
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
                {
                    return super.onJsPrompt(webview, s1, s2, s3, jspromptresult);
                }
                Toast.makeText(mmwebview.getContext(), s2, 0).show();
            }
            return true;
        }

        MyWebChromeClient()
        {
            a = new WeakReference(MMWebView.this);
        }
    }


    private class BannerGestureListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        WeakReference a;

        public boolean onSingleTapConfirmed(MotionEvent motionevent)
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                MMAdView mmadview = mmwebview.g();
                if (mmadview != null)
                {
                    MMSDK.Event.a(mmadview.h);
                }
            }
            return false;
        }

        public BannerGestureListener()
        {
            a = new WeakReference(MMWebView.this);
        }
    }

}
