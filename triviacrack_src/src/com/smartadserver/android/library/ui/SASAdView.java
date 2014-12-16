// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.smartadserver.android.library.a.h;
import com.smartadserver.android.library.b.e;
import com.smartadserver.android.library.controller.a;
import com.smartadserver.android.library.controller.d;
import com.smartadserver.android.library.controller.mraid.f;
import com.smartadserver.android.library.f.a.b;
import com.smartadserver.android.library.h.c;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Vector;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.smartadserver.android.library.ui:
//            a, g, d, c, 
//            b

public abstract class SASAdView extends RelativeLayout
{

    private static Bitmap C = null;
    private static String D = "http://mobile.smartadserver.com";
    public static int a;
    public static int b;
    public static boolean c;
    private static final String n = com/smartadserver/android/library/ui/SASAdView.getSimpleName();
    private static boolean o = false;
    private static boolean p = false;
    private static int q;
    private static int r;
    private static boolean s;
    private boolean A;
    private com.smartadserver.android.library.ui.b B;
    private View E;
    private Handler F;
    private int G;
    private Object H;
    private WeakReference I;
    private android.view.ViewGroup.LayoutParams J;
    private android.view.ViewGroup.LayoutParams K;
    private Location L;
    private boolean M;
    protected boolean d;
    public e e;
    public b f;
    public a g;
    public d h;
    public com.smartadserver.android.library.controller.c i;
    public g j;
    public g k;
    public com.smartadserver.android.library.d.a l;
    public boolean m;
    private boolean t;
    private int u;
    private int v;
    private View w;
    private View x;
    private FrameLayout y;
    private Vector z;

    public SASAdView(Context context)
    {
        super(context);
        t = false;
        u = -10;
        v = 5;
        d = false;
        A = true;
        G = -1;
        H = new Object();
        m = false;
        M = true;
        a(context);
        com.smartadserver.android.library.h.c.a(n, "SASAdview created");
    }

    public SASAdView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        t = false;
        u = -10;
        v = 5;
        d = false;
        A = true;
        G = -1;
        H = new Object();
        m = false;
        M = true;
        a(context);
        com.smartadserver.android.library.h.c.a(n, "SASAdview created");
    }

    static android.view.ViewGroup.LayoutParams a(SASAdView sasadview, android.view.ViewGroup.LayoutParams layoutparams)
    {
        sasadview.K = layoutparams;
        return layoutparams;
    }

    private void a(Context context)
    {
        com.smartadserver.android.library.h.c.a(n, "initialize(context)");
        e = com.smartadserver.android.library.b.e.a(context.getApplicationContext());
        f = new b(context);
        c(context);
        b(context);
        z = new Vector();
        F = new Handler();
        g.a(0);
        if (!o)
        {
            com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Current SDK Version : 4.2.2 ").append(com.smartadserver.android.library.h.c.d()).toString());
            o = true;
        }
        E = new View(context);
        E.setBackgroundColor(0xaa000000);
        E.setVisibility(8);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        addView(E, 0, layoutparams);
    }

    static void a(SASAdView sasadview, int i1, String s1, int j1, boolean flag, String s2, com.smartadserver.android.library.ui.a a1, int k1, 
            boolean flag1)
    {
        sasadview.b(i1, s1, j1, flag, s2, a1, k1, flag1);
    }

    static boolean a(SASAdView sasadview)
    {
        return sasadview.t;
    }

    static boolean a(SASAdView sasadview, boolean flag)
    {
        sasadview.t = flag;
        return flag;
    }

    static int b(SASAdView sasadview)
    {
        return sasadview.v;
    }

    private void b(int i1, String s1, int j1, boolean flag, String s2, com.smartadserver.android.library.ui.a a1, int k1, 
            boolean flag1)
    {
        JSONObject jsonobject;
        com.smartadserver.android.library.h.c.a(n, (new StringBuilder()).append("loadAd(").append(i1).append(", \"").append(s1).append("\", ").append(j1).append(", ").append(s2).append(", ").append(flag).append(", ").append(a1).append(")").toString());
        if (g.c())
        {
            if (a1 != null)
            {
                a1.adLoadingFailed(new h("An ad request is currently pending on this SASAdView"));
            }
            return;
        }
        byte byte0;
        if (flag1)
        {
            byte0 = 2;
        } else
        {
            byte0 = 1;
        }
        g.a(byte0);
        i();
        x = getLoaderView();
        if (x != null)
        {
            a(x);
        }
        if (L == null) goto _L2; else goto _L1
_L1:
        jsonobject = new JSONObject();
        jsonobject.put("longitude", L.getLongitude());
        jsonobject.put("latitude", L.getLatitude());
_L5:
        g.a(i1, s1, j1, s2, flag, a1, k1, jsonobject, flag1);
        return;
        JSONException jsonexception1;
        jsonexception1;
        JSONException jsonexception;
        jsonobject = null;
        jsonexception = jsonexception1;
_L3:
        jsonexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        jsonexception;
        if (true) goto _L3; else goto _L2
_L2:
        jsonobject = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void b(Context context)
    {
        j = new g(context, context) {

            final Context a;
            final SASAdView b;

            public void setWebChromeClient(WebChromeClient webchromeclient)
            {
                if (b.i == null)
                {
                    b.i = new com.smartadserver.android.library.controller.c(a);
                    b.i.a = b;
                    super.setWebChromeClient(b.i);
                }
                b.i.a(webchromeclient);
            }

            public void setWebViewClient(WebViewClient webviewclient)
            {
                if (b.h == null)
                {
                    b.h = new d();
                    b.h.a = b;
                    super.setWebViewClient(b.h);
                }
                b.h.a(webviewclient);
            }

            
            {
                b = SASAdView.this;
                a = context1;
                super(context);
            }
        };
        g = new a(this);
        j.setWebChromeClient(null);
        j.setWebViewClient(null);
        j.getSettings().setSupportZoom(false);
        j.setBackgroundColor(0);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        addView(j, 0, layoutparams);
    }

    private Rect c(View view)
    {
        Rect rect = new Rect();
        FrameLayout framelayout = getExpandParentView();
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        Rect rect1 = new Rect();
        framelayout.getGlobalVisibleRect(rect1);
        rect1.top = rect1.top + framelayout.getPaddingTop();
        rect1.bottom = rect1.bottom - framelayout.getPaddingBottom();
        rect1.left = rect1.left + framelayout.getPaddingLeft();
        rect1.right = rect1.right - framelayout.getPaddingRight();
        int i1 = ai[0] - rect1.left;
        int j1 = ai[1] - rect1.top;
        rect.set(i1, j1, i1 + view.getWidth(), j1 + view.getHeight());
        return rect;
    }

    static android.view.ViewGroup.LayoutParams c(SASAdView sasadview)
    {
        return sasadview.K;
    }

    private String c(String s1)
    {
        if (s1.length() > 0)
        {
            s1 = (new StringBuilder()).append(s1.substring(0, 1).toUpperCase()).append(s1.substring(1, s1.length())).toString();
        }
        return s1;
    }

    private void c(Context context)
    {
        k = new g(context);
        WebSettings websettings = k.getSettings();
        websettings.setUseWideViewPort(true);
        websettings.setLoadWithOverviewMode(true);
        k.setCloseButtonVisibility(0);
        k.setCloseButtonOnClickListener(new android.view.View.OnClickListener() {

            final SASAdView a;

            public void onClick(View view)
            {
                if (!a.m && a.k.d())
                {
                    com.smartadserver.android.library.ui.SASAdView.f(a);
                    if (com.smartadserver.android.library.ui.SASAdView.c(a) != null)
                    {
                        a.setLayoutParams(com.smartadserver.android.library.ui.SASAdView.c(a));
                    }
                    return;
                } else
                {
                    a.g();
                    return;
                }
            }

            
            {
                a = SASAdView.this;
                super();
            }
        });
        k.setVisibility(8);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        addView(k, layoutparams);
        k.setUseProgressBar(true);
    }

    private boolean d()
    {
        byte byte0 = 8;
        J = getLayoutParams();
        FrameLayout framelayout = getExpandParentView();
        boolean flag = false;
        boolean flag1;
        if (framelayout != null)
        {
            flag = true;
            G = com.smartadserver.android.library.h.c.a(this);
            if (G > -1)
            {
                FrameLayout framelayout1 = new FrameLayout(getContext());
                framelayout1.setTag(H);
                android.view.ViewGroup.LayoutParams layoutparams;
                ViewGroup viewgroup;
                if (getVisibility() != byte0)
                {
                    byte0 = 4;
                }
                framelayout1.setVisibility(byte0);
                layoutparams = new android.view.ViewGroup.LayoutParams(J.width, J.height);
                viewgroup = (ViewGroup)getParent();
                I = new WeakReference(viewgroup);
                viewgroup.addView(framelayout1, G, layoutparams);
                viewgroup.removeView(this);
            }
            framelayout.addView(this);
        }
        flag1 = flag;
        if (flag1)
        {
            com.smartadserver.android.library.h.c.a(n, "moveViewToForeground succeeded");
            return flag1;
        } else
        {
            com.smartadserver.android.library.h.c.a(n, "moveViewToForeground failed");
            return flag1;
        }
    }

    static boolean d(SASAdView sasadview)
    {
        return sasadview.d();
    }

    static View e(SASAdView sasadview)
    {
        return sasadview.E;
    }

    public static boolean e()
    {
        return p;
    }

    static void f(SASAdView sasadview)
    {
        sasadview.o();
    }

    public static boolean f()
    {
        return s;
    }

    static void g(SASAdView sasadview)
    {
        sasadview.n();
    }

    public static String getBaseUrl()
    {
        return D;
    }

    public static Bitmap getCloseButtonBitmap()
    {
        return C;
    }

    public static int getDefaultAdLoadingTimeout()
    {
        return q;
    }

    public static int getDefaultAdPrefetchTimeout()
    {
        return r;
    }

    static void h(SASAdView sasadview)
    {
        sasadview.q();
    }

    private void n()
    {
        com.smartadserver.android.library.h.c.a(n, "moveViewToBackground");
        FrameLayout framelayout = getExpandParentView();
        setPadding(0, 0, 0, 0);
        if (framelayout.indexOfChild(this) > -1)
        {
            framelayout.removeView(this);
        }
        if (G > -1)
        {
            if (I != null)
            {
                ViewGroup viewgroup = (ViewGroup)I.get();
                if (viewgroup != null)
                {
                    viewgroup.addView(this, G, J);
                    FrameLayout framelayout1 = (FrameLayout)viewgroup.findViewWithTag(H);
                    if (framelayout1 != null)
                    {
                        viewgroup.removeView(framelayout1);
                    }
                }
            }
            I = null;
            G = -1;
        }
    }

    private void o()
    {
        k.b();
        k.setInAppBrowserMode(false);
        k.a("about:blank");
        k.setVisibility(8);
        j.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        getExpandParentView().invalidate();
    }

    private void p()
    {
        com.smartadserver.android.library.h.c.a(n, (new StringBuilder()).append("\nid: ").append(getId()).append("\n").append("mWebView size:").append(j.getWidth()).append(" x ").append(j.getHeight()).append("\n").append("         visibility:").append(j.getVisibility()).append("\n").append("mSecondaryWebView size:").append(k.getWidth()).append(" x ").append(k.getHeight()).append("\n").append("                  visibility:").append(k.getVisibility()).append("\n").append("mExpanded: ").append(t).append("\n").append("mViewIndex: ").append(G).append("\n").append("getParent: ").append(getParent()).append("\n").append("getRootView().findViewById(R.id.content): ").append(getRootView().findViewById(0x1020002)).append(" \n").append("index in parent: ").append(com.smartadserver.android.library.h.c.a(this)).toString());
    }

    private void q()
    {
        if ((getContext() instanceof Activity) && u != -10)
        {
            com.smartadserver.android.library.h.c.a(n, "restore rotation mode");
            ((Activity)getContext()).setRequestedOrientation(u);
            u = -10;
        }
    }

    public static void setBaseUrl(String s1)
    {
        if (s1 != null)
        {
            D = s1;
        }
    }

    public static void setCloseButtonBitmap(Bitmap bitmap)
    {
        C = bitmap;
    }

    public static void setDefaultAdLoadingTimeout(int i1)
    {
        q = i1;
    }

    public static void setDefaultAdPrefetchTimeout(int i1)
    {
        r = i1;
    }

    public static void setUseHashedAndroidId(boolean flag)
    {
        p = flag;
    }

    public static void setVideoViewZOrderOnTop(boolean flag)
    {
        s = flag;
    }

    public void a()
    {
        com.smartadserver.android.library.h.c.a(n, "collapseImpl()");
        a(new Runnable() {

            final SASAdView a;

            public void run()
            {
                if (com.smartadserver.android.library.ui.SASAdView.a(a))
                {
                    com.smartadserver.android.library.ui.SASAdView.f(a);
                    SASAdView.g(a);
                    com.smartadserver.android.library.ui.SASAdView.e(a).setVisibility(8);
                    com.smartadserver.android.library.ui.SASAdView.a(a, false);
                    com.smartadserver.android.library.ui.SASAdView.a(a, null);
                    com.smartadserver.android.library.ui.SASAdView.h(a);
                }
                a.g.c.b();
                a.post(new Runnable(this) {

                    final _cls7 a;

                    public void run()
                    {
                        a.a.g.a.a(a.a.getWidth(), a.a.getHeight());
                    }

            
            {
                a = _pcls7;
                super();
            }
                });
            }

            
            {
                a = SASAdView.this;
                super();
            }
        });
    }

    public void a(int i1)
    {
        if (A)
        {
            com.smartadserver.android.library.ui.d d1;
            if (i1 == 1 || i1 == 0 || i1 == 2 || i1 == 3)
            {
                d1 = new com.smartadserver.android.library.ui.d(this, i1);
            } else
            {
                d1 = null;
            }
            if (d1 != null)
            {
                for (Iterator iterator = z.iterator(); iterator.hasNext(); ((com.smartadserver.android.library.ui.c)iterator.next()).onStateChanged(d1)) { }
            }
        }
    }

    public void a(int i1, String s1, int j1, boolean flag, String s2, com.smartadserver.android.library.ui.a a1)
    {
        a(i1, s1, j1, flag, s2, a1, q);
    }

    public void a(int i1, String s1, int j1, boolean flag, String s2, com.smartadserver.android.library.ui.a a1, int k1)
    {
        a(i1, s1, j1, flag, s2, a1, k1, false);
    }

    protected void a(int i1, String s1, int j1, boolean flag, String s2, com.smartadserver.android.library.ui.a a1, int k1, 
            boolean flag1)
    {
        (new Thread(new Runnable(i1, s1, j1, flag, s2, a1, k1, flag1) {

            final int a;
            final String b;
            final int c;
            final boolean d;
            final String e;
            final com.smartadserver.android.library.ui.a f;
            final int g;
            final boolean h;
            final SASAdView i;

            public void run()
            {
                com.smartadserver.android.library.ui.SASAdView.a(i, a, b, c, d, e, f, g, h);
            }

            
            {
                i = SASAdView.this;
                a = i1;
                b = s1;
                c = j1;
                d = flag;
                e = s2;
                f = a1;
                g = k1;
                h = flag1;
                super();
            }
        })).start();
    }

    public void a(android.view.View.OnClickListener onclicklistener)
    {
        a(new Runnable(onclicklistener) {

            final android.view.View.OnClickListener a;
            final SASAdView b;

            public void run()
            {
                b.j.setCloseButtonVisibility(0);
                b.j.a(-1, -1);
                if (b.l != null)
                {
                    b.j.setCloseButtonPosition(b.l.g());
                }
                b.j.setCloseButtonOnClickListener(a);
            }

            
            {
                b = SASAdView.this;
                a = onclicklistener;
                super();
            }
        });
    }

    public abstract void a(View view);

    public void a(com.smartadserver.android.library.ui.c c1)
    {
        if (!z.contains(c1) && c1 != null)
        {
            z.add(c1);
        }
    }

    public void a(Runnable runnable)
    {
        if (com.smartadserver.android.library.h.c.a())
        {
            runnable.run();
            return;
        }
        if (F != null)
        {
            F.post(runnable);
            return;
        } else
        {
            runnable.run();
            return;
        }
    }

    public void a(String s1)
    {
        if ("sas:click".equals(s1))
        {
            s1 = l.m();
        }
        if (s1.length() == 0)
        {
            com.smartadserver.android.library.h.c.a(n, "open(url) failed: url is empty");
            return;
        }
        if (l != null && com.smartadserver.android.library.h.c.d(getContext()))
        {
            com.smartadserver.android.library.h.c.a(n, (new StringBuilder()).append("open(").append(s1).append(")").toString());
            String s2 = l.e();
            if (s2 != null && !s2.equals(""))
            {
                e.a(s2, true);
            }
            d = true;
            if (!l.f())
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
                try
                {
                    Context context = getContext();
                    if (!(context instanceof Activity))
                    {
                        intent.setFlags(0x10000000);
                    }
                    context.startActivity(intent);
                    Thread.sleep(1000L);
                }
                catch (ActivityNotFoundException activitynotfoundexception) { }
                catch (InterruptedException interruptedexception) { }
                if (m)
                {
                    g();
                    return;
                } else
                {
                    g.c.b();
                    return;
                }
            } else
            {
                a(new Runnable(s1) {

                    final String a;
                    final SASAdView b;

                    public void run()
                    {
                        b.setEnableStateChangeEvent(false);
                        b.k.setInAppBrowserMode(true);
                        b.g.a.expand(a);
                        b.setEnableStateChangeEvent(true);
                        b.g.c.b();
                    }

            
            {
                b = SASAdView.this;
                a = s1;
                super();
            }
                });
                return;
            }
        } else
        {
            com.smartadserver.android.library.h.c.a(n, "open(url) failed: no internet connection or adElement is null");
            return;
        }
    }

    public void a(String s1, int i1, int j1, int k1, int l1, boolean flag, boolean flag1, 
            boolean flag2, String s2, boolean flag3)
    {
        int i2;
        com.smartadserver.android.library.h.c.a(n, (new StringBuilder()).append("view.expand(").append(s1).append(", w:").append(i1).append(", h:").append(j1).append(", offX:").append(k1).append(", offY:").append(l1).append(")").toString());
        boolean flag4;
        Activity activity;
        PackageManager packagemanager;
        ActivityInfo activityinfo;
        if (!k.d() && (flag2 || !"none".equals(s2)))
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        if (!(getContext() instanceof Activity) || !flag4) goto _L2; else goto _L1
_L1:
        activity = (Activity)getContext();
        packagemanager = activity.getPackageManager();
        activityinfo = packagemanager.getActivityInfo(activity.getComponentName(), 129);
        if (activityinfo == null) goto _L2; else goto _L3
_L3:
        if ((0x80 | activityinfo.configChanges) <= 0) goto _L2; else goto _L4
_L4:
        if (u == -10)
        {
            u = activity.getRequestedOrientation();
            com.smartadserver.android.library.h.c.a(n, (new StringBuilder()).append("lock rotation, current orientation: ").append(u).toString());
        }
        i2 = com.smartadserver.android.library.h.c.h(getContext());
        if ("none".equals(s2)) goto _L6; else goto _L5
_L5:
        if (!"portrait".equals(s2)) goto _L8; else goto _L7
_L7:
        i2 = 1;
_L6:
        boolean flag5;
        try
        {
            activity.setRequestedOrientation(i2);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
_L2:
        a(new Runnable(s1, i1, j1, k1, l1, flag, flag1, flag3) {

            final String a;
            final int b;
            final int c;
            final int d;
            final int e;
            final boolean f;
            final boolean g;
            final boolean h;
            final SASAdView i;

            public void run()
            {
                int j2;
                int k2;
                android.widget.FrameLayout.LayoutParams layoutparams;
                boolean flag7;
                FrameLayout framelayout;
                com.smartadserver.android.library.d.a a1 = i.l;
                boolean flag6 = false;
                if (a1 != null)
                {
                    flag6 = i.l.f();
                }
                if (a != null && !com.smartadserver.android.library.ui.SASAdView.a(i) && i.k.d() || com.smartadserver.android.library.ui.SASAdView.a(i) && flag6)
                {
                    i.m = true;
                }
                if (b == -1)
                {
                    j2 = -1;
                } else
                {
                    j2 = b;
                }
                if (c == -1)
                {
                    k2 = -1;
                } else
                {
                    k2 = c;
                }
                layoutparams = new android.widget.FrameLayout.LayoutParams(j2, k2);
                if (i.k.getVisibility() == 8)
                {
                    flag7 = true;
                } else
                {
                    flag7 = false;
                }
                framelayout = i.getExpandParentView();
                if (b != -1 || c != -1) goto _L2; else goto _L1
_L1:
                if (!com.smartadserver.android.library.ui.SASAdView.a(i))
                {
                    com.smartadserver.android.library.ui.SASAdView.a(i, com.smartadserver.android.library.ui.SASAdView.d(i));
                }
                if (!com.smartadserver.android.library.ui.SASAdView.a(i))
                {
                    return;
                }
                break MISSING_BLOCK_LABEL_841;
_L2:
                new Rect();
                Rect rect = new Rect();
                framelayout.getGlobalVisibleRect(rect);
                rect.top = rect.top + framelayout.getPaddingTop();
                rect.bottom = rect.bottom - framelayout.getPaddingBottom();
                rect.left = rect.left + framelayout.getPaddingLeft();
                rect.right = rect.right - framelayout.getPaddingRight();
                int ai[] = new int[2];
                i.getLocationOnScreen(ai);
                Rect rect1 = i.getDefaultBounds();
                rect1.top = rect1.top + rect.top;
                rect1.left = rect1.left + rect.left;
                int l2 = d;
                int i3 = e;
                int j3;
                int k3;
                int l3;
                int i4;
                int j4;
                if (f)
                {
                    j3 = com.smartadserver.android.library.ui.SASAdView.b(i);
                } else
                {
                    j3 = 5;
                }
                if (!g)
                {
                    double d1 = 1.0D;
                    if (j2 > 0)
                    {
                        d1 = Math.min(d1, (double)rect.width() / (double)j2);
                    }
                    double d2;
                    int i5;
                    int j5;
                    if (k2 > 0)
                    {
                        d2 = Math.min(d1, (double)(rect.height() - i.getNeededTopPadding()) / (double)k2);
                    } else
                    {
                        d2 = d1;
                    }
                    if (d2 < 1.0D)
                    {
                        byte byte0;
                        int k4;
                        int l4;
                        android.view.ViewGroup.LayoutParams layoutparams1;
                        android.widget.RelativeLayout.LayoutParams layoutparams2;
                        MalformedURLException malformedurlexception;
                        if (j2 > 0)
                        {
                            j5 = (int)(d2 * (double)j2);
                        } else
                        {
                            j5 = j2;
                        }
                        if (k2 > 0)
                        {
                            k2 = (int)(d2 * (double)k2);
                        }
                        i.g.a.a("Resize properties are wider than max size but offscreen is not allowed => cropping", null);
                        i5 = k2;
                    } else
                    {
                        i5 = k2;
                        j5 = j2;
                    }
                    if (j5 > 0)
                    {
                        l3 = Math.min(Math.max(l2, -rect1.left), rect.width() - j5 - rect1.left);
                    } else
                    {
                        l3 = l2;
                    }
                    if (i5 > 0)
                    {
                        j4 = Math.min(Math.max(i3, -(rect1.top - (rect.top + i.getNeededTopPadding()))), (rect.height() + rect.top) - i5 - rect1.top);
                        k3 = i5;
                        i4 = j5;
                    } else
                    {
                        j4 = i3;
                        i4 = j5;
                        k3 = i5;
                    }
                } else
                {
                    k3 = k2;
                    l3 = l2;
                    i4 = j2;
                    j4 = i3;
                }
                layoutparams.width = i4;
                layoutparams.height = k3;
                if ((j3 & 2) > 0)
                {
                    layoutparams.bottomMargin = j4 + (rect.bottom - rect1.bottom);
                    byte0 = 80;
                } else
                {
                    layoutparams.topMargin = j4 + (rect1.top - rect.top);
                    byte0 = 48;
                }
                if ((j3 & 4) <= 0 && i4 >= 0) goto _L4; else goto _L3
_L3:
                k4 = byte0 | 3;
                layoutparams.leftMargin = l3 + (rect1.left - rect.left);
_L5:
                layoutparams.gravity = k4;
                if (flag7)
                {
                    com.smartadserver.android.library.ui.SASAdView.a(i, layoutparams);
                } else
                {
                    com.smartadserver.android.library.ui.SASAdView.c(i).height = layoutparams.height;
                    com.smartadserver.android.library.ui.SASAdView.c(i).width = layoutparams.width;
                }
                if (true) goto _L1; else goto _L4
_L4:
                if ((0x10 & com.smartadserver.android.library.ui.SASAdView.b(i)) > 0)
                {
                    k4 = byte0 | 5;
                    layoutparams.rightMargin = l3 + (rect.right - rect1.right);
                } else
                {
                    k4 = byte0 | 3;
                    layoutparams.leftMargin = l3 + (rect1.centerX() - i4 / 2 - -rect.left);
                }
                  goto _L5
                l4 = i.getNeededTopPadding();
                if (f)
                {
                    i.setPadding(0, l4, 0, 0);
                }
                layoutparams1 = i.getLayoutParams();
                layoutparams2 = new android.widget.RelativeLayout.LayoutParams(layoutparams1.width, layoutparams1.height);
                if (flag7)
                {
                    i.setLayoutParams(layoutparams);
                }
                if (a != null)
                {
                    if (flag7)
                    {
                        i.j.setLayoutParams(layoutparams2);
                        i.k.setVisibility(0);
                    }
                    if (!i.k.d())
                    {
                        try
                        {
                            (new Thread(this, new URL(a)) {

                                final URL a;
                                final _cls6 b;

                                public void run()
                                {
                                    String as[] = new String[1];
                                    String s1 = com.smartadserver.android.library.h.b.a(a, as);
                                    String s2;
                                    if (as[0] != null)
                                    {
                                        s2 = com.smartadserver.android.library.h.c.f(as[0]);
                                    } else
                                    {
                                        s2 = com.smartadserver.android.library.h.c.f(b.a);
                                    }
                                    if (s1 != null && s1.contains("\"mraid.js\""))
                                    {
                                        s1 = s1.replace("\"mraid.js\"", (new StringBuilder()).append("\"").append(com.smartadserver.android.library.controller.mraid.a.a).append("\"").toString());
                                    }
                                    b.i.a(new Runnable(this, s2, s1) {

                                        final String a;
                                        final String b;
                                        final _cls1 c;

                                        public void run()
                                        {
                                            c.b.i.k.a(a, b, "text/html", "UTF-8", null);
                                        }

            
            {
                c = _pcls1;
                a = s1;
                b = s2;
                super();
            }
                                    });
                                }

            
            {
                b = _pcls6;
                a = url;
                super();
            }
                            }).start();
                        }
                        // Misplaced declaration of an exception variable
                        catch (MalformedURLException malformedurlexception)
                        {
                            i.k.a(a);
                        }
                    } else
                    {
                        i.k.a(a);
                    }
                }
                if (h)
                {
                    com.smartadserver.android.library.ui.SASAdView.e(i).setVisibility(0);
                }
                i.post(new Runnable(this) {

                    final _cls6 a;

                    public void run()
                    {
                        a.i.g.a.a(a.i.getWidth(), a.i.getHeight());
                    }

            
            {
                a = _pcls6;
                super();
            }
                });
                return;
            }

            
            {
                i = SASAdView.this;
                a = s1;
                b = i1;
                c = j1;
                d = k1;
                e = l1;
                f = flag;
                g = flag1;
                h = flag2;
                super();
            }
        });
        return;
_L8:
        flag5 = "landscape".equals(s2);
        if (flag5)
        {
            i2 = 0;
        }
          goto _L6
    }

    public void a(String s1, int i1, int j1, boolean flag, String s2)
    {
        a(s1, i1, j1, 0, 0, true, true, flag, s2, true);
    }

    public void a(String s1, String s2)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(s1);
        a(s2, arraylist);
    }

    public void a(String s1, ArrayList arraylist)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("if (typeof mraid != 'undefined') mraid.fire");
        stringbuilder.append(c(s1));
        stringbuilder.append("Event(");
        if (arraylist != null && arraylist.size() > 0)
        {
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuilder.append("\","))
            {
                String s2 = (String)iterator.next();
                stringbuilder.append("\"");
                stringbuilder.append(s2);
            }

            stringbuilder.deleteCharAt(-1 + stringbuilder.length());
        }
        stringbuilder.append(")");
        b(stringbuilder.toString());
    }

    public void b()
    {
        if (f != null)
        {
            f.a(null);
        }
        h();
        j.c();
        k.c();
    }

    public void b(android.view.View.OnClickListener onclicklistener)
    {
        a(new Runnable(onclicklistener) {

            final android.view.View.OnClickListener a;
            final SASAdView b;

            public void run()
            {
                b.j.setCloseButtonVisibility(0);
                b.j.a(50, 50);
                b.j.setCloseButtonOnClickListener(a);
            }

            
            {
                b = SASAdView.this;
                a = onclicklistener;
                super();
            }
        });
    }

    public abstract void b(View view);

    public void b(String s1)
    {
        if (j != null && s1 != null)
        {
            a(new Runnable(s1) {

                final String a;
                final SASAdView b;

                public void run()
                {
                    b.j.a((new StringBuilder()).append("javascript:").append(a).toString());
                }

            
            {
                b = SASAdView.this;
                a = s1;
                super();
            }
            });
        }
    }

    public void c()
    {
        com.smartadserver.android.library.h.c.a(n, "closeImpl()");
        a(new Runnable() {

            final SASAdView a;

            public void run()
            {
                a.setVisibility(8);
                a.g.c.b();
                try
                {
                    Class.forName("android.webkit.WebView").getMethod("onPause", (Class[])null).invoke(a.j.getChildAt(0), (Object[])null);
                }
                catch (Exception exception) { }
                a.j.b();
                a.j.a("about:blank");
            }

            
            {
                a = SASAdView.this;
                super();
            }
        });
    }

    public void g()
    {
        com.smartadserver.android.library.h.c.a(n, "collapse");
        String s1 = g.a.getState();
        boolean flag;
        if ("expanded".equals(s1) || "resized".equals(s1) || k.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            g.a.close();
        }
    }

    public com.smartadserver.android.library.d.a getCurrentAdElement()
    {
        return l;
    }

    public Rect getCurrentBounds()
    {
        return c(this);
    }

    public View getCurrentLoaderView()
    {
        return x;
    }

    public Rect getDefaultBounds()
    {
        View view = getExpandParentView().findViewWithTag(H);
        if (view != null)
        {
            return c(view);
        } else
        {
            return getCurrentBounds();
        }
    }

    public FrameLayout getExpandParentContainer()
    {
        return y;
    }

    public FrameLayout getExpandParentView()
    {
        if (y != null)
        {
            return y;
        }
        View view;
        if (getContext() instanceof Activity)
        {
            view = ((Activity)getContext()).getWindow().getDecorView();
        } else
        {
            view = getRootView();
        }
        if (view instanceof FrameLayout)
        {
            return (FrameLayout)view;
        }
        if (view != null)
        {
            View view1 = view.findViewById(0x1020002);
            if (view1 instanceof FrameLayout)
            {
                return (FrameLayout)view1;
            }
        }
        return null;
    }

    public int getExpandPolicy()
    {
        return v;
    }

    public View getLoaderView()
    {
        return w;
    }

    public Location getLocation()
    {
        Location location = L;
        Location location1 = null;
        if (location != null)
        {
            location1 = new Location(L);
        }
        return location1;
    }

    public com.smartadserver.android.library.ui.b getMessageHandler()
    {
        return B;
    }

    public int getNeededTopPadding()
    {
        FrameLayout framelayout = getExpandParentView();
        int ai[] = new int[2];
        framelayout.getLocationOnScreen(ai);
        int i1 = ai[1];
        int j1 = 0;
        if (i1 == 0)
        {
            Rect rect = new Rect();
            framelayout.getWindowVisibleDisplayFrame(rect);
            j1 = rect.top;
        }
        return j1;
    }

    public void h()
    {
        g.a.close();
        if ("default".equals(g.a.getState()))
        {
            g.a.close();
        }
    }

    public void i()
    {
        g.a.b();
        a(new Runnable() {

            final SASAdView a;

            public void run()
            {
                a.j.b();
                a.j.a("about:blank");
                try
                {
                    Class.forName("android.webkit.WebView").getMethod("onResume", (Class[])null).invoke(a.j.getChildAt(0), (Object[])null);
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            }

            
            {
                a = SASAdView.this;
                super();
            }
        });
        d = false;
    }

    public void j()
    {
        a(new Runnable() {

            final SASAdView a;

            public void run()
            {
                a.j.setCloseButtonVisibility(8);
            }

            
            {
                a = SASAdView.this;
                super();
            }
        });
        j.setCloseButtonOnClickListener(null);
    }

    public boolean k()
    {
        return A;
    }

    public boolean l()
    {
        return d;
    }

    public boolean m()
    {
        return j.getCloseButtonVisibility() != 8;
    }

    protected void onAttachedToWindow()
    {
        com.smartadserver.android.library.h.c.a(n, "onAttachedToWindow()");
        super.onAttachedToWindow();
        g.a();
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        com.smartadserver.android.library.h.c.a(n, "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        p();
        M = true;
    }

    protected void onDetachedFromWindow()
    {
        com.smartadserver.android.library.h.c.a(n, "onDetachedFromWindow()");
        super.onDetachedFromWindow();
        g.b();
        g.a.c();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        g.a.a(com.smartadserver.android.library.h.c.f(getContext()));
        if (M)
        {
            g.c.a();
            M = false;
        }
        g.a.a(isShown());
        g.a.c();
    }

    protected void onVisibilityChanged(View view, int i1)
    {
        super.onVisibilityChanged(view, i1);
        if (g != null)
        {
            g.a.a(isShown());
            g.a.c();
        }
    }

    public void setEnableStateChangeEvent(boolean flag)
    {
        A = flag;
    }

    public void setExpandParentContainer(FrameLayout framelayout)
    {
        y = framelayout;
    }

    public void setExpandPolicy(int i1)
    {
        v = i1;
    }

    public void setLoaderView(View view)
    {
        w = view;
    }

    public void setLocation(Location location)
    {
        if (location != null)
        {
            L = new Location(location);
            g.a.d();
            return;
        } else
        {
            L = null;
            return;
        }
    }

    public void setMessageHandler(com.smartadserver.android.library.ui.b b1)
    {
        B = b1;
    }

    static 
    {
        a = 6000;
        b = 10000;
        c = false;
        q = a;
        r = b;
        s = c;
    }
}
