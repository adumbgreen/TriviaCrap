// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            s, ab, AdMarvelInternalWebView, ac, 
//            ak, al, AdMarvelAd, AdMarvelUtils, 
//            AdMarvelView

public class AdMarvelWebView extends RelativeLayout
{

    private static String g = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style>";
    private static String h = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style><script type='text/javascript' src='http://admarvel.s3.amazonaws.com/js/admarvel_compete_v1.1.js'></script>";
    private static String i = "<html><head>%s</head><body><div align=\"center\">%s</div></body></html>";
    private static String j = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0;padding:0;} .bl span{display:table-cell;vertical-align:middle;height:38px;text-align:center;width:500px;} .bl {margin:2px;padding: 2px 15px;display:block;vertical-align:middle;text-align:center;line-height: 15px;font-size:12px;font-family: Helvetica;font-weight: bold;text-decoration: none;color:rgb(%d,%d,%d);text-shadow: #222222 0px 1px 2px; background-color:rgb(%d,%d,%d);background-image: url('http://admarvel.s3.amazonaws.com/btn_bg_trns.png');border: 2px rgb(%d, %d, %d) solid;-webkit-border-radius: 10px;}</style>";
    private static String k = "<html><head>%s</head><body><div class=\"bl\"><a href=\"%s\" style=\"text-decoration: none; color: #000;\" ><span>%s</span></a></div>";
    private static String l = "<meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,target-densitydpi=device-dpi, width=device-width\" />";
    private static String m = "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />";
    private static final Map p = new ConcurrentHashMap();
    private boolean A;
    private String B;
    private boolean C;
    private final AtomicBoolean D = new AtomicBoolean(false);
    private final AtomicBoolean E = new AtomicBoolean(false);
    private final AtomicBoolean F = new AtomicBoolean(false);
    private final File G;
    private final String H;
    private final Handler I;
    private WeakReference J;
    private d K;
    private int L;
    private int M;
    private boolean N;
    private boolean O;
    private boolean P;
    private AdMarvelInternalWebView Q;
    private WeakReference R;
    private AdMarvelAd S;
    private boolean T;
    private String U;
    private int V;
    private int W;
    private int Z;
    public final AtomicBoolean a = new AtomicBoolean(false);
    private int aa;
    private int ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private String ag;
    private String ah;
    private String ai;
    private String aj;
    private String ak;
    private al al;
    private boolean am;
    private boolean an;
    private boolean ao;
    int b;
    String c;
    String d;
    final String e = UUID.randomUUID().toString();
    public int f;
    private String n;
    private String o;
    private boolean q;
    private final AtomicBoolean r = new AtomicBoolean(false);
    private final boolean s;
    private final boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private String y;
    private z z;

    AdMarvelWebView(Context context, boolean flag, boolean flag1, File file, String s1, AdMarvelAd admarvelad, Handler handler)
    {
        super(context);
        u = false;
        v = false;
        w = false;
        x = false;
        y = "top-right";
        A = false;
        B = null;
        C = false;
        L = -1;
        M = 0x80000000;
        f = 0x80000000;
        N = false;
        O = false;
        P = false;
        S = null;
        T = false;
        U = null;
        V = -1;
        W = -1;
        Z = -1;
        aa = -1;
        ab = -1;
        ac = null;
        ad = null;
        ae = null;
        af = null;
        ag = null;
        ah = null;
        ai = null;
        aj = null;
        ak = null;
        al = null;
        am = true;
        an = false;
        ao = false;
        H = s1;
        s = flag;
        t = flag1;
        I = handler;
        G = file;
        K = new d();
        if (context instanceof Activity)
        {
            L = ((Activity)context).getRequestedOrientation();
        }
        J = new WeakReference(K);
        S = admarvelad;
    }

    static int A(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.Z;
    }

    static int B(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.aa;
    }

    static int C(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ab;
    }

    static String D(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ak;
    }

    static boolean E(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.am;
    }

    static String F(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ac;
    }

    static String G(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ae;
    }

    static al H(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.al;
    }

    static String I(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ag;
    }

    static String J(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ad;
    }

    static String K(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ah;
    }

    static String L(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.ai;
    }

    static String M(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.aj;
    }

    static String N(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.af;
    }

    static File O(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.G;
    }

    static boolean P(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.A;
    }

    static boolean Q(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.P;
    }

    static int R(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.L;
    }

    static String S(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.U;
    }

    static boolean T(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.T;
    }

    static int a(AdMarvelWebView admarvelwebview, int i1)
    {
        admarvelwebview.M = i1;
        return i1;
    }

    static AdMarvelInternalWebView a(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.Q;
    }

    static al a(AdMarvelWebView admarvelwebview, al al1)
    {
        admarvelwebview.al = al1;
        return al1;
    }

    static z a(AdMarvelWebView admarvelwebview, z z1)
    {
        admarvelwebview.z = z1;
        return z1;
    }

    public static s a(String s1)
    {
        return (s)p.get(s1);
    }

    static WeakReference a(AdMarvelWebView admarvelwebview, WeakReference weakreference)
    {
        admarvelwebview.R = weakreference;
        return weakreference;
    }

    static void a(LinearLayout linearlayout, android.widget.RelativeLayout.LayoutParams layoutparams, String s1, int i1, int j1, int k1, int l1, int i2, 
            int j2, int k2)
    {
        b(linearlayout, layoutparams, s1, i1, j1, k1, l1, i2, j2, k2);
    }

    static void a(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.d(s1);
    }

    public static void a(String s1, s s2)
    {
        com/admarvel/android/ads/AdMarvelWebView;
        JVM INSTR monitorenter ;
        p.put(s1, s2);
        com/admarvel/android/ads/AdMarvelWebView;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean a(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.T = flag;
        return flag;
    }

    static int b(AdMarvelWebView admarvelwebview, int i1)
    {
        admarvelwebview.V = i1;
        return i1;
    }

    static String b(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.B = s1;
        return s1;
    }

    static WeakReference b(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.R;
    }

    private static void b(LinearLayout linearlayout, android.widget.RelativeLayout.LayoutParams layoutparams, String s1, int i1, int j1, int k1, int l1, int i2, 
            int j2, int k2)
    {
        layoutparams.rightMargin = 0;
        layoutparams.leftMargin = 0;
        layoutparams.topMargin = 0;
        layoutparams.bottomMargin = 0;
        if (k1 == -1)
        {
            k1 = i2;
        }
        if (l1 == -1)
        {
            l1 = j2;
        }
        if (s1 == null || s1.length() <= 0) goto _L2; else goto _L1
_L1:
        if (!"top-right".equals(s1)) goto _L4; else goto _L3
_L3:
        layoutparams.addRule(10);
        layoutparams.addRule(11);
        int j5 = (i1 + k1) - i2;
        if (i1 == 0 && j5 > 0)
        {
            layoutparams.rightMargin = j5 / 2;
        } else
        if (j5 > 0)
        {
            layoutparams.rightMargin = j5;
        } else
        {
            layoutparams.rightMargin = 0;
        }
        if (j1 < 0)
        {
            layoutparams.topMargin = Math.abs(j1);
        } else
        {
            layoutparams.topMargin = 0;
        }
_L6:
        linearlayout.setLayoutParams(layoutparams);
        return;
_L4:
        if ("top-left".equals(s1))
        {
            layoutparams.addRule(9);
            layoutparams.addRule(10);
            if (i1 < 0)
            {
                layoutparams.leftMargin = Math.abs(i1);
            } else
            if (i1 == 0)
            {
                int i5 = (k1 - i2) / 2;
                if (i5 > 0)
                {
                    layoutparams.leftMargin = i5;
                }
            } else
            {
                layoutparams.leftMargin = 0;
            }
            if (j1 < 0)
            {
                layoutparams.topMargin = Math.abs(j1);
            } else
            {
                layoutparams.topMargin = 0;
            }
            continue; /* Loop/switch isn't completed */
        }
        if ("bottom-right".equals(s1))
        {
            layoutparams.addRule(11);
            layoutparams.addRule(12);
            int k4 = (i1 + k1) - i2;
            int l4;
            if (i1 == 0 && k4 > 0)
            {
                layoutparams.rightMargin = k4 / 2;
            } else
            if (k4 > 0)
            {
                layoutparams.rightMargin = k4;
            } else
            {
                layoutparams.rightMargin = 0;
            }
            l4 = j2 - (j1 + l1);
            if (l4 < 0)
            {
                layoutparams.bottomMargin = Math.abs(l4);
            } else
            {
                layoutparams.bottomMargin = 0;
            }
            continue; /* Loop/switch isn't completed */
        }
        if ("bottom-left".equals(s1))
        {
            layoutparams.addRule(9);
            layoutparams.addRule(12);
            int i4;
            if (i1 < 0)
            {
                layoutparams.leftMargin = Math.abs(i1);
            } else
            if (i1 == 0)
            {
                int j4 = (k1 - i2) / 2;
                if (j4 > 0)
                {
                    layoutparams.leftMargin = j4;
                }
            } else
            {
                layoutparams.leftMargin = 0;
            }
            i4 = j2 - (j1 + l1);
            if (i4 < 0)
            {
                layoutparams.bottomMargin = Math.abs(i4);
            } else
            {
                layoutparams.bottomMargin = 0;
            }
            continue; /* Loop/switch isn't completed */
        } else
        {
            if ("center".equals(s1))
            {
                if (i1 + k1 <= i2)
                {
                    if (i1 <= 0)
                    {
                        layoutparams.leftMargin = ((i1 + k1) / 2 + Math.abs(i1)) - k2 / 2;
                    } else
                    {
                        layoutparams.leftMargin = k1 / 2 - k2 / 2;
                    }
                } else
                if (i1 <= 0)
                {
                    layoutparams.leftMargin = (i2 / 2 + Math.abs(i1)) - k2 / 2;
                } else
                {
                    layoutparams.leftMargin = (i2 - i1) / 2 - k2 / 2;
                }
                layoutparams.addRule(15);
                if (j1 < 0)
                {
                    int l3 = j1 + l1 / 2;
                    if (l3 < 0)
                    {
                        layoutparams.topMargin = Math.abs(l3) + l1 / 2;
                        layoutparams.addRule(10);
                    } else
                    {
                        layoutparams.topMargin = 0;
                        layoutparams.addRule(15);
                    }
                } else
                {
                    int k3 = j2 - (j1 + l1 / 2);
                    if (k3 < 0)
                    {
                        layoutparams.bottomMargin = Math.abs(k3) + l1 / 2;
                        layoutparams.addRule(12);
                    } else
                    {
                        layoutparams.bottomMargin = 0;
                        layoutparams.addRule(15);
                    }
                }
            } else
            if ("bottom-center".equals(s1))
            {
                int j3 = j2 - (j1 + l1);
                if (j3 < 0)
                {
                    layoutparams.bottomMargin = Math.abs(j3);
                } else
                {
                    layoutparams.bottomMargin = 0;
                }
                layoutparams.addRule(9);
                layoutparams.addRule(12);
                if (i1 + k1 <= i2)
                {
                    if (i1 <= 0)
                    {
                        layoutparams.leftMargin = ((i1 + k1) / 2 + Math.abs(i1)) - k2 / 2;
                    } else
                    {
                        layoutparams.leftMargin = k1 / 2 - k2 / 2;
                    }
                } else
                if (i1 <= 0)
                {
                    layoutparams.leftMargin = (i2 / 2 + Math.abs(i1)) - k2 / 2;
                } else
                {
                    layoutparams.leftMargin = (i2 - i1) / 2 - k2 / 2;
                }
            } else
            if ("top-center".equals(s1))
            {
                layoutparams.addRule(14);
                if (j1 < 0)
                {
                    layoutparams.topMargin = Math.abs(j1);
                } else
                {
                    layoutparams.topMargin = 0;
                }
                if (i1 + k1 <= i2)
                {
                    if (i1 <= 0)
                    {
                        layoutparams.leftMargin = ((i1 + k1) / 2 + Math.abs(i1)) - k2 / 2;
                    } else
                    {
                        layoutparams.leftMargin = k1 / 2 - k2 / 2;
                    }
                } else
                if (i1 <= 0)
                {
                    layoutparams.leftMargin = (i2 / 2 + Math.abs(i1)) - k2 / 2;
                } else
                {
                    layoutparams.leftMargin = (i2 - i1) / 2 - k2 / 2;
                }
            } else
            {
                layoutparams.addRule(11);
                layoutparams.addRule(10);
                int i3 = (i1 + k1) - i2;
                if (i3 > 0)
                {
                    layoutparams.rightMargin = i3;
                } else
                {
                    layoutparams.rightMargin = 0;
                }
                if (j1 < 0)
                {
                    layoutparams.topMargin = Math.abs(j1);
                } else
                {
                    layoutparams.topMargin = 0;
                }
            }
            continue; /* Loop/switch isn't completed */
        }
_L2:
        layoutparams.addRule(11);
        layoutparams.addRule(10);
        int l2 = (i1 + k1) - i2;
        if (l2 > 0)
        {
            layoutparams.rightMargin = l2;
        } else
        {
            layoutparams.rightMargin = 0;
        }
        if (j1 < 0)
        {
            layoutparams.topMargin = Math.abs(j1);
        } else
        {
            layoutparams.topMargin = 0;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void b(String s1)
    {
        p.remove(s1);
    }

    static boolean b(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.O = flag;
        return flag;
    }

    static int c(AdMarvelWebView admarvelwebview, int i1)
    {
        admarvelwebview.W = i1;
        return i1;
    }

    static AdMarvelAd c(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.S;
    }

    static String c(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.y = s1;
        return s1;
    }

    private void c(String s1)
    {
        if (r.compareAndSet(true, false) && a(e) != null)
        {
            a(e).a(this, S, 308, com.admarvel.android.ads.ab.a(308));
        }
    }

    static boolean c(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.u = flag;
        return flag;
    }

    static int d(AdMarvelWebView admarvelwebview, int i1)
    {
        admarvelwebview.Z = i1;
        return i1;
    }

    static Handler d(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.I;
    }

    static String d(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.U = s1;
        return s1;
    }

    private void d(String s1)
    {
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        if (s1.length() > 0)
        {
            I.post(new ad(s1, this, S));
        }
        return;
        Exception exception;
        exception;
        Logging.log(Log.getStackTraceString(exception));
        return;
    }

    static boolean d(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.C = flag;
        return flag;
    }

    static int e(AdMarvelWebView admarvelwebview, int i1)
    {
        admarvelwebview.aa = i1;
        return i1;
    }

    static String e(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.n;
    }

    static String e(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.ac = s1;
        return s1;
    }

    static boolean e(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.am = flag;
        return flag;
    }

    static int f(AdMarvelWebView admarvelwebview, int i1)
    {
        admarvelwebview.ab = i1;
        return i1;
    }

    static String f(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.ad = s1;
        return s1;
    }

    static boolean f(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.O;
    }

    static boolean f(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.P = flag;
        return flag;
    }

    static String g(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.ae = s1;
        return s1;
    }

    static boolean g(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.q;
    }

    static boolean g(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.A = flag;
        return flag;
    }

    static String h(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.H;
    }

    static String h(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.af = s1;
        return s1;
    }

    static boolean h(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.v = flag;
        return flag;
    }

    static String i(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.o;
    }

    static String i(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.ag = s1;
        return s1;
    }

    static boolean i(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.w = flag;
        return flag;
    }

    static String j(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.ah = s1;
        return s1;
    }

    static AtomicBoolean j(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.F;
    }

    static boolean j(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.x = flag;
        return flag;
    }

    static String k(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.ai = s1;
        return s1;
    }

    static AtomicBoolean k(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.r;
    }

    static boolean k(AdMarvelWebView admarvelwebview, boolean flag)
    {
        admarvelwebview.N = flag;
        return flag;
    }

    static String l(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.aj = s1;
        return s1;
    }

    static AtomicBoolean l(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.E;
    }

    static String m(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.ak = s1;
        return s1;
    }

    static AtomicBoolean m(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.D;
    }

    static WeakReference n(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.J;
    }

    static void n(AdMarvelWebView admarvelwebview, String s1)
    {
        admarvelwebview.c(s1);
    }

    static int o(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.M;
    }

    static boolean p(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.v;
    }

    static boolean q(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.C;
    }

    static String r(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.y;
    }

    static z s(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.z;
    }

    static boolean t(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.u;
    }

    static boolean u(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.x;
    }

    static boolean v(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.w;
    }

    static boolean w(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.N;
    }

    static String x(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.B;
    }

    static int y(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.V;
    }

    static int z(AdMarvelWebView admarvelwebview)
    {
        return admarvelwebview.W;
    }

    void a()
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
        if (admarvelinternalwebview == null && O)
        {
            Context context = getContext();
            if (context != null && (context instanceof Activity))
            {
                admarvelinternalwebview = (AdMarvelInternalWebView)((ViewGroup)((Activity)context).getWindow().findViewById(0x1020002)).findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
            }
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        admarvelinternalwebview.e();
        if (admarvelinternalwebview instanceof AdMarvelInternalWebView)
        {
            admarvelinternalwebview.g();
        }
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            com.admarvel.android.ads.ak.b(admarvelinternalwebview);
            return;
        } else
        {
            com.admarvel.android.ads.al.b(admarvelinternalwebview);
            return;
        }
    }

    void a(int i1, int j1)
    {
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        layoutparams.width = i1;
        layoutparams.height = j1;
        requestLayout();
    }

    void a(int i1, int j1, int k1, int l1, AdMarvelView admarvelview)
    {
        if (S != null) goto _L2; else goto _L1
_L1:
        if (a(e) != null)
        {
            a(e).a(this, S, 305, com.admarvel.android.ads.ab.a(305));
        }
_L14:
        return;
_L2:
        if (S != null && S.getSource() != null)
        {
            o = S.getSource();
        }
        if (!S.getAdType().equals(AdMarvelAd.AdType.IMAGE) || !S.hasImage()) goto _L4; else goto _L3
_L3:
        if (S.getImageWidth() <= 0 || S.getImageHeight() <= 0) goto _L6; else goto _L5
_L5:
        if (com.admarvel.android.ads.ac.a() < 7) goto _L8; else goto _L7
_L7:
        if (AdMarvelUtils.isTabletDevice(getContext()) && !t) goto _L10; else goto _L9
_L9:
        if (com.admarvel.android.ads.ab.g(getContext()) >= com.admarvel.android.ads.ab.h(getContext())) goto _L12; else goto _L11
_L11:
        int k5 = com.admarvel.android.ads.ab.g(getContext());
_L15:
        float f1 = (float)k5 / com.admarvel.android.ads.ab.i(getContext());
        String s9 = (new StringBuilder()).append("<a href=\"").append(S.getClickURL()).append("\"><img src=\"").append(S.getImageURL()).append("\" width=\"").append(f1).append("\"\" /></a>").toString();
        String s10 = i;
        Object aobj6[] = new Object[2];
        aobj6[0] = (new StringBuilder()).append(g).append(m).toString();
        aobj6[1] = s9;
        n = String.format(s10, aobj6);
_L19:
        Q = new AdMarvelInternalWebView(getContext(), false, H, e, I, admarvelview, null, S);
        Q.setTag((new StringBuilder()).append(e).append("INTERNAL").toString());
        I.post(new Runnable(l1) {

            final int a;
            final AdMarvelWebView b;

            public void run()
            {
                AdMarvelWebView.a(b).setFocusable(true);
                AdMarvelWebView.a(b).setClickable(true);
                AdMarvelWebView.a(b).setBackgroundColor(a);
                AdMarvelWebView.a(b).setScrollContainer(false);
                AdMarvelWebView.a(b).setVerticalScrollBarEnabled(false);
                AdMarvelWebView.a(b).setHorizontalScrollBarEnabled(false);
                WeakReference weakreference1;
                if (com.admarvel.android.ads.ac.a() < 11)
                {
                    WeakReference weakreference = new WeakReference(b. new c());
                    AdMarvelWebView.a(b).setWebViewClient((WebViewClient)weakreference.get());
                } else
                {
                    WeakReference weakreference2 = new WeakReference(b. new b());
                    AdMarvelWebView.a(b).setWebViewClient((WebViewClient)weakreference2.get());
                }
                AdMarvelWebView.a(b, new WeakReference(AdMarvelWebView.a(b)));
                b.addView((View)AdMarvelWebView.b(b).get());
                weakreference1 = new WeakReference(new InnerJS((AdMarvelInternalWebView)AdMarvelWebView.b(b).get(), AdMarvelWebView.c(b), AdMarvelWebView.d(b), b, b.getContext()));
                AdMarvelWebView.a(b).addJavascriptInterface(weakreference1.get(), "ADMARVEL");
                if (AdMarvelView.b)
                {
                    AdMarvelWebView.a(b).loadDataWithBaseURL((new StringBuilder()).append(AdMarvelWebView.c(b).getOfflineBaseUrl()).append("/").toString(), AdMarvelWebView.e(b), "text/html", "utf-8", null);
                    return;
                }
                if (com.admarvel.android.ads.ac.a() < 11)
                {
                    String s13 = (new StringBuilder()).append("content://").append(b.getContext().getPackageName()).append(".AdMarvelLocalFileContentProvider").toString();
                    AdMarvelWebView.a(b).loadDataWithBaseURL(s13, AdMarvelWebView.e(b), "text/html", "utf-8", null);
                    return;
                } else
                {
                    AdMarvelWebView.a(b).loadDataWithBaseURL("http://baseurl.admarvel.com", AdMarvelWebView.e(b), "text/html", "utf-8", null);
                    return;
                }
            }

            
            {
                b = AdMarvelWebView.this;
                a = i1;
                super();
            }

            private class c extends WebViewClient
            {

                final AdMarvelWebView a;

                public void onLoadResource(WebView webview, String s1)
                {
                    Logging.log((new StringBuilder()).append("Load Ad : onLoadResource URL - ").append(s1).toString());
                    super.onLoadResource(webview, s1);
                }

                public void onPageFinished(WebView webview, String s1)
                {
                    super.onPageFinished(webview, s1);
                    Logging.log("Load Ad: onPageFinished");
                    if (AdMarvelUtils.isLogDumpEnabled())
                    {
                        webview.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
                    }
                    if (!AdMarvelWebView.m(a).get() && AdMarvelWebView.k(a).compareAndSet(true, false) && AdMarvelWebView.a(a.e) != null)
                    {
                        AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a));
                    }
                    AdMarvelWebView.l(a).set(true);
                }

                public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
                {
                    super.onPageStarted(webview, s1, bitmap);
                    Logging.log("Load Ad: onPageStarted");
                    AdMarvelWebView.l(a).set(false);
                }

                public void onReceivedError(WebView webview, int i1, String s1, String s2)
                {
                    Logging.log((new StringBuilder()).append("Load Ad : onReceivedError Failing URL - ").append(s2).toString());
                    super.onReceivedError(webview, i1, s1, s2);
                    if (AdMarvelWebView.k(a).compareAndSet(true, false) && AdMarvelWebView.a(a.e) != null)
                    {
                        AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a), 305, com.admarvel.android.ads.ab.a(305));
                    }
                }

                public boolean shouldOverrideUrlLoading(WebView webview, String s1)
                {
                    Logging.log((new StringBuilder()).append("Load Ad : shouldOverrideUrlLoading URL - ").append(s1).toString());
                    if (s1 == null)
                    {
                        return false;
                    }
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
                    if (admarvelinternalwebview != null)
                    {
                        break MISSING_BLOCK_LABEL_151;
                    }
                    Context context;
                    if (!AdMarvelWebView.f(a))
                    {
                        break MISSING_BLOCK_LABEL_151;
                    }
                    context = a.getContext();
                    if (context == null)
                    {
                        break MISSING_BLOCK_LABEL_151;
                    }
                    if (context instanceof Activity)
                    {
                        admarvelinternalwebview = (AdMarvelInternalWebView)((ViewGroup)((Activity)context).getWindow().findViewById(0x1020002)).findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
                    }
                    if (admarvelinternalwebview == null)
                    {
                        break MISSING_BLOCK_LABEL_166;
                    }
                    if (admarvelinternalwebview.isSignalShutdown())
                    {
                        return false;
                    }
                    if (com.admarvel.android.ads.ab.d(s1))
                    {
                        return true;
                    }
                    if (!AdMarvelWebView.g(a)) goto _L2; else goto _L1
_L1:
                    if (!com.admarvel.android.ads.ab.b(a.getContext(), s1))
                    {
                        break MISSING_BLOCK_LABEL_232;
                    }
                    (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                    return true;
                    if (s1 == null)
                    {
                        break MISSING_BLOCK_LABEL_337;
                    }
                    if (com.admarvel.android.ads.ab.a(s1, "admarvelsdk") == ab.f.c)
                    {
                        break MISSING_BLOCK_LABEL_337;
                    }
                    if (AdMarvelWebView.a(a.e) != null)
                    {
                        AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), com.admarvel.android.ads.ab.a(s1, "admarvelsdk", "", com.admarvel.android.ads.ab.a(s1, "admarvelsdk"), a.getContext()));
                    }
                    (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                    return true;
                    if (s1 == null)
                    {
                        break MISSING_BLOCK_LABEL_442;
                    }
                    if (com.admarvel.android.ads.ab.a(s1, "admarvelinternal") == ab.f.c)
                    {
                        break MISSING_BLOCK_LABEL_442;
                    }
                    if (AdMarvelWebView.a(a.e) != null)
                    {
                        AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), com.admarvel.android.ads.ab.a(s1, "admarvelinternal", "", com.admarvel.android.ads.ab.a(s1, "admarvelinternal"), a.getContext()));
                    }
                    (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                    return true;
                    if (s1 == null)
                    {
                        break MISSING_BLOCK_LABEL_573;
                    }
                    if (com.admarvel.android.ads.ab.a(s1, "admarvelvideo") == ab.f.c)
                    {
                        break MISSING_BLOCK_LABEL_573;
                    }
                    String s2 = com.admarvel.android.ads.ab.a(s1, "admarvelvideo", "http://", com.admarvel.android.ads.ab.a(s1, "admarvelvideo"), a.getContext());
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.addFlags(0x10000000);
                    intent2.setDataAndType(Uri.parse(s2), "video/*");
                    if (com.admarvel.android.ads.ab.a(a.getContext(), intent2))
                    {
                        a.getContext().startActivity(intent2);
                    }
                    (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                    return true;
                    if (s1 == null)
                    {
                        break MISSING_BLOCK_LABEL_692;
                    }
                    if (com.admarvel.android.ads.ab.a(s1, "admarvelexternal") == ab.f.c)
                    {
                        break MISSING_BLOCK_LABEL_692;
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(com.admarvel.android.ads.ab.a(s1, "admarvelexternal", "", com.admarvel.android.ads.ab.a(s1, "admarvelexternal"), a.getContext())));
                    intent.addFlags(0x10000000);
                    if (com.admarvel.android.ads.ab.a(a.getContext(), intent))
                    {
                        a.getContext().startActivity(intent);
                    }
                    (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                    return true;
                    if (s1 == null) goto _L2; else goto _L3
_L3:
                    if (com.admarvel.android.ads.ab.a(s1, "admarvelcustomvideo") == ab.f.c) goto _L2; else goto _L4
_L4:
                    Intent intent1;
                    intent1 = new Intent(a.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
                    intent1.addFlags(0x10000000);
                    intent1.putExtra("url", s1);
                    AdMarvelWebView.c(a).removeNonStringEntriesTargetParam();
                    ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                    ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                    objectoutputstream.writeObject(AdMarvelWebView.c(a));
                    objectoutputstream.close();
                    intent1.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
_L5:
                    intent1.putExtra("isCustomUrl", true);
                    intent1.putExtra("xml", AdMarvelWebView.h(a));
                    intent1.putExtra("source", AdMarvelWebView.i(a));
                    intent1.putExtra("GUID", a.e);
                    a.getContext().startActivity(intent1);
                    (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                    return true;
                    IOException ioexception;
                    ioexception;
                    ioexception.printStackTrace();
                      goto _L5
                    Exception exception;
                    exception;
                    Logging.log((new StringBuilder()).append(exception.getMessage()).append("exception in shouldOverrideUrlLoading").toString());
_L7:
                    return true;
_L2:
                    if (!AdMarvelWebView.j(a).get() && !admarvelinternalwebview.b()) goto _L7; else goto _L6
_L6:
                    AdMarvelWebView.a(a, s1);
                      goto _L7
                }

                c()
                {
                    a = AdMarvelWebView.this;
                    super();
                }
            }


            private class InnerJS
            {

                final AdMarvelAd adMarvelAd;
                final WeakReference adMarvelInternalWebViewReference;
                private final WeakReference adMarvelWebViewReference;
                private final WeakReference contextReference;
                private final Handler handler;
                private String lockedOrientation;

                public void cacheitem(String s1, String s2, int i1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown()))
                        {
                            if (com.admarvel.android.ads.ac.a() >= 11)
                            {
                                handler.post(new a(admarvelwebview.getContext(), admarvelinternalwebview, s1, s2, i1, AdMarvelWebView.O(admarvelwebview)));
                                return;
                            } else
                            {
                                k k1 = new k(admarvelwebview.getContext(), admarvelinternalwebview, AdMarvelWebView.O(admarvelwebview));
                                Object aobj[] = new Object[3];
                                aobj[0] = s1;
                                aobj[1] = s2;
                                aobj[2] = Integer.valueOf(i1);
                                k1.execute(aobj);
                                return;
                            }
                        }
                    }
                }

                public void checkForApplicationSupportedOrientations(final String mCallback)
                {
                    final AdMarvelInternalWebView view;
                    view = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    break MISSING_BLOCK_LABEL_11;
                    if (view != null && (view == null || !view.isSignalShutdown()))
                    {
                        Context context = view.getContext();
                        if (context != null && (context instanceof Activity))
                        {
                            String as[] = com.admarvel.android.ads.ab.a((Activity)context).split(",");
                            HashMap hashmap = new HashMap();
                            hashmap.put("portrait", "NO");
                            hashmap.put("landscapeLeft", "NO");
                            hashmap.put("landscapeRight", "NO");
                            hashmap.put("portraitUpsideDown", "NO");
                            int i1 = as.length;
                            int j1 = 0;
                            while (j1 < i1) 
                            {
                                String s1 = as[j1];
                                if (s1.equals("0"))
                                {
                                    hashmap.put("portrait", "YES");
                                } else
                                if (s1.equals("90"))
                                {
                                    hashmap.put("landscapeLeft", "YES");
                                } else
                                if (s1.equals("-90"))
                                {
                                    hashmap.put("landscapeRight", "YES");
                                } else
                                if (s1.equals("180"))
                                {
                                    hashmap.put("portraitUpsideDown", "YES");
                                }
                                j1++;
                            }
                            final String supportedScreenOrientationParam = (new StringBuilder()).append("\"{portrait:").append((String)hashmap.get("portrait")).append(",").append("landscapeLeft:").append((String)hashmap.get("landscapeLeft")).append(",").append("landscapeRight:").append((String)hashmap.get("landscapeRight")).append(",").append("portraitUpsideDown:").append((String)hashmap.get("portraitUpsideDown")).append("}\"").toString();
                            if (view != null)
                            {
                                handler.post(new Runnable() {

                                    final InnerJS this$0;
                                    final String val$mCallback;
                                    final String val$supportedScreenOrientationParam;
                                    final AdMarvelInternalWebView val$view;

                                    public void run()
                                    {
                                        view.loadUrl((new StringBuilder()).append("javascript:").append(mCallback).append("(").append(supportedScreenOrientationParam).append(")").toString());
                                    }

                        
                        {
                            this$0 = InnerJS.this;
                            view = admarvelinternalwebview;
                            mCallback = s1;
                            supportedScreenOrientationParam = s2;
                            super();
                        }
                                });
                                return;
                            }
                        }
                    }
                    return;
                }

                public void checkFrameValues(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            if (com.admarvel.android.ads.ac.a() >= 9)
                            {
                                t t1 = admarvelwebview. new t();
                                handler.post(t1);
                            }
                            handler.post(new f(s1, admarvelinternalwebview, admarvelwebview));
                            return;
                        }
                    }
                }

                public void checkNetworkAvailable(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if ((AdMarvelWebView)adMarvelWebViewReference.get() != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            handler.post(new g(admarvelinternalwebview, s1));
                            return;
                        }
                    }
                }

                public void cleanup()
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.cleanup()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null && (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get() != null)
                        {
                            h h1 = admarvelwebview. new h();
                            handler.post(h1);
                            return;
                        }
                    }
                }

                public void close()
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            handler.post(admarvelwebview. new j());
                            return;
                        }
                    }
                }

                public void createcalendarevent(final String date, final String title, final String description)
                {
                    final AdMarvelWebView adMarvelWebView = (AdMarvelWebView)adMarvelWebViewReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    Context context;
                    if (adMarvelWebView != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown() && com.admarvel.android.ads.ab.d(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") && com.admarvel.android.ads.ab.d(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR") && ((context = adMarvelWebView.getContext()) instanceof Activity))
                        {
                            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder((Activity)context);
                            builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new android.content.DialogInterface.OnClickListener() {

                                final InnerJS this$0;
                                final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                final AdMarvelWebView val$adMarvelWebView;
                                final String val$date;
                                final String val$description;
                                final String val$title;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    if (com.admarvel.android.ads.ac.a() >= 14)
                                    {
                                        handler.post(new l(adMarvelInternalWebView, adMarvelWebView, date, title, description));
                                        return;
                                    } else
                                    {
                                        handler.post(new k(adMarvelInternalWebView, adMarvelWebView, date, title, description));
                                        return;
                                    }
                                }

                        
                        {
                            this$0 = InnerJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            adMarvelWebView = admarvelwebview;
                            date = s1;
                            title = s2;
                            description = s3;
                            super();
                        }

                                private class l
                                    implements Runnable
                                {

                                    SimpleDateFormat a;
                                    Long b;
                                    Long c;
                                    String d;
                                    String e;
                                    String f;
                                    String g;
                                    String h;
                                    String i;
                                    String j;
                                    String k;
                                    int l;
                                    int m;
                                    int n;
                                    private final WeakReference o;
                                    private final WeakReference p;

                                    public void run()
                                    {
                                        AdMarvelWebView admarvelwebview;
                                        AdMarvelInternalWebView admarvelinternalwebview;
                                        admarvelwebview = (AdMarvelWebView)o.get();
                                        admarvelinternalwebview = (AdMarvelInternalWebView)p.get();
                                        if (admarvelwebview != null && admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
                                        return;
_L2:
                                        ContentResolver contentresolver = admarvelwebview.getContext().getContentResolver();
                                        Cursor cursor1 = contentresolver.query(android.provider.CalendarContract.Calendars.CONTENT_URI, new String[] {
                                            "_id", "calendar_displayName"
                                        }, null, null, null);
                                        Cursor cursor = cursor1;
                                        if (cursor == null) goto _L4; else goto _L3
_L3:
                                        if (!cursor.moveToFirst()) goto _L4; else goto _L5
_L5:
                                        String as[];
                                        int ai1[];
                                        as = new String[cursor.getCount()];
                                        ai1 = new int[cursor.getCount()];
                                        int i1 = 0;
_L7:
                                        if (i1 >= as.length)
                                        {
                                            break; /* Loop/switch isn't completed */
                                        }
                                        ai1[i1] = cursor.getInt(0);
                                        as[i1] = cursor.getString(1);
                                        cursor.moveToNext();
                                        i1++;
                                        if (true) goto _L7; else goto _L6
_L6:
                                        ContentValues contentvalues;
                                        contentvalues = new ContentValues();
                                        contentvalues.put("calendar_id", Integer.valueOf(ai1[0]));
                                        if (d != null)
                                        {
                                            contentvalues.put("title", d);
                                        }
                                        if (e != null)
                                        {
                                            contentvalues.put("description", e);
                                        }
                                        if (f != null)
                                        {
                                            contentvalues.put("eventLocation", f);
                                        }
                                        if (b != null)
                                        {
                                            contentvalues.put("dtstart", b);
                                        }
                                        if (c != null)
                                        {
                                            contentvalues.put("dtend", c);
                                        }
                                        if (g != null && (g.toLowerCase().equals("true") || g.toLowerCase().equals("yes")))
                                        {
                                            contentvalues.put("allDay", Integer.valueOf(1));
                                        }
                                        if (l <= 0)
                                        {
                                            contentvalues.put("hasAlarm", Integer.valueOf(1));
                                        }
                                        if (h == null || h.length() <= 0) goto _L9; else goto _L8
_L8:
                                        contentvalues.put("eventTimezone", h);
_L13:
                                        Uri uri;
                                        if (i != null && i.length() > 0)
                                        {
                                            contentvalues.put("rrule", i);
                                        }
                                        if (j != null && j.length() > 0)
                                        {
                                            contentvalues.put("exdate", j);
                                        }
                                        contentvalues.put("eventStatus", Integer.valueOf(m));
                                        contentvalues.put("availability", Integer.valueOf(n));
                                        uri = contentresolver.insert(android.provider.CalendarContract.Events.CONTENT_URI, contentvalues);
                                        if (uri == null) goto _L11; else goto _L10
_L10:
                                        if (l <= 0)
                                        {
                                            ContentValues contentvalues1 = new ContentValues();
                                            contentvalues1.put("event_id", Long.valueOf(Long.parseLong(uri.getLastPathSegment())));
                                            contentvalues1.put("method", Integer.valueOf(1));
                                            contentvalues1.put("minutes", Integer.valueOf(Math.abs(l)));
                                            contentresolver.insert(android.provider.CalendarContract.Reminders.CONTENT_URI, contentvalues1);
                                        }
                                        if (k != null && k.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"YES\")").toString());
                                        }
_L16:
                                        if (cursor == null) goto _L1; else goto _L12
_L12:
                                        cursor.close();
                                        return;
_L9:
                                        contentvalues.put("eventTimezone", TimeZone.getDefault().getID());
                                          goto _L13
                                        Exception exception;
                                        exception;
_L19:
                                        exception.printStackTrace();
                                        if (k != null && k.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
                                        }
                                        if (cursor == null) goto _L1; else goto _L14
_L14:
                                        cursor.close();
                                        return;
_L11:
                                        if (k == null || k.length() <= 0) goto _L16; else goto _L15
_L15:
                                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
                                          goto _L16
                                        Exception exception1;
                                        exception1;
_L18:
                                        if (cursor != null)
                                        {
                                            cursor.close();
                                        }
                                        throw exception1;
_L4:
                                        if (k == null || k.length() <= 0) goto _L16; else goto _L17
_L17:
                                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
                                          goto _L16
                                        exception1;
                                        cursor = null;
                                          goto _L18
                                        exception;
                                        cursor = null;
                                          goto _L19
                                    }

                                    public l(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s1, String s2, String s3)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        l = 1;
                                        m = 0;
                                        n = 0;
                                        o = new WeakReference(admarvelwebview);
                                        p = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_110;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                        d = s2;
                                        e = s3;
                                        return;
                                        Exception exception;
                                        exception;
                                        exception.printStackTrace();
                                        return;
                                    }

                                    public l(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        l = 1;
                                        m = 0;
                                        n = 0;
                                        o = new WeakReference(admarvelwebview);
                                        p = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_88;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        if (s6 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_151;
                                        }
                                        c = Long.valueOf(a.parse(s6).getTime());
_L1:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 <= 0)
                                        {
                                            try
                                            {
                                                l = i1 / 60;
                                                return;
                                            }
                                            catch (Exception exception)
                                            {
                                                exception.printStackTrace();
                                            }
                                        }
                                        break MISSING_BLOCK_LABEL_183;
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L1
                                    }

                                    public l(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1, String s7, String s8, String s9, String s10, int j1, 
                                            int k1, String s11)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        l = 1;
                                        m = 0;
                                        n = 0;
                                        o = new WeakReference(admarvelwebview);
                                        p = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_88;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        if (s6 == null) goto _L2; else goto _L1
_L1:
                                        c = Long.valueOf(a.parse(s6).getTime());
_L11:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 > 0)
                                        {
                                            break MISSING_BLOCK_LABEL_150;
                                        }
                                        l = i1 / 60;
                                        if (s7 == null) goto _L4; else goto _L3
_L3:
                                        int l1 = s7.length();
                                        if (l1 <= 0) goto _L4; else goto _L5
_L5:
                                        String as[] = s7.split(":");
                                        if (as.length != 2) goto _L7; else goto _L6
_L6:
                                        if (!as[0].startsWith("+")) goto _L9; else goto _L8
_L8:
                                        int j2 = 60 * Integer.parseInt(as[0].substring(1)) + Integer.parseInt(as[1]);
_L13:
                                        String as1[] = TimeZone.getAvailableIDs(1000 * (j2 * 60));
                                        if (as1 == null) goto _L4; else goto _L10
_L10:
                                        if (as1.length > 0)
                                        {
                                            h = as1[0];
                                        }
                                          goto _L4
_L2:
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L11
_L4:
                                        try
                                        {
                                            i = s9;
                                            j = s10;
                                            k = s11;
                                            m = j1;
                                            n = k1;
                                            return;
                                        }
                                        catch (Exception exception)
                                        {
                                            exception.printStackTrace();
                                        }
                                        return;
_L9:
                                        boolean flag1 = as[0].startsWith("-");
                                        j2 = 0;
                                        if (!flag1) goto _L13; else goto _L12
_L12:
                                        j2 = -1 * (60 * Integer.parseInt(as[0].substring(1)) + Integer.parseInt(as[1]));
                                          goto _L13
_L7:
                                        int i2 = as.length;
                                        j2 = 0;
                                        if (i2 != 1) goto _L13; else goto _L14
_L14:
label0:
                                        {
                                            if (!as[0].startsWith("+"))
                                            {
                                                break label0;
                                            }
                                            j2 = 60 * Integer.parseInt(as[0].substring(1));
                                        }
                                          goto _L13
                                        boolean flag = as[0].startsWith("-");
                                        j2 = 0;
                                        if (!flag) goto _L13; else goto _L15
_L15:
                                        int k2 = Integer.parseInt(as[0].substring(1));
                                        j2 = -1 * (k2 * 60);
                                          goto _L13
                                        Exception exception1;
                                        exception1;
                                        exception1.printStackTrace();
                                          goto _L4
                                    }
                                }


                                private class k
                                    implements Runnable
                                {

                                    SimpleDateFormat a;
                                    Long b;
                                    Long c;
                                    String d;
                                    String e;
                                    String f;
                                    String g;
                                    String h;
                                    String i;
                                    int j;
                                    private final WeakReference k;
                                    private final WeakReference l;

                                    String a()
                                    {
                                        if (com.admarvel.android.ads.ac.a() >= 8)
                                        {
                                            return "content://com.android.calendar/";
                                        } else
                                        {
                                            return "content://calendar/";
                                        }
                                    }

                                    public void run()
                                    {
                                        AdMarvelWebView admarvelwebview;
                                        AdMarvelInternalWebView admarvelinternalwebview;
                                        admarvelwebview = (AdMarvelWebView)k.get();
                                        admarvelinternalwebview = (AdMarvelInternalWebView)l.get();
                                        if (admarvelwebview != null && admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
                                        return;
_L2:
                                        ContentResolver contentresolver = admarvelwebview.getContext().getContentResolver();
                                        Cursor cursor1 = contentresolver.query(Uri.parse((new StringBuilder()).append(a()).append("calendars").toString()), new String[] {
                                            "_id", "displayname"
                                        }, null, null, null);
                                        Cursor cursor = cursor1;
                                        if (cursor == null) goto _L4; else goto _L3
_L3:
                                        if (!cursor.moveToFirst()) goto _L4; else goto _L5
_L5:
                                        String as[];
                                        int ai1[];
                                        as = new String[cursor.getCount()];
                                        ai1 = new int[cursor.getCount()];
                                        int i1 = 0;
_L7:
                                        if (i1 >= as.length)
                                        {
                                            break; /* Loop/switch isn't completed */
                                        }
                                        ai1[i1] = cursor.getInt(0);
                                        as[i1] = cursor.getString(1);
                                        cursor.moveToNext();
                                        i1++;
                                        if (true) goto _L7; else goto _L6
_L6:
                                        Uri uri1;
                                        Uri uri2;
                                        ContentValues contentvalues = new ContentValues();
                                        contentvalues.put("calendar_id", Integer.valueOf(ai1[0]));
                                        if (d != null)
                                        {
                                            contentvalues.put("title", d);
                                        }
                                        if (e != null)
                                        {
                                            contentvalues.put("description", e);
                                        }
                                        if (f != null)
                                        {
                                            contentvalues.put("eventLocation", f);
                                        }
                                        if (b != null)
                                        {
                                            contentvalues.put("dtstart", b);
                                        }
                                        if (c != null)
                                        {
                                            contentvalues.put("dtend", c);
                                        }
                                        if (g != null && (g.toLowerCase().equals("true") || g.toLowerCase().equals("yes")))
                                        {
                                            contentvalues.put("allDay", Integer.valueOf(1));
                                        }
                                        if (j <= 0)
                                        {
                                            contentvalues.put("hasAlarm", Integer.valueOf(1));
                                        }
                                        if (h != null && h.length() > 0)
                                        {
                                            contentvalues.put("eventTimezone", h);
                                        }
                                        Uri uri = Uri.parse((new StringBuilder()).append(a()).append("events").toString());
                                        uri1 = Uri.parse((new StringBuilder()).append(a()).append("reminders").toString());
                                        uri2 = contentresolver.insert(uri, contentvalues);
                                        if (uri2 == null) goto _L9; else goto _L8
_L8:
                                        if (j <= 0)
                                        {
                                            ContentValues contentvalues1 = new ContentValues();
                                            contentvalues1.put("event_id", Long.valueOf(Long.parseLong(uri2.getLastPathSegment())));
                                            contentvalues1.put("method", Integer.valueOf(1));
                                            contentvalues1.put("minutes", Integer.valueOf(Math.abs(j)));
                                            contentresolver.insert(uri1, contentvalues1);
                                        }
                                        if (i != null && i.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"YES\")").toString());
                                        }
_L4:
                                        if (cursor == null) goto _L1; else goto _L10
_L10:
                                        cursor.close();
                                        return;
_L9:
                                        if (i == null || i.length() <= 0) goto _L4; else goto _L11
_L11:
                                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"NO\")").toString());
                                          goto _L4
                                        Exception exception;
                                        exception;
_L15:
                                        if (i != null && i.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"NO\")").toString());
                                        }
                                        exception.printStackTrace();
                                        if (cursor == null) goto _L1; else goto _L12
_L12:
                                        cursor.close();
                                        return;
                                        Exception exception1;
                                        exception1;
                                        cursor = null;
_L14:
                                        if (cursor != null)
                                        {
                                            cursor.close();
                                        }
                                        throw exception1;
                                        exception1;
                                        if (true) goto _L14; else goto _L13
_L13:
                                        exception;
                                        cursor = null;
                                          goto _L15
                                    }

                                    public k(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s1, String s2, String s3)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        j = 1;
                                        k = new WeakReference(admarvelwebview);
                                        l = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_100;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                        d = s2;
                                        e = s3;
                                        return;
                                        Exception exception;
                                        exception;
                                        Logging.log(Log.getStackTraceString(exception));
                                        return;
                                    }

                                    public k(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        j = 1;
                                        k = new WeakReference(admarvelwebview);
                                        l = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_78;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        if (s6 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_141;
                                        }
                                        c = Long.valueOf(a.parse(s6).getTime());
_L1:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 <= 0)
                                        {
                                            try
                                            {
                                                j = i1 / 60;
                                                return;
                                            }
                                            catch (Exception exception)
                                            {
                                                exception.printStackTrace();
                                            }
                                        }
                                        break MISSING_BLOCK_LABEL_173;
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L1
                                    }

                                    public k(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1, String s7, String s8, String s9, String s10, int j1, 
                                            int k1, String s11)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        j = 1;
                                        k = new WeakReference(admarvelwebview);
                                        l = new WeakReference(admarvelinternalwebview);
                                        if (s1 != null)
                                        {
                                            try
                                            {
                                                b = Long.valueOf(a.parse(s1).getTime());
                                            }
                                            catch (Exception exception)
                                            {
                                                exception.printStackTrace();
                                                return;
                                            }
                                        }
                                        if (s6 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_166;
                                        }
                                        c = Long.valueOf(a.parse(s6).getTime());
_L1:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 > 0)
                                        {
                                            break MISSING_BLOCK_LABEL_140;
                                        }
                                        j = i1 / 60;
                                        if (s7 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_159;
                                        }
                                        if (s7.length() > 0)
                                        {
                                            h = s7;
                                        }
                                        i = s11;
                                        return;
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L1
                                    }
                                }

                            }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                final InnerJS this$0;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    dialoginterface.cancel();
                                }

                        
                        {
                            this$0 = InnerJS.this;
                            super();
                        }
                            });
                            builder.create().show();
                            return;
                        }
                    }
                }

                public void createcalendarevent(final String date, final String title, final String description, final String location, final String allday, final String endDate, final int reminderoffset)
                {
                    final AdMarvelWebView adMarvelWebView = (AdMarvelWebView)adMarvelWebViewReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    Context context;
                    if (adMarvelWebView != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown() && com.admarvel.android.ads.ab.d(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") && com.admarvel.android.ads.ab.d(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR") && ((context = adMarvelWebView.getContext()) instanceof Activity))
                        {
                            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder((Activity)context);
                            builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new android.content.DialogInterface.OnClickListener() {

                                final InnerJS this$0;
                                final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                final AdMarvelWebView val$adMarvelWebView;
                                final String val$allday;
                                final String val$date;
                                final String val$description;
                                final String val$endDate;
                                final String val$location;
                                final int val$reminderoffset;
                                final String val$title;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    if (com.admarvel.android.ads.ac.a() >= 14)
                                    {
                                        handler.post(new l(adMarvelInternalWebView, adMarvelWebView, date, title, description, location, allday, endDate, reminderoffset));
                                        return;
                                    } else
                                    {
                                        handler.post(new k(adMarvelInternalWebView, adMarvelWebView, date, title, description, location, allday, endDate, reminderoffset));
                                        return;
                                    }
                                }

                        
                        {
                            this$0 = InnerJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            adMarvelWebView = admarvelwebview;
                            date = s1;
                            title = s2;
                            description = s3;
                            location = s4;
                            allday = s5;
                            endDate = s6;
                            reminderoffset = i1;
                            super();
                        }
                            }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                final InnerJS this$0;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    dialoginterface.cancel();
                                }

                        
                        {
                            this$0 = InnerJS.this;
                            super();
                        }
                            });
                            builder.create().show();
                            return;
                        }
                    }
                }

                public void createcalendarevent(final String date, final String title, final String description, final String location, final String allday, final String endDate, final int reminderoffset, 
                        final String timezone, final String url, final String recurrenceRules, final String exceptionDateString, final int status, final int availability, final String callback)
                {
                    final AdMarvelWebView adMarvelWebView = (AdMarvelWebView)adMarvelWebViewReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    if (adMarvelWebView != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown())
                        {
                            if (!com.admarvel.android.ads.ab.d(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") || !com.admarvel.android.ads.ab.d(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR"))
                            {
                                if (callback != null)
                                {
                                    handler.post(new Runnable() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void run()
                                        {
                                            adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(NO)").toString());
                                        }

                        
                        {
                            this$0 = InnerJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            callback = s1;
                            super();
                        }
                                    });
                                    return;
                                }
                            } else
                            {
                                Context context = adMarvelWebView.getContext();
                                if (context instanceof Activity)
                                {
                                    Activity activity = (Activity)context;
                                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
                                    builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new android.content.DialogInterface.OnClickListener() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final AdMarvelWebView val$adMarvelWebView;
                                        final String val$allday;
                                        final int val$availability;
                                        final String val$callback;
                                        final String val$date;
                                        final String val$description;
                                        final String val$endDate;
                                        final String val$exceptionDateString;
                                        final String val$location;
                                        final String val$recurrenceRules;
                                        final int val$reminderoffset;
                                        final int val$status;
                                        final String val$timezone;
                                        final String val$title;
                                        final String val$url;

                                        public void onClick(DialogInterface dialoginterface, int i1)
                                        {
                                            if (com.admarvel.android.ads.ac.a() >= 14)
                                            {
                                                handler.post(new l(adMarvelInternalWebView, adMarvelWebView, date, title, description, location, allday, endDate, reminderoffset, timezone, url, recurrenceRules, exceptionDateString, status, availability, callback));
                                                return;
                                            } else
                                            {
                                                handler.post(new k(adMarvelInternalWebView, adMarvelWebView, date, title, description, location, allday, endDate, reminderoffset, timezone, url, recurrenceRules, exceptionDateString, status, availability, callback));
                                                return;
                                            }
                                        }

                        
                        {
                            this$0 = InnerJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            adMarvelWebView = admarvelwebview;
                            date = s1;
                            title = s2;
                            description = s3;
                            location = s4;
                            allday = s5;
                            endDate = s6;
                            reminderoffset = i1;
                            timezone = s7;
                            url = s8;
                            recurrenceRules = s9;
                            exceptionDateString = s10;
                            status = j1;
                            availability = k1;
                            callback = s11;
                            super();
                        }
                                    }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void onClick(DialogInterface dialoginterface, int i1)
                                        {
                                            if (callback != null)
                                            {
                                                handler.post(new Runnable() {

                                                    final _cls7 this$1;

                                                    public void run()
                                                    {
                                                        adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                                                    }

                        
                        {
                            this$1 = _cls7.this;
                            super();
                        }
                                                });
                                            }
                                            dialoginterface.cancel();
                                        }

                        
                        {
                            this$0 = InnerJS.this;
                            callback = s1;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            super();
                        }
                                    });
                                    builder.create().show();
                                    return;
                                } else
                                {
                                    handler.post(new Runnable() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void run()
                                        {
                                            adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                                        }

                        
                        {
                            this$0 = InnerJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            callback = s1;
                            super();
                        }
                                    });
                                    return;
                                }
                            }
                        }
                    }
                }

                public void delaydisplay()
                {
                    if (adMarvelInternalWebViewReference == null) goto _L2; else goto _L1
_L1:
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown()) goto _L2; else goto _L3
_L3:
                    AdMarvelWebView admarvelwebview;
                    return;
_L2:
                    if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) != null)
                    {
                        AdMarvelWebView.m(admarvelwebview).set(true);
                        return;
                    }
                    if (true) goto _L3; else goto _L4
_L4:
                }

                public void detectlocation(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        l l1 = com.admarvel.android.ads.l.a();
                        if (l1 != null)
                        {
                            l1.a(admarvelinternalwebview, s1);
                        }
                    }
                }

                public void detectsizechange(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        admarvelinternalwebview.sizeChangeCallback = s1;
                    }
                }

                public void detectvisibility(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        admarvelinternalwebview.visibilityCallback = s1;
                    }
                }

                public void disableRotationForExpand()
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelWebView.k(admarvelwebview, true);
                            lockedOrientation = null;
                            if (AdMarvelWebView.f(admarvelwebview) && AdMarvelWebView.Q(admarvelwebview))
                            {
                                disablerotations(lockedOrientation);
                                return;
                            }
                        }
                    }
                }

                public void disableRotationForExpand(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelWebView.k(admarvelwebview, true);
                            lockedOrientation = s1;
                            if (AdMarvelWebView.f(admarvelwebview) && AdMarvelWebView.Q(admarvelwebview))
                            {
                                disablerotations(s1);
                                return;
                            }
                        }
                    }
                }

                public void disableautodetect()
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelWebView.j(admarvelwebview).set(false);
                            return;
                        }
                    }
                }

                public void disablerotations()
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            Context context = admarvelwebview.getContext();
                            Activity activity;
                            if (context != null && (context instanceof Activity))
                            {
                                activity = (Activity)context;
                            } else
                            {
                                activity = null;
                            }
                            if (activity != null)
                            {
                                int i1 = admarvelwebview.getResources().getConfiguration().orientation;
                                if (i1 == 1)
                                {
                                    activity.setRequestedOrientation(1);
                                    return;
                                }
                                if (i1 == 2)
                                {
                                    activity.setRequestedOrientation(0);
                                    return;
                                }
                            }
                        }
                    }
                }

                public void disablerotations(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    if (admarvelwebview != null) goto _L2; else goto _L1
_L1:
                    AdMarvelInternalWebView admarvelinternalwebview;
                    return;
_L2:
                    Activity activity;
                    int i1;
                    if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && admarvelinternalwebview.isSignalShutdown())
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    Context context = admarvelwebview.getContext();
                    activity = null;
                    if (context != null)
                    {
                        boolean flag = context instanceof Activity;
                        activity = null;
                        if (flag)
                        {
                            activity = (Activity)context;
                        }
                    }
                    if (activity == null)
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    if (com.admarvel.android.ads.ac.a() < 9)
                    {
                        i1 = admarvelwebview.getResources().getConfiguration().orientation;
                    } else
                    {
                        t t1 = admarvelwebview. new t();
                        handler.post(t1);
                        i1 = 0x80000000;
                        while (i1 == 0x80000000) 
                        {
                            i1 = t.a(t1);
                        }
                    }
                    if (s1 == null)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    if (!AdMarvelWebView.w(admarvelwebview))
                    {
                        if (com.admarvel.android.ads.ac.a() < 9)
                        {
                            if (s1.equalsIgnoreCase("Portrait") && i1 == 1)
                            {
                                activity.setRequestedOrientation(1);
                                return;
                            }
                            if (s1.equalsIgnoreCase("LandscapeLeft") && i1 == 2)
                            {
                                activity.setRequestedOrientation(0);
                                return;
                            }
                        } else
                        {
                            if (s1.equalsIgnoreCase("Portrait") && i1 == 0)
                            {
                                activity.setRequestedOrientation(1);
                                return;
                            }
                            if (s1.equalsIgnoreCase("LandscapeLeft") && i1 == 1)
                            {
                                activity.setRequestedOrientation(0);
                                return;
                            }
                        }
                    } else
                    if (com.admarvel.android.ads.ac.a() < 9)
                    {
                        if (s1.equalsIgnoreCase("Portrait"))
                        {
                            activity.setRequestedOrientation(1);
                            return;
                        }
                        if (s1.equalsIgnoreCase("LandscapeLeft"))
                        {
                            activity.setRequestedOrientation(0);
                            return;
                        }
                    } else
                    {
                        handler.post(new ah(activity, s1));
                        return;
                    }
                    if (true) goto _L1; else goto _L3
_L3:
                    if (com.admarvel.android.ads.ac.a() < 9)
                    {
                        if (i1 == 1)
                        {
                            activity.setRequestedOrientation(1);
                            return;
                        }
                        if (i1 == 2)
                        {
                            activity.setRequestedOrientation(0);
                            return;
                        }
                    } else
                    {
                        if (i1 == 0)
                        {
                            handler.post(new ah(activity, "Portrait"));
                            return;
                        }
                        if (i1 == 1)
                        {
                            handler.post(new ah(activity, "LandscapeLeft"));
                            return;
                        } else
                        {
                            handler.post(new ah(activity, "none"));
                            return;
                        }
                    }
                    if (true) goto _L1; else goto _L4
_L4:
                }

                public void enableautodetect()
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelWebView.j(admarvelwebview).set(true);
                            return;
                        }
                    }
                }

                public void enablerotations()
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            Context context = admarvelwebview.getContext();
                            Activity activity;
                            if (context != null && (context instanceof Activity))
                            {
                                activity = (Activity)context;
                            } else
                            {
                                activity = null;
                            }
                            if (activity != null)
                            {
                                activity.setRequestedOrientation(AdMarvelWebView.R(admarvelwebview));
                                AdMarvelWebView.k(admarvelwebview, false);
                                return;
                            }
                        }
                    }
                }

                public void expandto(int i1, int j1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    AdMarvelWebView admarvelwebview;
                    Context context;
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown())
                    {
                        if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) != null && ((context = admarvelinternalwebview.getContext()) != null && (context instanceof Activity)))
                        {
                            Activity activity = (Activity)context;
                            if (AdMarvelWebView.f(admarvelwebview))
                            {
                                handler.post(admarvelwebview. new n(activity, i1, j1));
                                return;
                            } else
                            {
                                handler.post(admarvelwebview. new o(activity, i1, j1, adMarvelAd));
                                return;
                            }
                        }
                    }
                }

                public void expandto(int i1, int j1, int k1, int l1, String s1, String s2)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    AdMarvelWebView admarvelwebview;
                    Context context;
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown())
                    {
                        if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) != null && ((context = admarvelinternalwebview.getContext()) != null && (context instanceof Activity)))
                        {
                            Activity activity = (Activity)context;
                            if (s2 != null && s2.length() > 0)
                            {
                                expandtofullscreen(s1, s2);
                                return;
                            }
                            if (s1 != null)
                            {
                                admarvelwebview.c = s1;
                            }
                            if (AdMarvelWebView.f(admarvelwebview))
                            {
                                handler.post(admarvelwebview. new n(activity, i1, j1, k1, l1));
                                return;
                            } else
                            {
                                handler.post(admarvelwebview. new o(activity, i1, j1, k1, l1, adMarvelAd));
                                return;
                            }
                        }
                    }
                }

                public void expandto(int i1, int j1, String s1, String s2)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    AdMarvelWebView admarvelwebview;
                    Context context;
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown())
                    {
                        if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) != null && ((context = admarvelinternalwebview.getContext()) != null && (context instanceof Activity)))
                        {
                            Activity activity = (Activity)context;
                            if (s2 != null && s2.length() > 0)
                            {
                                expandtofullscreen(s1, s2);
                                return;
                            }
                            if (s1 != null)
                            {
                                admarvelwebview.c = s1;
                            }
                            if (AdMarvelWebView.f(admarvelwebview))
                            {
                                handler.post(admarvelwebview. new n(activity, i1, j1));
                                return;
                            } else
                            {
                                handler.post(admarvelwebview. new o(activity, i1, j1, adMarvelAd));
                                return;
                            }
                        }
                    }
                }

                public void expandtofullscreen()
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    AdMarvelWebView admarvelwebview;
                    Context context;
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown())
                    {
                        if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) != null && ((context = admarvelinternalwebview.getContext()) != null && (context instanceof Activity)))
                        {
                            Activity activity = (Activity)context;
                            AdMarvelWebView.f(admarvelwebview, true);
                            if (AdMarvelWebView.w(admarvelwebview))
                            {
                                disablerotations(lockedOrientation);
                            }
                            if (AdMarvelWebView.f(admarvelwebview))
                            {
                                handler.post(admarvelwebview. new n(activity, 0, 0, -1, -1));
                                return;
                            } else
                            {
                                handler.post(admarvelwebview. new o(activity, 0, 0, -1, -1, adMarvelAd));
                                return;
                            }
                        }
                    }
                }

                public void expandtofullscreen(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    AdMarvelWebView admarvelwebview;
                    Context context;
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown())
                    {
                        if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) != null && ((context = admarvelinternalwebview.getContext()) != null && (context instanceof Activity)))
                        {
                            Activity activity = (Activity)context;
                            AdMarvelWebView.f(admarvelwebview, true);
                            if (s1 != null)
                            {
                                admarvelwebview.c = s1;
                            }
                            if (AdMarvelWebView.w(admarvelwebview))
                            {
                                disablerotations(lockedOrientation);
                            }
                            if (AdMarvelWebView.f(admarvelwebview))
                            {
                                handler.post(admarvelwebview. new n(activity, 0, 0, -1, -1));
                                return;
                            } else
                            {
                                handler.post(admarvelwebview. new o(activity, 0, 0, -1, -1, adMarvelAd));
                                return;
                            }
                        }
                    }
                }

                public void expandtofullscreen(String s1, String s2)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown()) goto _L2; else goto _L1
_L1:
                    AdMarvelWebView admarvelwebview;
                    return;
_L2:
                    if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) == null) goto _L1; else goto _L3
_L3:
                    Activity activity;
                    Context context = admarvelinternalwebview.getContext();
                    if (context == null || !(context instanceof Activity))
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    activity = (Activity)context;
_L5:
                    if (s1 != null)
                    {
                        admarvelwebview.c = s1;
                    }
                    AdMarvelWebView.f(admarvelwebview, true);
                    if (s2 != null && s2.length() > 0)
                    {
                        admarvelwebview.d = s2;
                        AdMarvelWebView.g(admarvelwebview, true);
                    }
                    int i1;
                    if (AdMarvelWebView.w(admarvelwebview))
                    {
                        if (AdMarvelWebView.P(admarvelwebview))
                        {
                            if (lockedOrientation != null && lockedOrientation.length() > 0)
                            {
                                AdMarvelWebView.b(admarvelwebview, lockedOrientation);
                            } else
                            {
                                AdMarvelWebView.b(admarvelwebview, "Current");
                            }
                        } else
                        {
                            disablerotations(lockedOrientation);
                        }
                    }
                    if (s2 != null && s2.length() > 0)
                    {
                        handler.post(admarvelwebview. new p(s2, adMarvelAd));
                        return;
                    }
                    break MISSING_BLOCK_LABEL_226;
                    if (s2 == null) goto _L1; else goto _L4
_L4:
                    i1 = s2.length();
                    activity = null;
                    if (i1 == 0)
                    {
                        return;
                    }
                      goto _L5
                    if (AdMarvelWebView.f(admarvelwebview))
                    {
                        handler.post(admarvelwebview. new n(activity, 0, 0, -1, -1));
                        return;
                    } else
                    {
                        handler.post(admarvelwebview. new o(activity, 0, 0, -1, -1, adMarvelAd));
                        return;
                    }
                }

                public void fetchWebViewHtmlContent(String s1)
                {
                    if (adMarvelAd != null)
                    {
                        adMarvelAd.setHtmlJson(s1);
                    }
                }

                public void finishVideo()
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.finishVideo()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null && (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get() != null)
                        {
                            q q1 = admarvelwebview. new q();
                            handler.post(q1);
                            return;
                        }
                    }
                }

                public void firePixel(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            handler.post(new r(admarvelinternalwebview, admarvelwebview, s1));
                            return;
                        }
                    }
                }

                public int getAndroidOSVersionAPI()
                {
                    return com.admarvel.android.ads.ac.a();
                }

                public void getLocation(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        handler.post(new s(admarvelinternalwebview, s1));
                    }
                }

                public void initAdMarvel(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            if (com.admarvel.android.ads.ac.a() >= 9)
                            {
                                t t1 = admarvelwebview. new t();
                                handler.post(t1);
                            }
                            handler.post(new u(s1, admarvelinternalwebview, admarvelwebview));
                            return;
                        }
                    }
                }

                public void initVideo(String s1)
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log((new StringBuilder()).append("window.ADMARVEL.setVideoUrl(\"").append(s1).append("\")").toString());
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelWebView.d(admarvelwebview, s1);
                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                            if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown() && AdMarvelWebView.S(admarvelwebview) != null && AdMarvelWebView.S(admarvelwebview).length() > 0)
                            {
                                handler.post(new v(s1, admarvelwebview, admarvelinternalwebview));
                                return;
                            }
                        }
                    }
                }

                public int isinitialload()
                {
                    return 1;
                }

                public int isinstalled(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview == null)
                    {
                        return 0;
                    }
                    if (admarvelinternalwebview != null && admarvelinternalwebview.isSignalShutdown())
                    {
                        return 0;
                    }
                    return !com.admarvel.android.ads.ab.a(admarvelinternalwebview.getContext(), s1) ? 0 : 1;
                }

                public int isvideocached()
                {
                    if (com.admarvel.android.ads.ac.a() < 14)
                    {
                        return 0;
                    }
                    Logging.log("window.ADMARVEL.isvideocached()");
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    if (admarvelwebview == null)
                    {
                        return 0;
                    }
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        return (new w()).a(admarvelwebview);
                    } else
                    {
                        return 0;
                    }
                }

                public void loadVideo()
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.loadVideo()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                            if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown() && AdMarvelWebView.S(admarvelwebview) != null && AdMarvelWebView.S(admarvelwebview).length() > 0)
                            {
                                x x1 = new x(AdMarvelWebView.S(admarvelwebview), admarvelwebview, admarvelinternalwebview);
                                handler.post(x1);
                                return;
                            }
                        }
                    }
                }

                public void notifyInAppBrowserCloseAction(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        admarvelinternalwebview.mInAppBrowserCloseCallback = s1;
                    }
                }

                public void pauseVideo()
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.pauseVideo()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                            if (admarvelinternalwebview != null)
                            {
                                aa aa1 = admarvelwebview. new aa(admarvelinternalwebview);
                                handler.post(aa1);
                                return;
                            }
                        }
                    }
                }

                public void playVideo()
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.playVideo()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                            if (admarvelinternalwebview != null && AdMarvelWebView.S(admarvelwebview) != null && AdMarvelWebView.S(admarvelwebview).length() > 0)
                            {
                                ab ab1 = admarvelwebview. new ab(admarvelinternalwebview);
                                handler.post(ab1);
                                return;
                            }
                        }
                    }
                }

                public void readyfordisplay()
                {
                    if (adMarvelInternalWebViewReference == null) goto _L2; else goto _L1
_L1:
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview == null || !admarvelinternalwebview.isSignalShutdown()) goto _L2; else goto _L3
_L3:
                    AdMarvelWebView admarvelwebview;
                    return;
_L2:
                    if ((admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get()) != null)
                    {
                        if (AdMarvelWebView.l(admarvelwebview).get())
                        {
                            if (AdMarvelWebView.k(admarvelwebview).compareAndSet(true, false) && com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
                            {
                                com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a(admarvelwebview, adMarvelAd);
                                return;
                            }
                        } else
                        {
                            AdMarvelWebView.m(admarvelwebview).set(false);
                            return;
                        }
                    }
                    if (true) goto _L3; else goto _L4
_L4:
                }

                public void redirect(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if (((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown()) && admarvelinternalwebview != null && (admarvelinternalwebview.b() || s1 != null && s1.length() > 0 && (s1.startsWith("admarvelsdk") || s1.startsWith("admarvelinternal"))))
                        {
                            com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview, s1);
                            return;
                        }
                    }
                }

                public void registerEventsForAdMarvelVideo(String s1, String s2)
                {
                    if (com.admarvel.android.ads.ac.a() >= 14 && s1 != null && s1.length() != 0 && s2 != null && s2.length() != 0)
                    {
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            if (s1.equals("loadeddata"))
                            {
                                AdMarvelWebView.e(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("play"))
                            {
                                AdMarvelWebView.f(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("canplay"))
                            {
                                AdMarvelWebView.g(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("timeupdate"))
                            {
                                AdMarvelWebView.h(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("ended"))
                            {
                                AdMarvelWebView.i(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("pause"))
                            {
                                AdMarvelWebView.j(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("resume"))
                            {
                                AdMarvelWebView.k(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("stop"))
                            {
                                AdMarvelWebView.l(admarvelwebview, s2);
                                return;
                            }
                            if (s1.equals("error"))
                            {
                                AdMarvelWebView.m(admarvelwebview, s2);
                                return;
                            }
                        }
                    }
                }

                public void registeraccelerationevent(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    n n1;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && ((n1 = com.admarvel.android.ads.n.a()) != null && n1.a(admarvelwebview.getContext())))
                        {
                            n1.b(s1);
                            n1.a(admarvelwebview.getContext(), admarvelinternalwebview);
                            return;
                        }
                    }
                }

                public void registerheadingevent(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    n n1;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && ((n1 = com.admarvel.android.ads.n.a()) != null && n1.a(admarvelwebview.getContext())))
                        {
                            n1.c(s1);
                            n1.a(admarvelwebview.getContext(), admarvelinternalwebview);
                            return;
                        }
                    }
                }

                public void registernetworkchangeevent(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        com.admarvel.android.ads.e.a(admarvelinternalwebview, s1);
                    }
                }

                public void registershakeevent(String s1, String s2, String s3)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    n n1;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && ((n1 = com.admarvel.android.ads.n.a()) != null && n1.a(admarvelwebview.getContext())))
                        {
                            n1.a(s1);
                            n1.a(s2, s3);
                            n1.a(admarvelwebview.getContext(), admarvelinternalwebview);
                            return;
                        }
                    }
                }

                public void reportAdMarvelAdHistory()
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    Context context;
                    if (admarvelwebview != null)
                    {
                        if ((context = admarvelwebview.getContext()) != null)
                        {
                            AdMarvelUtils.reportAdMarvelAdHistory(context);
                            return;
                        }
                    }
                }

                public void reportAdMarvelAdHistory(int i1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    Context context;
                    if (admarvelwebview != null)
                    {
                        if ((context = admarvelwebview.getContext()) != null)
                        {
                            AdMarvelUtils.reportAdMarvelAdHistory(i1, context);
                            return;
                        }
                    }
                }

                public void resumeVideo()
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.resumeVideo()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                            if (admarvelinternalwebview != null)
                            {
                                ae ae1 = admarvelwebview. new ae(admarvelinternalwebview);
                                handler.post(ae1);
                                return;
                            }
                        }
                    }
                }

                public void sdkclosebutton(String s1, String s2)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelWebView.h(admarvelwebview, false);
                            AdMarvelWebView.i(admarvelwebview, false);
                            AdMarvelWebView.j(admarvelwebview, false);
                            if (s1 != null && s1.equals("true"))
                            {
                                AdMarvelWebView.h(admarvelwebview, true);
                                AdMarvelWebView.j(admarvelwebview, true);
                                return;
                            }
                            if (s1 != null && s1.equals("false") && s2 != null && s2.equals("true"))
                            {
                                AdMarvelWebView.h(admarvelwebview, true);
                                AdMarvelWebView.i(admarvelwebview, true);
                                AdMarvelWebView.j(admarvelwebview, false);
                                return;
                            }
                        }
                    }
                }

                public void sdkclosebutton(String s1, String s2, String s3)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelWebView.h(admarvelwebview, false);
                            AdMarvelWebView.i(admarvelwebview, false);
                            AdMarvelWebView.j(admarvelwebview, false);
                            if (s1 != null && s1.equals("true"))
                            {
                                AdMarvelWebView.h(admarvelwebview, true);
                                AdMarvelWebView.j(admarvelwebview, true);
                            } else
                            if (s1 != null && s1.equals("false") && s2 != null && s2.equals("true"))
                            {
                                AdMarvelWebView.h(admarvelwebview, true);
                                AdMarvelWebView.i(admarvelwebview, true);
                                AdMarvelWebView.j(admarvelwebview, false);
                            }
                            if (s3 != null && s3.length() > 0)
                            {
                                AdMarvelWebView.c(admarvelwebview, s3);
                                return;
                            }
                        }
                    }
                }

                public void seekVideoTo(float f1)
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.seekToVideo()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                            if (admarvelinternalwebview != null && AdMarvelWebView.S(admarvelwebview) != null && AdMarvelWebView.S(admarvelwebview).length() > 0)
                            {
                                af af1 = admarvelwebview. new af(admarvelinternalwebview, f1);
                                handler.post(af1);
                                return;
                            }
                        }
                    }
                }

                public void setInitialAudioState(String s1)
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.setInitialAudioState()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null && s1 != null && s1.trim().length() > 0)
                        {
                            if (s1.equalsIgnoreCase("mute"))
                            {
                                AdMarvelWebView.e(admarvelwebview, true);
                                return;
                            }
                            if (s1.equalsIgnoreCase("unmute"))
                            {
                                AdMarvelWebView.e(admarvelwebview, false);
                                return;
                            }
                        }
                    }
                }

                public void setVideoContainerHeight(int i1)
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log((new StringBuilder()).append("ADMARVEL.setVideoContainerHeight ").append(i1).toString());
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelWebView.f(admarvelwebview, i1);
                            return;
                        }
                    }
                }

                public void setVideoDimensions(int i1, int j1, int k1, int l1)
                {
                    AdMarvelWebView admarvelwebview;
                    Logging.log((new StringBuilder()).append("ADMARVEL.setVideoDimensions ").append(i1).append(" ").append(j1).append(" ").append(k1).append(" ").append(l1).toString());
                    admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    break MISSING_BLOCK_LABEL_66;
                    if (admarvelwebview != null && com.admarvel.android.ads.ac.a() >= 14)
                    {
                        AdMarvelWebView.b(admarvelwebview, k1);
                        AdMarvelWebView.c(admarvelwebview, l1);
                        AdMarvelWebView.d(admarvelwebview, i1);
                        AdMarvelWebView.e(admarvelwebview, j1);
                        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                        if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            ac ac1 = admarvelwebview. new ac(admarvelinternalwebview, i1, j1, k1, l1);
                            handler.post(ac1);
                            return;
                        }
                    }
                    return;
                }

                public void setbackgroundcolor(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            int i1;
                            if ("0".equals(s1))
                            {
                                i1 = 0;
                            } else
                            {
                                long l1 = Long.parseLong(s1.replace("#", ""), 16);
                                if (s1.length() == 7 || s1.length() == 6)
                                {
                                    l1 |= 0xffffffffff000000L;
                                }
                                i1 = (int)l1;
                            }
                            admarvelinternalwebview.setBackgroundColor(i1);
                            admarvelwebview.b = i1;
                            handler.post(admarvelwebview. new ag());
                            return;
                        }
                    }
                }

                public void setsoftwarelayer()
                {
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if ((AdMarvelWebView)adMarvelWebViewReference.get() != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && com.admarvel.android.ads.ac.a() >= 11)
                        {
                            handler.post(new ao(admarvelinternalwebview));
                            return;
                        }
                    }
                }

                public void stopVideo()
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.stopVideo()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                            if (admarvelinternalwebview != null)
                            {
                                ai ai1 = admarvelwebview. new ai(admarvelinternalwebview);
                                handler.post(ai1);
                                return;
                            }
                        }
                    }
                }

                public void storepicture(String s1, final String callback)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    if (admarvelwebview != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown())
                        {
                            final String redirectUrl = com.admarvel.android.ads.ab.a(s1, admarvelwebview.getContext());
                            if (!com.admarvel.android.ads.ab.d(adMarvelInternalWebView.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") || !"mounted".equals(Environment.getExternalStorageState()))
                            {
                                if (callback != null)
                                {
                                    handler.post(new Runnable() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void run()
                                        {
                                            adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(NO)").toString());
                                        }

                        
                        {
                            this$0 = InnerJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            callback = s1;
                            super();
                        }
                                    });
                                    return;
                                }
                            } else
                            {
                                Context context = admarvelwebview.getContext();
                                if (context instanceof Activity)
                                {
                                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder((Activity)context);
                                    builder.setMessage("Allow storing image in your Gallery?").setCancelable(false).setPositiveButton("Yes", admarvelwebview. new android.content.DialogInterface.OnClickListener() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final AdMarvelWebView val$adMarvelWebView;
                                        final String val$callback;
                                        final String val$redirectUrl;

                                        public void onClick(DialogInterface dialoginterface, int i1)
                                        {
                                            if (com.admarvel.android.ads.ac.a() < 8)
                                            {
                                                handler.post(adMarvelWebView. new ak(adMarvelInternalWebView, redirectUrl, callback));
                                                return;
                                            } else
                                            {
                                                handler.post(adMarvelWebView. new aj(adMarvelInternalWebView, redirectUrl, callback));
                                                return;
                                            }
                                        }


// JavaClassFileOutputException: Invalid index accessing method local variables table of <init>

                                        private class ak
                                            implements Runnable
                                        {

                                            String a;
                                            String b;
                                            InputStream c;
                                            Bitmap d;
                                            private final WeakReference e;
                                            private final WeakReference f;

                                            public void run()
                                            {
                                                AdMarvelWebView admarvelwebview;
                                                AdMarvelInternalWebView admarvelinternalwebview;
                                                admarvelwebview = (AdMarvelWebView)e.get();
                                                admarvelinternalwebview = (AdMarvelInternalWebView)f.get();
                                                if (admarvelinternalwebview != null && admarvelwebview != null) goto _L2; else goto _L1
_L1:
                                                return;
_L2:
                                                String s1 = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/Pictures/").toString();
                                                if (!a.startsWith("/mnt/sdcard")) goto _L4; else goto _L3
_L3:
                                                if (!(new File(a)).exists()) goto _L6; else goto _L5
_L5:
                                                d = BitmapFactory.decodeFile(a);
_L7:
                                                if (d == null && c != null)
                                                {
                                                    Thread thread1 = new Thread(new Runnable() {

                                                        final ak a;

                                                        public void run()
                                                        {
                                                            a.d = BitmapFactory.decodeStream(a.c);
                                                        }

                                                    
                                                    {
                                                        a = ak.this;
                                                        super();
                                                    }
                                                    });
                                                    thread1.start();
                                                    thread1.join();
                                                }
                                                if (d != null)
                                                {
                                                    break MISSING_BLOCK_LABEL_432;
                                                }
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                    return;
                                                }
                                                continue; /* Loop/switch isn't completed */
_L6:
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                                  goto _L7
                                                Exception exception1;
                                                exception1;
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                                Logging.log(Log.getStackTraceString(exception1));
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                    return;
                                                }
                                                continue; /* Loop/switch isn't completed */
_L4:
                                                if (!a.startsWith("http:") && !a.startsWith("https:")) goto _L9; else goto _L8
_L8:
                                                a = com.admarvel.android.ads.ab.a(a, admarvelwebview.getContext());
                                                Thread thread = new Thread(new Runnable() {

                                                    final ak a;

                                                    public void run()
                                                    {
                                                        try
                                                        {
                                                            a.c = (new URL(a.a)).openStream();
                                                            return;
                                                        }
                                                        catch (MalformedURLException malformedurlexception)
                                                        {
                                                            malformedurlexception.printStackTrace();
                                                            return;
                                                        }
                                                        catch (IOException ioexception)
                                                        {
                                                            ioexception.printStackTrace();
                                                            return;
                                                        }
                                                        catch (Exception exception2)
                                                        {
                                                            exception2.printStackTrace();
                                                        }
                                                    }

                                                    
                                                    {
                                                        a = ak.this;
                                                        super();
                                                    }
                                                });
                                                thread.start();
                                                thread.join();
                                                  goto _L7
                                                Exception exception;
                                                exception;
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                }
                                                throw exception;
_L9:
                                                if (!a.startsWith("file:///android_asset/")) goto _L7; else goto _L10
_L10:
                                                int i1 = "file:///android_asset/".length();
                                                String s3 = a.substring(i1);
                                                c = admarvelwebview.getContext().getAssets().open(s3);
                                                  goto _L7
                                                String s2;
                                                FileOutputStream fileoutputstream;
                                                File file = new File(s1);
                                                if (!file.exists())
                                                {
                                                    file.mkdirs();
                                                }
                                                s2 = (new StringBuilder()).append(s1).append(System.currentTimeMillis()).append(".jpg").toString();
                                                fileoutputstream = new FileOutputStream(s2);
                                                if (fileoutputstream == null)
                                                {
                                                    break MISSING_BLOCK_LABEL_531;
                                                }
                                                if (d != null)
                                                {
                                                    d.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, fileoutputstream);
                                                    fileoutputstream.flush();
                                                    fileoutputstream.close();
                                                }
                                                Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                                                intent.setData(Uri.fromFile(new File(s2)));
                                                admarvelwebview.getContext().sendBroadcast(intent);
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                    return;
                                                }
                                                if (true) goto _L1; else goto _L11
_L11:
                                            }

                                            public ak(AdMarvelInternalWebView admarvelinternalwebview, String s1, String s2)
                                            {
                                                c = null;
                                                d = null;
                                                e = new WeakReference(AdMarvelWebView.this);
                                                f = new WeakReference(admarvelinternalwebview);
                                                a = s1;
                                                b = s2;
                                            }
                                        }


                                        private class aj
                                            implements Runnable
                                        {

                                            String a;
                                            String b;
                                            InputStream c;
                                            Bitmap d;
                                            private final WeakReference e;
                                            private final WeakReference f;

                                            public void run()
                                            {
                                                AdMarvelWebView admarvelwebview;
                                                AdMarvelInternalWebView admarvelinternalwebview;
                                                admarvelwebview = (AdMarvelWebView)e.get();
                                                admarvelinternalwebview = (AdMarvelInternalWebView)f.get();
                                                if (admarvelinternalwebview != null && admarvelwebview != null) goto _L2; else goto _L1
_L1:
                                                return;
_L2:
                                                String s1 = (new StringBuilder()).append(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString()).append("/").toString();
                                                if (!a.startsWith("/mnt/sdcard")) goto _L4; else goto _L3
_L3:
                                                if (!(new File(a)).exists()) goto _L6; else goto _L5
_L5:
                                                d = BitmapFactory.decodeFile(a);
_L7:
                                                if (d == null && c != null)
                                                {
                                                    Thread thread1 = new Thread(new Runnable() {

                                                        final aj a;

                                                        public void run()
                                                        {
                                                            a.d = BitmapFactory.decodeStream(a.c);
                                                        }

                                                    
                                                    {
                                                        a = aj.this;
                                                        super();
                                                    }
                                                    });
                                                    thread1.start();
                                                    thread1.join();
                                                }
                                                if (d != null)
                                                {
                                                    break MISSING_BLOCK_LABEL_435;
                                                }
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                    return;
                                                }
                                                continue; /* Loop/switch isn't completed */
_L6:
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                                  goto _L7
                                                Exception exception1;
                                                exception1;
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                                Logging.log(Log.getStackTraceString(exception1));
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                    return;
                                                }
                                                continue; /* Loop/switch isn't completed */
_L4:
                                                if (!a.startsWith("http:") && !a.startsWith("https:")) goto _L9; else goto _L8
_L8:
                                                a = com.admarvel.android.ads.ab.a(a, admarvelwebview.getContext());
                                                Thread thread = new Thread(new Runnable() {

                                                    final aj a;

                                                    public void run()
                                                    {
                                                        try
                                                        {
                                                            a.c = (new URL(a.a)).openStream();
                                                            return;
                                                        }
                                                        catch (MalformedURLException malformedurlexception)
                                                        {
                                                            malformedurlexception.printStackTrace();
                                                            return;
                                                        }
                                                        catch (IOException ioexception)
                                                        {
                                                            ioexception.printStackTrace();
                                                            return;
                                                        }
                                                        catch (Exception exception2)
                                                        {
                                                            exception2.printStackTrace();
                                                        }
                                                    }

                                                    
                                                    {
                                                        a = aj.this;
                                                        super();
                                                    }
                                                });
                                                thread.start();
                                                thread.join();
                                                  goto _L7
                                                Exception exception;
                                                exception;
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                }
                                                throw exception;
_L9:
                                                if (!a.startsWith("file:///android_asset/")) goto _L7; else goto _L10
_L10:
                                                int i1 = "file:///android_asset/".length();
                                                String s3 = a.substring(i1);
                                                c = admarvelwebview.getContext().getAssets().open(s3);
                                                  goto _L7
                                                String s2;
                                                FileOutputStream fileoutputstream;
                                                File file = new File(s1);
                                                if (!file.exists())
                                                {
                                                    file.mkdirs();
                                                }
                                                s2 = (new StringBuilder()).append(s1).append(System.currentTimeMillis()).append(".jpg").toString();
                                                fileoutputstream = new FileOutputStream(s2);
                                                if (fileoutputstream == null)
                                                {
                                                    break MISSING_BLOCK_LABEL_534;
                                                }
                                                if (d != null)
                                                {
                                                    d.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, fileoutputstream);
                                                    fileoutputstream.flush();
                                                    fileoutputstream.close();
                                                }
                                                Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                                                intent.setData(Uri.fromFile(new File(s2)));
                                                admarvelwebview.getContext().sendBroadcast(intent);
                                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
                                                if (d != null)
                                                {
                                                    d.recycle();
                                                    d = null;
                                                    return;
                                                }
                                                if (true) goto _L1; else goto _L11
_L11:
                                            }

                                            public aj(AdMarvelInternalWebView admarvelinternalwebview, String s1, String s2)
                                            {
                                                c = null;
                                                d = null;
                                                e = new WeakReference(AdMarvelWebView.this);
                                                f = new WeakReference(admarvelinternalwebview);
                                                a = s1;
                                                b = s2;
                                            }
                                        }

                                    }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void onClick(DialogInterface dialoginterface, int i1)
                                        {
                                            if (callback != null)
                                            {
                                                handler.post(new Runnable() {

                                                    final _cls11 this$1;

                                                    public void run()
                                                    {
                                                        adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                                                    }

                        
                        {
                            this$1 = _cls11.this;
                            super();
                        }
                                                });
                                            }
                                            dialoginterface.cancel();
                                        }

                        
                        {
                            this$0 = InnerJS.this;
                            callback = s1;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            super();
                        }
                                    });
                                    builder.create().show();
                                    return;
                                } else
                                {
                                    handler.post(new Runnable() {

                                        final InnerJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void run()
                                        {
                                            adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                                        }

                        
                        {
                            this$0 = InnerJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            callback = s1;
                            super();
                        }
                                    });
                                    return;
                                }
                            }
                        }
                    }
                }

                public void triggerVibration(String s1)
                {
                    int i1 = 10000;
                    if (s1 == null || s1.trim().length() <= 0) goto _L2; else goto _L1
_L1:
                    int j1 = Integer.parseInt(s1);
                    if (j1 <= i1) goto _L4; else goto _L3
_L3:
                    Logging.log("Time mentioned is greater than Max duration ");
_L7:
                    char c1 = i1;
_L5:
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    NumberFormatException numberformatexception;
                    if (admarvelwebview == null)
                    {
                        return;
                    } else
                    {
                        com.admarvel.android.ads.ab.a(admarvelwebview.getContext(), c1);
                        return;
                    }
                    numberformatexception;
                    Logging.log("NumberFormatException so setting vibrate time to 500 Milli Sec");
_L2:
                    c1 = '\u01F4';
                      goto _L5
_L4:
                    i1 = j1;
                    if (true) goto _L7; else goto _L6
_L6:
                }

                public void updateAudioState(String s1)
                {
                    if (com.admarvel.android.ads.ac.a() >= 14)
                    {
                        Logging.log("window.ADMARVEL.updateAudioState()");
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                        if (admarvelwebview != null)
                        {
                            am am1 = admarvelwebview. new am(s1);
                            handler.post(am1);
                            return;
                        }
                    }
                }

                public void updatestate(String s1)
                {
                    AdMarvelWebView admarvelwebview = (AdMarvelWebView)adMarvelWebViewReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelwebview != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            handler.post(new an(s1, admarvelwebview));
                            return;
                        }
                    }
                }


                public InnerJS(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelAd admarvelad, Handler handler1, AdMarvelWebView admarvelwebview, Context context)
                {
                    lockedOrientation = null;
                    adMarvelInternalWebViewReference = new WeakReference(admarvelinternalwebview);
                    adMarvelWebViewReference = new WeakReference(admarvelwebview);
                    contextReference = new WeakReference(context);
                    adMarvelAd = admarvelad;
                    handler = handler1;
                }

                private class a
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private final String c;
                    private final String d;
                    private final int e;
                    private final File f;

                    public void run()
                    {
                        if (a.get() != null && b.get() != null)
                        {
                            k k1 = new k((Context)a.get(), (AdMarvelInternalWebView)b.get(), f);
                            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
                            Object aobj[] = new Object[3];
                            aobj[0] = c;
                            aobj[1] = d;
                            aobj[2] = Integer.valueOf(e);
                            k1.executeOnExecutor(executor, aobj);
                        }
                    }

                    public a(Context context, AdMarvelInternalWebView admarvelinternalwebview, String s1, String s2, int i1, File file)
                    {
                        a = new WeakReference(context);
                        b = new WeakReference(admarvelinternalwebview);
                        c = s1;
                        d = s2;
                        e = i1;
                        f = file;
                    }
                }


                private class t
                    implements Runnable
                {

                    private static int a = 0x80000000;
                    private final WeakReference b;

                    private int a()
                    {
                        return a;
                    }

                    static int a(t t1)
                    {
                        return t1.a();
                    }

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)b.get();
                        Context context;
                        if (admarvelwebview != null)
                        {
                            if ((context = admarvelwebview.getContext()) != null)
                            {
                                a = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
                                com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview, a);
                                return;
                            }
                        }
                    }


                    public t()
                    {
                        b = new WeakReference(AdMarvelWebView.this);
                    }
                }


                private class f
                    implements Runnable
                {

                    private final String a;
                    private final WeakReference b;
                    private final WeakReference c;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview;
                        AdMarvelWebView admarvelwebview;
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        admarvelwebview = (AdMarvelWebView)c.get();
                        if (admarvelwebview == null)
                        {
                            return;
                        }
                        if (admarvelinternalwebview == null) goto _L2; else goto _L1
_L1:
                        if (com.admarvel.android.ads.ac.a() >= 9) goto _L4; else goto _L3
_L3:
                        int l7 = admarvelwebview.getResources().getConfiguration().orientation;
                        if (l7 != 1) goto _L6; else goto _L5
_L5:
                        char c1 = '\0';
_L19:
                        String s1 = com.admarvel.android.ads.ab.a(admarvelwebview.getContext());
                        int i1;
                        String s2;
                        boolean flag;
                        Location location;
                        String s3;
                        StringBuilder stringbuilder;
                        boolean flag1;
                        StringBuilder stringbuilder1;
                        boolean flag2;
                        String s4;
                        AdMarvelView admarvelview;
                        int ai1[];
                        int j1;
                        int k1;
                        int l1;
                        int i2;
                        int j2;
                        int k2;
                        int l2;
                        int i3;
                        int j3;
                        int k3;
                        int l3;
                        int i4;
                        int j4;
                        int k4;
                        int l4;
                        int i5;
                        int j5;
                        int k5;
                        int l5;
                        int i6;
                        int j6;
                        int k6;
                        int l6;
                        int i7;
                        int j7;
                        String s5;
                        Exception exception2;
                        Activity activity;
                        int k7;
                        Activity activity1;
                        if (s1.equals("wifi") || s1.equals("mobile"))
                        {
                            s2 = "YES";
                        } else
                        {
                            s2 = "NO";
                        }
                        flag = com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "location");
                        location = null;
                        if (!flag)
                        {
                            break MISSING_BLOCK_LABEL_125;
                        }
                        location = com.admarvel.android.ads.l.a().a(admarvelinternalwebview);
                        if (location == null)
                        {
                            break MISSING_BLOCK_LABEL_1339;
                        }
                        s3 = (new StringBuilder()).append("{lat:").append(location.getLatitude()).append(", lon:").append(location.getLongitude()).append(", acc:").append(location.getAccuracy()).append("}").toString();
_L27:
                        stringbuilder = (new StringBuilder()).append("{screen: true, orientation: true, heading: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "compass")).append(", location : ");
                        if (com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") || com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        stringbuilder1 = stringbuilder.append(flag1).append(",shake: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "accelerometer")).append(",tilt: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "accelerometer")).append(", network: true, sms:").append(com.admarvel.android.ads.ab.j(admarvelwebview.getContext())).append(", phone:").append(com.admarvel.android.ads.ab.j(admarvelwebview.getContext())).append(", email:true,calendar:");
                        if (com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.READ_CALENDAR") && com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.WRITE_CALENDAR"))
                        {
                            flag2 = true;
                        } else
                        {
                            flag2 = false;
                        }
                        s4 = stringbuilder1.append(flag2).append(", camera: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                        admarvelview = (AdMarvelView)admarvelinternalwebview.adMarvelViewReference.get();
                        if (admarvelview == null) goto _L8; else goto _L7
_L7:
                        ai1 = new int[2];
                        admarvelinternalwebview.getLocationOnScreen(ai1);
_L20:
                        if (!(admarvelwebview.getContext() instanceof Activity)) goto _L10; else goto _L9
_L9:
                        activity1 = (Activity)admarvelwebview.getContext();
                        if (activity1 == null) goto _L10; else goto _L11
_L11:
                        if (admarvelwebview.f == 0x80000000 || admarvelwebview.f < 0) goto _L13; else goto _L12
_L12:
                        j1 = admarvelwebview.f;
_L22:
                        k1 = ai1[0];
                        l1 = ai1[1] - j1;
                        i2 = admarvelinternalwebview.getWidth();
                        j2 = admarvelinternalwebview.getHeight();
                        int ai2[] = new int[2];
                        admarvelview.getLocationOnScreen(ai2);
                        k2 = ai2[0];
                        l2 = ai2[1] - j1;
                        i3 = admarvelview.getWidth();
                        j3 = admarvelview.getHeight();
                        k3 = l2;
                        l3 = k2;
                        i4 = j2;
                        j4 = i2;
                        k4 = l1;
                        l4 = k1;
                        i5 = j3;
                        j5 = i3;
_L25:
                        k5 = admarvelwebview.getRootView().getLeft();
                        l5 = admarvelwebview.getRootView().getTop();
                        i6 = admarvelwebview.getRootView().getWidth();
                        j6 = admarvelwebview.getRootView().getHeight();
                        if (!(admarvelwebview.getContext() instanceof Activity)) goto _L15; else goto _L14
_L14:
                        activity = (Activity)admarvelwebview.getContext();
                        if (activity == null) goto _L15; else goto _L16
_L16:
                        s5 = com.admarvel.android.ads.ab.a(activity);
                        ViewGroup viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                        j7 = viewgroup.getLeft();
                        i7 = viewgroup.getTop();
                        l6 = viewgroup.getWidth();
                        k7 = viewgroup.getHeight();
                        k6 = k7;
_L24:
                        String s6 = (new StringBuilder()).append("javascript:").append(a).append("({x:").append(l4).append(",y:").append(k4).append(",width:").append(j4).append(",height:").append(i4).append(",appX:").append(j7).append(",appY:").append(i7).append(",appWidth:").append(l6).append(",appHeight:").append(k6).append(",orientation:").append(c1).append(",defaultX:").append(l3).append(",defaultY:").append(k3).append(",defaultWidth:").append(j5).append(",defaultHeight:").append(i5).append(",networkType:").append("'").append(s1).append("'").append(",network:").append("'").append(s2).append("'").append(",screenWidth:").append(com.admarvel.android.ads.ab.g(admarvelwebview.getContext())).append(",screenHeight:").append(com.admarvel.android.ads.ab.h(admarvelwebview.getContext())).append(",adType:").append("'").append("Banner").append("'").append(",supportedFeatures:").append(s4).append(",sdkVersion:").append("'").append("2.4.5.1").append("'").append(",location:").append(s3).append(",applicationSupportedOrientations:").append("'").append(s5).append("'").append("})").toString();
                        admarvelinternalwebview.loadUrl(s6);
                        Logging.log((new StringBuilder()).append("Updating Frame values : ").append(s6).toString());
                        return;
                        exception2;
                        break MISSING_BLOCK_LABEL_1063;
_L6:
                        if (l7 != 2) goto _L18; else goto _L17
_L17:
                        c1 = 'Z';
                          goto _L19
_L4:
                        i1 = AdMarvelWebView.o(admarvelwebview);
                        if (i1 == 0)
                        {
                            c1 = '\0';
                        } else
                        if (i1 == 1)
                        {
                            c1 = 'Z';
                        } else
                        {
                            if (i1 != 2)
                            {
                                continue; /* Loop/switch isn't completed */
                            }
                            c1 = '\264';
                        }
                          goto _L19
                        exception1;
                        ai1[0] = 0;
                        ai1[1] = 0;
                          goto _L20
                        Exception exception1;
                        try
                        {
                            Logging.log(Log.getStackTraceString(exception2));
                            return;
                        }
                        catch (NullPointerException nullpointerexception)
                        {
                            Logging.log(Log.getStackTraceString(nullpointerexception));
                            return;
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                        }
                        return;
_L13:
                        ViewGroup viewgroup1 = (ViewGroup)activity1.getWindow().findViewById(0x1020002);
                        DisplayMetrics displaymetrics = new DisplayMetrics();
                        activity1.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
                        j1 = displaymetrics.heightPixels - viewgroup1.getMeasuredHeight();
                        if (j1 < 0) goto _L22; else goto _L21
_L21:
                        if (admarvelwebview.f != 0x80000000) goto _L22; else goto _L23
_L23:
                        admarvelwebview.f = j1;
                          goto _L22
_L15:
                        k6 = j6;
                        l6 = i6;
                        i7 = l5;
                        j7 = k5;
                        s5 = "0,90";
                          goto _L24
_L10:
                        j1 = 0;
                          goto _L22
_L8:
                        i5 = 0;
                        j5 = 0;
                        k3 = 0;
                        l3 = 0;
                        i4 = 0;
                        j4 = 0;
                        k4 = 0;
                        l4 = 0;
                          goto _L25
_L18:
                        c1 = '\uFFFF';
                          goto _L19
_L2:
                        return;
                        if (i1 != 3) goto _L18; else goto _L26
_L26:
                        c1 = '\uFFA6';
                          goto _L19
                        s3 = "null";
                          goto _L27
                    }

                    public f(String s1, AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview)
                    {
                        a = s1;
                        b = new WeakReference(admarvelinternalwebview);
                        c = new WeakReference(admarvelwebview);
                    }
                }


                private class g
                    implements Runnable
                {

                    private final WeakReference a;
                    private final String b;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        if (com.admarvel.android.ads.ab.f(admarvelinternalwebview.getContext()))
                        {
                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
                            return;
                        } else
                        {
                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                            return;
                        }
                    }

                    public g(AdMarvelInternalWebView admarvelinternalwebview, String s1)
                    {
                        a = new WeakReference(admarvelinternalwebview);
                        b = s1;
                    }
                }


                private class h
                    implements Runnable
                {

                    private final WeakReference a;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        f f1;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        android.widget.LinearLayout.LayoutParams layoutparams;
                        try
                        {
                            admarvelwebview = (AdMarvelWebView)a.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelwebview == null)
                        {
                            return;
                        }
                        f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 == null)
                        {
                            break MISSING_BLOCK_LABEL_68;
                        }
                        f1.c();
                        f1.b();
                        admarvelwebview.removeView(f1);
                        f1.a = null;
                        if (AdMarvelWebView.H(admarvelwebview) != null)
                        {
                            AdMarvelWebView.d(admarvelwebview).removeCallbacks(AdMarvelWebView.H(admarvelwebview));
                            com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview, null);
                        }
                        com.admarvel.android.ads.ab.m(admarvelwebview.getContext());
                        admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString());
                        if (admarvelinternalwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_156;
                        }
                        admarvelinternalwebview.g();
                        admarvelinternalwebview.visibilityCallback = null;
                        admarvelinternalwebview.invalidate();
                        admarvelinternalwebview.requestLayout();
                        layoutparams = (android.widget.LinearLayout.LayoutParams)admarvelwebview.getLayoutParams();
                        layoutparams.height = -2;
                        admarvelwebview.setLayoutParams(layoutparams);
                        admarvelwebview.forceLayout();
                        admarvelwebview.requestLayout();
                        admarvelwebview.invalidate();
                        admarvelwebview.requestFocus();
                        a.clear();
                        return;
                    }

                    public h()
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                    }
                }


                private class j
                    implements Runnable
                {

                    private final WeakReference a;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
                        if (admarvelwebview != null)
                        {
                            admarvelwebview.d();
                        }
                    }

                    public j()
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                    }
                }


                private class ah
                    implements Runnable
                {

                    private final WeakReference a;
                    private String b;
                    private Activity c;

                    public void run()
                    {
                        c = (Activity)a.get();
                        if (c != null) goto _L2; else goto _L1
_L1:
                        return;
_L2:
                        Display display;
                        display = ((WindowManager)c.getSystemService("window")).getDefaultDisplay();
                        if (b.equalsIgnoreCase("Portrait"))
                        {
                            c.setRequestedOrientation(1);
                            return;
                        }
                        if (!b.equalsIgnoreCase("LandscapeLeft"))
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        c.setRequestedOrientation(0);
                        if (display.getRotation() != 1)
                        {
                            c.setRequestedOrientation(8);
                            return;
                        }
                        if (true) goto _L1; else goto _L3
_L3:
                        if (b.equalsIgnoreCase("PortraitUpSideDown"))
                        {
                            c.setRequestedOrientation(9);
                            return;
                        }
                        if (!b.equalsIgnoreCase("LandscapeRight"))
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        c.setRequestedOrientation(8);
                        if (display.getRotation() != 3)
                        {
                            c.setRequestedOrientation(0);
                            return;
                        }
                        continue; /* Loop/switch isn't completed */
                        if (!b.equalsIgnoreCase("none")) goto _L1; else goto _L4
_L4:
                        if (display.getRotation() == 2)
                        {
                            c.setRequestedOrientation(9);
                            return;
                        }
                        if (display.getRotation() == 3)
                        {
                            c.setRequestedOrientation(8);
                            if (display.getRotation() != 3)
                            {
                                c.setRequestedOrientation(0);
                                return;
                            }
                        }
                        if (true) goto _L1; else goto _L5
_L5:
                    }

                    public ah(Activity activity, String s1)
                    {
                        b = null;
                        c = null;
                        a = new WeakReference(activity);
                        b = s1;
                    }
                }


                private class n
                    implements Runnable
                {

                    private int a;
                    private int b;
                    private int c;
                    private int d;
                    private final WeakReference e;
                    private final WeakReference f;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)e.get();
                        if (admarvelwebview != null) goto _L2; else goto _L1
_L1:
                        Activity activity;
                        return;
_L2:
                        ViewGroup viewgroup;
                        if ((activity = (Activity)f.get()) == null)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString());
                        if (admarvelinternalwebview == null || admarvelinternalwebview.isSignalShutdown() || !AdMarvelWebView.f(admarvelwebview))
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        RelativeLayout relativelayout = (RelativeLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_LAYOUT").toString());
                        if (relativelayout == null)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        FrameLayout framelayout = (FrameLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_BG").toString());
                        if (framelayout == null)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        framelayout.setFocusableInTouchMode(true);
                        framelayout.requestFocus();
                        android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)relativelayout.getLayoutParams();
                        if (layoutparams != null)
                        {
                            layoutparams.width = a;
                            layoutparams.height = b;
                            layoutparams.leftMargin = c;
                            layoutparams.topMargin = d;
                            if (c != 0)
                            {
                                layoutparams.gravity = 0;
                            }
                        }
                        admarvelinternalwebview.a(c, d, a, b);
                        if (!AdMarvelWebView.t(admarvelwebview))
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        LinearLayout linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("BTN_CLOSE").toString());
                        if (linearlayout == null)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                        int i1 = viewgroup.getMeasuredHeight();
                        int j1 = viewgroup.getMeasuredWidth();
                        float f1 = TypedValue.applyDimension(1, 30F, admarvelwebview.getContext().getResources().getDisplayMetrics());
                        com.admarvel.android.ads.AdMarvelWebView.a(linearlayout, layoutparams1, AdMarvelWebView.r(admarvelwebview), c, d, a, b, j1, i1, (int)f1);
                        linearlayout.removeAllViews();
                        linearlayout.addView(new i(admarvelwebview.getContext(), admarvelwebview));
                        break; /* Loop/switch isn't completed */
                        if (true) goto _L1; else goto _L3
_L3:
                        AdMarvelWebView.d(admarvelwebview, true);
                        viewgroup.invalidate();
                        viewgroup.requestLayout();
                        admarvelwebview.a.set(true);
                        admarvelwebview.invalidate();
                        admarvelwebview.requestLayout();
                        if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
                        {
                            com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a();
                        }
                        admarvelwebview.invalidate();
                        admarvelwebview.requestLayout();
                        return;
                    }

                    public n(Activity activity, int i1, int j1)
                    {
                        a = 0;
                        b = 0;
                        c = 0;
                        d = 0;
                        e = new WeakReference(AdMarvelWebView.this);
                        f = new WeakReference(activity);
                        a = i1;
                        b = j1;
                    }

                    public n(Activity activity, int i1, int j1, int k1, int l1)
                    {
                        a = 0;
                        b = 0;
                        c = 0;
                        d = 0;
                        e = new WeakReference(AdMarvelWebView.this);
                        f = new WeakReference(activity);
                        a = k1;
                        b = l1;
                        c = i1;
                        d = j1;
                    }

                    private class i extends LinearLayout
                    {

                        private final WeakReference a;

                        private void a(Context context)
                        {
                            setBackgroundColor(0);
                            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(com.admarvel.android.ads.ab.a(50F, context), com.admarvel.android.ads.ab.a(50F, context));
                            layoutparams.weight = 1.0F;
                            layoutparams.width = 0;
                            layoutparams.gravity = 17;
                            setLayoutParams(layoutparams);
                            android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-2, -2);
                            layoutparams1.weight = 25F;
                            layoutparams1.gravity = 17;
                            float f1 = TypedValue.applyDimension(1, 36F, getResources().getDisplayMetrics());
                            android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams((int)f1, (int)f1);
                            layoutparams2.addRule(13);
                            a(context, layoutparams2, layoutparams);
                        }

                        private void a(Context context, android.widget.RelativeLayout.LayoutParams layoutparams, android.widget.LinearLayout.LayoutParams layoutparams1)
                        {
                            AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
                            if (admarvelwebview == null)
                            {
                                return;
                            }
                            ImageView imageview = new ImageView(context);
                            imageview.setLayoutParams(layoutparams);
                            android.graphics.drawable.BitmapDrawable bitmapdrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("close", context);
                            imageview.setTag("BTN_CLOSE_IMAGE");
                            RelativeLayout relativelayout;
                            if (!AdMarvelWebView.v(admarvelwebview))
                            {
                                imageview.setImageDrawable(bitmapdrawable);
                            } else
                            {
                                imageview.setBackgroundColor(0);
                            }
                            relativelayout = new RelativeLayout(context);
                            relativelayout.setLayoutParams(layoutparams1);
                            relativelayout.addView(imageview);
                            relativelayout.setOnClickListener(admarvelwebview. new android.view.View.OnClickListener() {

                                final AdMarvelWebView a;
                                final i b;

                                public void onClick(View view)
                                {
                                    AdMarvelWebView.d(a).post(a. new j());
                                }

                                
                                {
                                    b = i.this;
                                    a = AdMarvelWebView.this;
                                    super();
                                }
                            });
                            addView(relativelayout);
                        }

                        public i(Context context, AdMarvelWebView admarvelwebview)
                        {
                            super(context);
                            a = new WeakReference(admarvelwebview);
                            a(context);
                        }
                    }

                }


                private class o
                    implements Runnable
                {

                    private int a;
                    private int b;
                    private int c;
                    private int d;
                    private final WeakReference e;
                    private final WeakReference f;
                    private final AdMarvelAd g;

                    public void run()
                    {
                        android.widget.FrameLayout.LayoutParams layoutparams1;
                        int j1;
                        AdMarvelWebView admarvelwebview;
                        Activity activity;
                        ViewGroup viewgroup;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        FrameLayout framelayout;
                        android.widget.FrameLayout.LayoutParams layoutparams;
                        RelativeLayout relativelayout;
                        int i1;
                        FrameLayout framelayout1;
                        LinearLayout linearlayout;
                        android.widget.RelativeLayout.LayoutParams layoutparams2;
                        int k1;
                        int l1;
                        float f1;
                        try
                        {
                            admarvelwebview = (AdMarvelWebView)e.get();
                        }
                        catch (Exception exception)
                        {
                            exception.printStackTrace();
                            return;
                        }
                        if (admarvelwebview == null)
                        {
                            return;
                        }
                        activity = (Activity)f.get();
                        if (activity == null) goto _L2; else goto _L1
_L1:
                        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                        admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString());
                        if (admarvelinternalwebview == null) goto _L2; else goto _L3
_L3:
                        if (admarvelinternalwebview.isSignalShutdown()) goto _L2; else goto _L4
_L4:
                        admarvelinternalwebview.isAdExpanding = true;
                        framelayout = new FrameLayout(admarvelwebview.getContext());
                        framelayout.setTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_BG").toString());
                        framelayout.setOnTouchListener(new android.view.View.OnTouchListener() {

                            final o a;

                            public boolean onTouch(View view, MotionEvent motionevent)
                            {
                                return true;
                            }

                            
                            {
                                a = o.this;
                                super();
                            }
                        });
                        framelayout.setFocusableInTouchMode(true);
                        framelayout.requestFocus();
                        framelayout.setOnKeyListener(admarvelwebview. new android.view.View.OnKeyListener() {

                            final AdMarvelWebView a;
                            final o b;

                            public boolean onKey(View view, int i2, KeyEvent keyevent)
                            {
                                if (keyevent.getAction() == 0 && i2 == 4)
                                {
                                    a.d();
                                    return true;
                                } else
                                {
                                    return false;
                                }
                            }

                            
                            {
                                b = o.this;
                                a = AdMarvelWebView.this;
                                super();
                            }
                        });
                        layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1);
                        relativelayout = new RelativeLayout(admarvelwebview.getContext());
                        relativelayout.setTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_LAYOUT").toString());
                        layoutparams1 = new android.widget.FrameLayout.LayoutParams(a, b);
                        if (c != 0) goto _L6; else goto _L5
_L5:
                        layoutparams1.gravity = 1;
_L12:
                        relativelayout.setGravity(1);
                        layoutparams1.leftMargin = c;
                        layoutparams1.topMargin = d;
                        i1 = admarvelwebview.getChildCount();
                        j1 = 0;
_L10:
                        if (j1 >= i1) goto _L8; else goto _L7
_L7:
                        if (admarvelwebview.getChildAt(j1) != admarvelinternalwebview) goto _L9; else goto _L8
_L8:
                        framelayout1 = new FrameLayout(admarvelwebview.getContext());
                        framelayout1.setTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_PLACE_HOLDER").toString());
                        admarvelwebview.addView(framelayout1, j1, new android.widget.RelativeLayout.LayoutParams(admarvelinternalwebview.getWidth(), admarvelinternalwebview.getHeight()));
                        admarvelwebview.removeView(admarvelinternalwebview);
                        if (admarvelinternalwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_403;
                        }
                        admarvelinternalwebview.a(c, d, a, b);
                        relativelayout.addView(admarvelinternalwebview);
                        AdMarvelWebView.b(admarvelwebview, true);
                        framelayout.addView(relativelayout, layoutparams1);
                        viewgroup.addView(framelayout, layoutparams);
                        relativelayout.bringToFront();
                        if (AdMarvelWebView.p(admarvelwebview) && !AdMarvelWebView.q(admarvelwebview))
                        {
                            linearlayout = new LinearLayout(admarvelwebview.getContext());
                            linearlayout.setBackgroundColor(0);
                            linearlayout.setTag((new StringBuilder()).append(admarvelwebview.e).append("BTN_CLOSE").toString());
                            layoutparams2 = new android.widget.RelativeLayout.LayoutParams(com.admarvel.android.ads.ab.a(50F, admarvelwebview.getContext()), com.admarvel.android.ads.ab.a(50F, admarvelwebview.getContext()));
                            k1 = viewgroup.getMeasuredHeight();
                            l1 = viewgroup.getMeasuredWidth();
                            f1 = TypedValue.applyDimension(1, 30F, admarvelwebview.getContext().getResources().getDisplayMetrics());
                            com.admarvel.android.ads.AdMarvelWebView.a(linearlayout, layoutparams2, AdMarvelWebView.r(admarvelwebview), c, d, a, b, l1, k1, (int)f1);
                            linearlayout.addView(new i(admarvelwebview.getContext(), admarvelwebview));
                            relativelayout.addView(linearlayout);
                            AdMarvelWebView.c(admarvelwebview, true);
                            com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview, admarvelwebview. new z(activity, 3));
                            if (AdMarvelWebView.s(admarvelwebview).canDetectOrientation())
                            {
                                AdMarvelWebView.s(admarvelwebview).enable();
                            }
                        }
                        viewgroup.invalidate();
                        viewgroup.requestLayout();
                        admarvelwebview.a.set(true);
                        admarvelwebview.invalidate();
                        admarvelwebview.requestLayout();
                        if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
                        {
                            com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a();
                        }
                        admarvelwebview.invalidate();
                        admarvelwebview.requestLayout();
                        admarvelinternalwebview.isAdExpanding = false;
                        if (AdMarvelUtils.isLogDumpEnabled())
                        {
                            (new Handler()).postDelayed(new m(g, activity), 1000L);
                            return;
                        }
                        break; /* Loop/switch isn't completed */
_L6:
                        if (com.admarvel.android.ads.ac.a() < 11)
                        {
                            layoutparams1.gravity = 48;
                        }
                        continue; /* Loop/switch isn't completed */
_L9:
                        j1++;
                        if (true) goto _L10; else goto _L2
_L2:
                        return;
                        if (true) goto _L12; else goto _L11
_L11:
                    }

                    public o(Activity activity, int i1, int j1, int k1, int l1, AdMarvelAd admarvelad)
                    {
                        a = 0;
                        b = 0;
                        c = 0;
                        d = 0;
                        e = new WeakReference(AdMarvelWebView.this);
                        f = new WeakReference(activity);
                        a = k1;
                        b = l1;
                        c = i1;
                        d = j1;
                        g = admarvelad;
                    }

                    public o(Activity activity, int i1, int j1, AdMarvelAd admarvelad)
                    {
                        a = 0;
                        b = 0;
                        c = 0;
                        d = 0;
                        e = new WeakReference(AdMarvelWebView.this);
                        f = new WeakReference(activity);
                        a = i1;
                        b = j1;
                        g = admarvelad;
                    }

                    private class z extends OrientationEventListener
                    {

                        private final WeakReference a;
                        private final WeakReference b;
                        private int c;

                        static int a(z z1, int i1)
                        {
                            z1.c = i1;
                            return i1;
                        }

                        static WeakReference a(z z1)
                        {
                            return z1.b;
                        }

                        public void onOrientationChanged(int i1)
                        {
                            if (c == -1)
                            {
                                c = i1;
                            } else
                            if (Math.abs(i1 - c) >= 90 && Math.abs(i1 - c) <= 270)
                            {
                                AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
                                if (admarvelwebview != null)
                                {
                                    AdMarvelWebView.d(admarvelwebview).postDelayed(admarvelwebview. new Runnable(i1) {

                                        final AdMarvelWebView a;
                                        final int b;
                                        final z c;

                                        public void run()
                                        {
                                            ViewGroup viewgroup;
                                            RelativeLayout relativelayout;
                                            Activity activity = (Activity)com.admarvel.android.ads.z.a(c).get();
                                            if (activity == null || !AdMarvelWebView.f(a))
                                            {
                                                break MISSING_BLOCK_LABEL_214;
                                            }
                                            viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                                            relativelayout = (RelativeLayout)viewgroup.findViewWithTag((new StringBuilder()).append(a.e).append("EXPAND_LAYOUT").toString());
                                            if (relativelayout != null) goto _L2; else goto _L1
_L1:
                                            return;
_L2:
                                            android.widget.FrameLayout.LayoutParams layoutparams;
                                            LinearLayout linearlayout;
                                            layoutparams = (android.widget.FrameLayout.LayoutParams)relativelayout.getLayoutParams();
                                            linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(a.e).append("BTN_CLOSE").toString());
                                            if (linearlayout == null) goto _L1; else goto _L3
_L3:
                                            android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)linearlayout.getLayoutParams();
                                            int j1 = viewgroup.getHeight();
                                            int k1 = viewgroup.getWidth();
                                            float f1 = TypedValue.applyDimension(1, 30F, a.getContext().getResources().getDisplayMetrics());
                                            com.admarvel.android.ads.AdMarvelWebView.a(linearlayout, layoutparams1, AdMarvelWebView.r(a), layoutparams.leftMargin, layoutparams.topMargin, layoutparams.width, layoutparams.height, k1, j1, (int)f1);
                                            com.admarvel.android.ads.z.a(c, b);
                                            return;
                                        }

                                
                                {
                                    c = z.this;
                                    a = AdMarvelWebView.this;
                                    b = i1;
                                    super();
                                }
                                    }, 500L);
                                    return;
                                }
                            }
                        }

                        public z(Activity activity, int i1)
                        {
                            super(activity, i1);
                            c = -1;
                            a = new WeakReference(AdMarvelWebView.this);
                            b = new WeakReference(activity);
                        }
                    }


                    private class m
                        implements Runnable
                    {

                        private final AdMarvelAd a;
                        private final Context b;

                        public void run()
                        {
                            com.admarvel.android.util.a a1 = com.admarvel.android.util.a.b(b);
                            if (a1 != null)
                            {
                                int i1 = a.getAdHistoryCounter();
                                StringBuilder stringbuilder = new StringBuilder();
                                stringbuilder.append("/sse_");
                                stringbuilder.append(i1);
                                stringbuilder.append(".jpg");
                                a1.a(stringbuilder.toString());
                            }
                        }

                        public m(AdMarvelAd admarvelad, Context context)
                        {
                            a = admarvelad;
                            b = context;
                        }
                    }

                }


                private class p
                    implements Runnable
                {

                    private String a;
                    private final WeakReference b;
                    private final AdMarvelAd c;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        for (admarvelwebview = (AdMarvelWebView)b.get(); admarvelwebview == null || a != null && URLUtil.isNetworkUrl(a) && !com.admarvel.android.ads.ab.f(admarvelwebview.getContext());)
                        {
                            return;
                        }

                        com.admarvel.android.ads.AdMarvelInternalWebView.a(admarvelwebview.e, (o)AdMarvelWebView.n(admarvelwebview).get());
                        Intent intent = new Intent(admarvelwebview.getContext(), com/admarvel/android/ads/AdMarvelActivity);
                        intent.addFlags(0x10000000);
                        intent.putExtra("expand_url", a);
                        intent.putExtra("closeBtnEnabled", AdMarvelWebView.u(admarvelwebview));
                        intent.putExtra("closeAreaEnabled", AdMarvelWebView.v(admarvelwebview));
                        if (AdMarvelWebView.w(admarvelwebview))
                        {
                            intent.putExtra("orientationState", AdMarvelWebView.x(admarvelwebview));
                        }
                        intent.putExtra("isInterstitial", false);
                        intent.putExtra("isInterstitialClick", false);
                        intent.putExtra("source", AdMarvelWebView.i(admarvelwebview));
                        intent.putExtra("GUID", admarvelwebview.e);
                        c.removeNonStringEntriesTargetParam();
                        try
                        {
                            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                            objectoutputstream.writeObject(c);
                            objectoutputstream.close();
                            intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
                        }
                        catch (IOException ioexception)
                        {
                            ioexception.printStackTrace();
                        }
                        admarvelwebview.getContext().startActivity(intent);
                        if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
                        {
                            com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a();
                        }
                        (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
                    }

                    public p(String s1, AdMarvelAd admarvelad)
                    {
                        a = null;
                        b = new WeakReference(AdMarvelWebView.this);
                        a = s1;
                        c = admarvelad;
                    }
                }


                private class q
                    implements Runnable
                {

                    private final WeakReference a;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
                        if (admarvelwebview == null)
                        {
                            return;
                        }
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 != null)
                        {
                            try
                            {
                                f1.c();
                                return;
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                        return;
                    }

                    public q()
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                    }
                }


                private class r
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private final String c;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        if ((AdMarvelInternalWebView)a.get() != null)
                        {
                            if ((admarvelwebview = (AdMarvelWebView)b.get()) != null && c != null && c.length() != 0)
                            {
                                if (AdMarvelView.b)
                                {
                                    (new a()).a(c, admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview));
                                    return;
                                } else
                                {
                                    (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).a(c);
                                    return;
                                }
                            }
                        }
                    }

                    public r(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s1)
                    {
                        a = new WeakReference(admarvelinternalwebview);
                        b = new WeakReference(admarvelwebview);
                        c = s1;
                    }
                }


                private class s
                    implements Runnable
                {

                    private final WeakReference a;
                    private final String b;
                    private String c;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
                        if (admarvelinternalwebview != null)
                        {
                            if (!com.admarvel.android.ads.ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && !com.admarvel.android.ads.ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
                            {
                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
                                return;
                            }
                            if (com.admarvel.android.ads.ab.c(admarvelinternalwebview.getContext(), "location"))
                            {
                                Location location = com.admarvel.android.ads.l.a().a(admarvelinternalwebview);
                                if (location != null)
                                {
                                    c = (new StringBuilder()).append(location.getLatitude()).append(",").append(location.getLongitude()).append(",").append(location.getAccuracy()).toString();
                                }
                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
                                return;
                            }
                        }
                    }

                    public s(AdMarvelInternalWebView admarvelinternalwebview, String s1)
                    {
                        c = "null";
                        a = new WeakReference(admarvelinternalwebview);
                        b = s1;
                    }
                }


                private class u
                    implements Runnable
                {

                    private final String a;
                    private final WeakReference b;
                    private final WeakReference c;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview;
                        AdMarvelWebView admarvelwebview;
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        admarvelwebview = (AdMarvelWebView)c.get();
                        if (admarvelwebview == null)
                        {
                            return;
                        }
                        if (admarvelinternalwebview == null) goto _L2; else goto _L1
_L1:
                        String s1 = com.admarvel.android.ads.ab.a(admarvelwebview.getContext());
                        if (com.admarvel.android.ads.ac.a() >= 9) goto _L4; else goto _L3
_L3:
                        int l5 = admarvelwebview.getResources().getConfiguration().orientation;
                        if (l5 != 1) goto _L6; else goto _L5
_L5:
                        char c1 = '\0';
_L19:
                        int i1;
                        String s2;
                        boolean flag;
                        Location location;
                        String s3;
                        StringBuilder stringbuilder;
                        boolean flag1;
                        StringBuilder stringbuilder1;
                        boolean flag2;
                        String s4;
                        AdMarvelView admarvelview;
                        int ai1[];
                        int j1;
                        int k1;
                        int l1;
                        int i2;
                        int j2;
                        int k2;
                        int l2;
                        int i3;
                        int j3;
                        int k3;
                        int l3;
                        int i4;
                        int j4;
                        int k4;
                        int l4;
                        int i5;
                        int j5;
                        String s5;
                        Exception exception2;
                        Activity activity;
                        int k5;
                        Activity activity1;
                        if (s1.equals("wifi") || s1.equals("mobile"))
                        {
                            s2 = "YES";
                        } else
                        {
                            s2 = "NO";
                        }
                        flag = com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "location");
                        location = null;
                        if (!flag)
                        {
                            break MISSING_BLOCK_LABEL_125;
                        }
                        location = com.admarvel.android.ads.l.a().a(admarvelinternalwebview);
                        if (location == null)
                        {
                            break MISSING_BLOCK_LABEL_1241;
                        }
                        s3 = (new StringBuilder()).append("{lat:").append(location.getLatitude()).append(", lon:").append(location.getLongitude()).append(", acc:").append(location.getAccuracy()).append("}").toString();
_L27:
                        stringbuilder = (new StringBuilder()).append("{screen: true, orientation: true, heading: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "compass")).append(", location : ");
                        if (com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") || com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        stringbuilder1 = stringbuilder.append(flag1).append(",shake: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "accelerometer")).append(",tilt: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "accelerometer")).append(", network: true, sms:").append(com.admarvel.android.ads.ab.j(admarvelwebview.getContext())).append(", phone:").append(com.admarvel.android.ads.ab.j(admarvelwebview.getContext())).append(", email:true,calendar:");
                        if (com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.READ_CALENDAR") && com.admarvel.android.ads.ab.d(admarvelwebview.getContext(), "android.permission.WRITE_CALENDAR"))
                        {
                            flag2 = true;
                        } else
                        {
                            flag2 = false;
                        }
                        s4 = stringbuilder1.append(flag2).append(", camera: ").append(com.admarvel.android.ads.ab.c(admarvelwebview.getContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                        admarvelview = (AdMarvelView)admarvelinternalwebview.adMarvelViewReference.get();
                        if (admarvelview == null) goto _L8; else goto _L7
_L7:
                        ai1 = new int[2];
                        admarvelinternalwebview.getLocationOnScreen(ai1);
_L20:
                        if (!(admarvelwebview.getContext() instanceof Activity)) goto _L10; else goto _L9
_L9:
                        activity1 = (Activity)admarvelwebview.getContext();
                        if (activity1 == null) goto _L10; else goto _L11
_L11:
                        if (admarvelwebview.f == 0x80000000 || admarvelwebview.f < 0) goto _L13; else goto _L12
_L12:
                        j1 = admarvelwebview.f;
_L22:
                        k1 = ai1[0];
                        l1 = ai1[1] - j1;
                        i2 = admarvelview.getWidth();
                        j2 = admarvelview.getHeight();
                        admarvelinternalwebview.mInitLayoutX = k1;
                        admarvelinternalwebview.mInitLayoutY = l1;
                        k2 = j2;
                        l2 = i2;
                        i3 = l1;
                        j3 = k1;
_L25:
                        k3 = admarvelwebview.getRootView().getLeft();
                        l3 = admarvelwebview.getRootView().getTop();
                        i4 = admarvelwebview.getRootView().getWidth();
                        j4 = admarvelwebview.getRootView().getHeight();
                        if (!(admarvelwebview.getContext() instanceof Activity)) goto _L15; else goto _L14
_L14:
                        activity = (Activity)admarvelwebview.getContext();
                        if (activity == null) goto _L15; else goto _L16
_L16:
                        s5 = com.admarvel.android.ads.ab.a(activity);
                        ViewGroup viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                        j5 = viewgroup.getLeft();
                        i5 = viewgroup.getTop();
                        l4 = viewgroup.getWidth();
                        k5 = viewgroup.getHeight();
                        k4 = k5;
_L24:
                        String s6 = (new StringBuilder()).append("javascript:").append(a).append("({x:").append(j3).append(",y:").append(i3).append(",width:").append(l2).append(",height:").append(k2).append(",appX:").append(j5).append(",appY:").append(i5).append(",appWidth:").append(l4).append(",appHeight:").append(k4).append(",orientation:").append(c1).append(",networkType:").append("'").append(s1).append("'").append(",network:").append("'").append(s2).append("'").append(",screenWidth:").append(com.admarvel.android.ads.ab.g(admarvelwebview.getContext())).append(",screenHeight:").append(com.admarvel.android.ads.ab.h(admarvelwebview.getContext())).append(",adType:").append("'").append("Banner").append("'").append(",supportedFeatures:").append(s4).append(",sdkVersion:").append("'").append("2.4.5.1").append("'").append(",location:").append(s3).append(",applicationSupportedOrientations:").append("'").append(s5).append("'").append("})").toString();
                        Logging.log((new StringBuilder()).append("Initial Frame Values : ").append(s6).toString());
                        admarvelinternalwebview.loadUrl(s6);
                        return;
                        exception2;
                        break MISSING_BLOCK_LABEL_977;
_L6:
                        if (l5 != 2) goto _L18; else goto _L17
_L17:
                        c1 = 'Z';
                          goto _L19
_L4:
                        i1 = AdMarvelWebView.o(admarvelwebview);
                        if (i1 == 0)
                        {
                            c1 = '\0';
                        } else
                        if (i1 == 1)
                        {
                            c1 = 'Z';
                        } else
                        {
                            if (i1 != 2)
                            {
                                continue; /* Loop/switch isn't completed */
                            }
                            c1 = '\264';
                        }
                          goto _L19
                        exception1;
                        ai1[0] = 0;
                        ai1[1] = 0;
                          goto _L20
                        Exception exception1;
                        try
                        {
                            Logging.log(Log.getStackTraceString(exception2));
                            return;
                        }
                        catch (NullPointerException nullpointerexception)
                        {
                            Logging.log(Log.getStackTraceString(nullpointerexception));
                            return;
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                        }
                        return;
_L13:
                        ViewGroup viewgroup1 = (ViewGroup)activity1.getWindow().findViewById(0x1020002);
                        DisplayMetrics displaymetrics = new DisplayMetrics();
                        activity1.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
                        j1 = displaymetrics.heightPixels - viewgroup1.getMeasuredHeight();
                        if (j1 < 0) goto _L22; else goto _L21
_L21:
                        if (admarvelwebview.f != 0x80000000) goto _L22; else goto _L23
_L23:
                        admarvelwebview.f = j1;
                          goto _L22
_L15:
                        k4 = j4;
                        l4 = i4;
                        i5 = l3;
                        j5 = k3;
                        s5 = "0,90";
                          goto _L24
_L10:
                        j1 = 0;
                          goto _L22
_L8:
                        k2 = 0;
                        l2 = 0;
                        i3 = 0;
                        j3 = 0;
                          goto _L25
_L18:
                        c1 = '\uFFFF';
                          goto _L19
_L2:
                        return;
                        if (i1 != 3) goto _L18; else goto _L26
_L26:
                        c1 = '\uFFA6';
                          goto _L19
                        s3 = "null";
                          goto _L27
                    }

                    public u(String s1, AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview)
                    {
                        a = s1;
                        b = new WeakReference(admarvelinternalwebview);
                        c = new WeakReference(admarvelwebview);
                    }
                }


                private class v
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private String c;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelwebview = (AdMarvelWebView)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelwebview == null || admarvelinternalwebview == null) goto _L2; else goto _L1
_L1:
                        if (c == null) goto _L2; else goto _L3
_L3:
                        if (c.length() <= 0)
                        {
                            return;
                        }
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 != null) goto _L5; else goto _L4
_L4:
                        f f2;
                        f2 = new f(admarvelwebview.getContext(), false, c);
                        f2.setTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        f f3 = f2;
_L6:
                        try
                        {
                            f3.a(AdMarvelWebView.y(admarvelwebview), AdMarvelWebView.z(admarvelwebview), AdMarvelWebView.A(admarvelwebview), AdMarvelWebView.B(admarvelwebview));
                            float f4 = admarvelwebview.getContext().getResources().getDisplayMetrics().density;
                            if (AdMarvelWebView.C(admarvelwebview) > 0)
                            {
                                android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)admarvelwebview.getLayoutParams();
                                layoutparams.height = (int)(f4 * (float)AdMarvelWebView.C(admarvelwebview));
                                admarvelwebview.setLayoutParams(layoutparams);
                            }
                            admarvelwebview.removeAllViews();
                            admarvelwebview.addView(f3);
                            admarvelwebview.addView(admarvelinternalwebview);
                            admarvelinternalwebview.setBackgroundColor(0);
                            admarvelinternalwebview.setBackgroundDrawable(null);
                            admarvelinternalwebview.setLayerType(1, null);
                            f3.a(c, 0);
                            f3.a(admarvelwebview. new f.a(admarvelinternalwebview) {

                                final AdMarvelWebView a;
                                final AdMarvelInternalWebView b;
                                final v c;

                                public void a()
                                {
                                    if (AdMarvelWebView.D(a) != null && AdMarvelWebView.D(a).length() > 0)
                                    {
                                        b.setLayerType(2, null);
                                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(a)).append("()").toString());
                                        b.requestLayout();
                                        b.invalidate();
                                        AdMarvelWebView.d(a).postDelayed(new Runnable(this) {

                                            final _cls1 a;

                                            public void run()
                                            {
                                                a.b.setLayerType(1, null);
                                            }

                            
                            {
                                a = _pcls1;
                                super();
                            }
                                        }, 500L);
                                    }
                                    h h1 = a. new h();
                                    AdMarvelWebView.d(a).post(h1);
                                }

                            
                            {
                                c = v.this;
                                a = AdMarvelWebView.this;
                                b = admarvelinternalwebview;
                                super();
                            }
                            });
                            f3.a(admarvelwebview. new android.media.MediaPlayer.OnPreparedListener(admarvelinternalwebview) {

                                final AdMarvelWebView a;
                                final AdMarvelInternalWebView b;
                                final v c;

                                public void onPrepared(MediaPlayer mediaplayer)
                                {
                                    if (AdMarvelWebView.E(a))
                                    {
                                        mediaplayer.setVolume(0.0F, 0.0F);
                                        AdMarvelWebView.e(a, false);
                                    }
                                    if (AdMarvelWebView.F(a) != null && AdMarvelWebView.F(a).length() > 0)
                                    {
                                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.F(a)).append("()").toString());
                                    }
                                    if (AdMarvelWebView.G(a) != null && AdMarvelWebView.G(a).length() > 0)
                                    {
                                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.G(a)).append("()").toString());
                                    }
                                    if (AdMarvelWebView.H(a) == null)
                                    {
                                        com.admarvel.android.ads.AdMarvelWebView.a(a, a. new al(b));
                                        AdMarvelWebView.d(a).postDelayed(AdMarvelWebView.H(a), 500L);
                                    }
                                }

                            
                            {
                                c = v.this;
                                a = AdMarvelWebView.this;
                                b = admarvelinternalwebview;
                                super();
                            }

                                private class al
                                    implements Runnable
                                {

                                    private final WeakReference a;
                                    private final WeakReference b;

                                    public void run()
                                    {
                                        AdMarvelWebView admarvelwebview;
                                        AdMarvelInternalWebView admarvelinternalwebview;
                                        admarvelwebview = (AdMarvelWebView)a.get();
                                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                                        if (admarvelwebview == null) goto _L2; else goto _L1
_L1:
                                        if (admarvelinternalwebview == null)
                                        {
                                            return;
                                        }
                                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                                        if (admarvelinternalwebview == null || f1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_131;
                                        }
                                        if (AdMarvelWebView.N(admarvelwebview) != null && AdMarvelWebView.N(admarvelwebview).length() > 0)
                                        {
                                            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.N(admarvelwebview)).append("(").append((float)f1.h() / 1000F).append(")").toString());
                                        }
_L3:
                                        try
                                        {
                                            AdMarvelWebView.d(admarvelwebview).postDelayed(AdMarvelWebView.H(admarvelwebview), 500L);
                                            return;
                                        }
                                        catch (Exception exception)
                                        {
                                            Logging.log(Log.getStackTraceString(exception));
                                        }
                                        return;
                                        Exception exception1;
                                        exception1;
                                        exception1.printStackTrace();
                                        if (true) goto _L3; else goto _L2
_L2:
                                    }

                                    public al(AdMarvelInternalWebView admarvelinternalwebview)
                                    {
                                        a = new WeakReference(AdMarvelWebView.this);
                                        b = new WeakReference(admarvelinternalwebview);
                                    }
                                }

                            });
                            f3.a(admarvelwebview. new android.media.MediaPlayer.OnCompletionListener(admarvelinternalwebview) {

                                final AdMarvelWebView a;
                                final AdMarvelInternalWebView b;
                                final v c;

                                public void onCompletion(MediaPlayer mediaplayer)
                                {
                                    if (AdMarvelWebView.I(a) != null && AdMarvelWebView.I(a).length() > 0)
                                    {
                                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.I(a)).append("()").toString());
                                    }
                                }

                            
                            {
                                c = v.this;
                                a = AdMarvelWebView.this;
                                b = admarvelinternalwebview;
                                super();
                            }
                            });
                            f3.a(admarvelwebview. new android.media.MediaPlayer.OnErrorListener(admarvelinternalwebview) {

                                final AdMarvelWebView a;
                                final AdMarvelInternalWebView b;
                                final v c;

                                public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
                                {
                                    if (AdMarvelWebView.D(a) != null && AdMarvelWebView.D(a).length() > 0)
                                    {
                                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(a)).append("()").toString());
                                    }
                                    return false;
                                }

                            
                            {
                                c = v.this;
                                a = AdMarvelWebView.this;
                                b = admarvelinternalwebview;
                                super();
                            }
                            });
                            return;
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                        }
                        return;
_L5:
                        f3 = f1;
                        if (true) goto _L6; else goto _L2
_L2:
                    }

                    public v(String s1, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        c = s1;
                        a = new WeakReference(admarvelwebview);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class w
                {

                    public int a(AdMarvelWebView admarvelwebview)
                    {
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 != null)
                        {
                            return !f1.b(f1.a().toString()) ? 0 : 1;
                        } else
                        {
                            return 0;
                        }
                    }

                    w()
                    {
                    }
                }


                private class x
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private String c;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelwebview = (AdMarvelWebView)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelwebview == null || admarvelinternalwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_102;
                        }
                        if (c == null)
                        {
                            break MISSING_BLOCK_LABEL_102;
                        }
                        if (c.length() <= 0)
                        {
                            return;
                        }
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 != null)
                        {
                            try
                            {
                                f1.e(c);
                                return;
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public x(String s1, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        c = s1;
                        a = new WeakReference(admarvelwebview);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class aa
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;

                    public void run()
                    {
                        f f1;
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        try
                        {
                            admarvelwebview = (AdMarvelWebView)a.get();
                            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_141;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 == null)
                        {
                            break MISSING_BLOCK_LABEL_141;
                        }
                        if (!f1.isPlaying())
                        {
                            break MISSING_BLOCK_LABEL_133;
                        }
                        f1.pause();
_L1:
                        if (AdMarvelWebView.K(admarvelwebview) != null && AdMarvelWebView.K(admarvelwebview).length() > 0)
                        {
                            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.K(admarvelwebview)).append("()").toString());
                            return;
                        }
                        break MISSING_BLOCK_LABEL_141;
                        f1.c();
                          goto _L1
                    }

                    public aa(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class ab
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;

                    public void run()
                    {
                        f f1;
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        try
                        {
                            admarvelwebview = (AdMarvelWebView)a.get();
                            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_159;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 == null)
                        {
                            break MISSING_BLOCK_LABEL_159;
                        }
                        if (f1.getHeight() != 0)
                        {
                            break MISSING_BLOCK_LABEL_151;
                        }
                        AdMarvelWebView.d(admarvelwebview).postDelayed(new Runnable(f1, admarvelwebview, admarvelinternalwebview) {

                            final f a;
                            final AdMarvelWebView b;
                            final AdMarvelInternalWebView c;
                            final ab d;

                            public void run()
                            {
                                if (a.getHeight() == 0 && AdMarvelWebView.D(b) != null && AdMarvelWebView.D(b).length() > 0)
                                {
                                    c.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(b)).append("()").toString());
                                    return;
                                } else
                                {
                                    a.f();
                                    return;
                                }
                            }

                            
                            {
                                d = ab.this;
                                a = f1;
                                b = admarvelwebview;
                                c = admarvelinternalwebview;
                                super();
                            }
                        }, 500L);
_L1:
                        if (AdMarvelWebView.J(admarvelwebview) != null && AdMarvelWebView.J(admarvelwebview).length() > 0)
                        {
                            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.J(admarvelwebview)).append("()").toString());
                            return;
                        }
                        break MISSING_BLOCK_LABEL_159;
                        f1.f();
                          goto _L1
                    }

                    public ab(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class ae
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelwebview = (AdMarvelWebView)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_132;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 != null)
                        {
                            try
                            {
                                if (!f1.isPlaying())
                                {
                                    f1.g();
                                    if (AdMarvelWebView.L(admarvelwebview) != null && AdMarvelWebView.L(admarvelwebview).length() > 0)
                                    {
                                        admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.L(admarvelwebview)).append("()").toString());
                                        return;
                                    }
                                }
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public ae(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class af
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private float c;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelwebview = (AdMarvelWebView)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_89;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 != null)
                        {
                            try
                            {
                                f1.seekTo((int)(1000F * c));
                                return;
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public af(AdMarvelInternalWebView admarvelinternalwebview, float f1)
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                        b = new WeakReference(admarvelinternalwebview);
                        c = f1;
                    }
                }


                private class ac
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private int c;
                    private int d;
                    private int e;
                    private int f;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelwebview = (AdMarvelWebView)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelwebview == null) goto _L2; else goto _L1
_L1:
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        if (admarvelwebview == null) goto _L4; else goto _L3
_L3:
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
_L5:
                        if (f1 != null)
                        {
                            try
                            {
                                f1.a(e, f, c, d);
                                f1.i();
                                return;
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                            return;
                        }
                        break; /* Loop/switch isn't completed */
_L4:
                        f1 = null;
                        if (true) goto _L5; else goto _L2
_L2:
                    }

                    public ac(AdMarvelInternalWebView admarvelinternalwebview, int i1, int j1, int k1, int l1)
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                        b = new WeakReference(admarvelinternalwebview);
                        c = i1;
                        d = j1;
                        e = k1;
                        f = l1;
                    }
                }


                private class ag
                    implements Runnable
                {

                    private final WeakReference a;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
                        if (admarvelwebview == null)
                        {
                            return;
                        } else
                        {
                            admarvelwebview.setBackgroundColor(admarvelwebview.b);
                            return;
                        }
                    }

                    public ag()
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                    }
                }


                private class ao
                    implements Runnable
                {

                    private final WeakReference a;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        } else
                        {
                            admarvelinternalwebview.setLayerType(1, null);
                            return;
                        }
                    }

                    public ao(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class ai
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelwebview = (AdMarvelWebView)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelwebview == null)
                        {
                            break MISSING_BLOCK_LABEL_132;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 != null)
                        {
                            try
                            {
                                if (f1.isPlaying())
                                {
                                    f1.c();
                                    if (AdMarvelWebView.M(admarvelwebview) != null && AdMarvelWebView.M(admarvelwebview).length() > 0)
                                    {
                                        admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.M(admarvelwebview)).append("()").toString());
                                        return;
                                    }
                                }
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public ai(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class am
                    implements Runnable
                {

                    private final WeakReference a;
                    private String b;

                    public void run()
                    {
                        f f1;
                        AdMarvelWebView admarvelwebview;
                        try
                        {
                            admarvelwebview = (AdMarvelWebView)a.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelwebview == null)
                        {
                            return;
                        }
                        f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
                        if (f1 == null)
                        {
                            break MISSING_BLOCK_LABEL_112;
                        }
                        if (b == null || b.trim().length() <= 0)
                        {
                            break MISSING_BLOCK_LABEL_112;
                        }
                        if (b.equalsIgnoreCase("mute"))
                        {
                            f1.d();
                            return;
                        }
                        if (b.equalsIgnoreCase("unmute"))
                        {
                            f1.e();
                        }
                    }

                    public am(String s1)
                    {
                        a = new WeakReference(AdMarvelWebView.this);
                        b = s1;
                    }
                }


                private class an
                    implements Runnable
                {

                    private final WeakReference a;
                    private String b;

                    public void run()
                    {
                        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
                        AdMarvelInternalWebView admarvelinternalwebview;
                        if (admarvelwebview != null)
                        {
                            if ((admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString())) != null)
                            {
                                int i1 = admarvelinternalwebview.getVisibility();
                                if (b.equals("show") && i1 != 0)
                                {
                                    admarvelinternalwebview.setVisibility(0);
                                }
                                if (b.equals("hide") && i1 == 0)
                                {
                                    admarvelinternalwebview.setVisibility(4);
                                    return;
                                }
                            }
                        }
                    }

                    public an(String s1, AdMarvelWebView admarvelwebview)
                    {
                        b = null;
                        b = s1;
                        a = new WeakReference(admarvelwebview);
                    }
                }

            }


            private class b extends WebViewClient
            {

                final AdMarvelWebView a;

                public void onLoadResource(WebView webview, String s1)
                {
                    Logging.log((new StringBuilder()).append("Load Ad : onLoadResource URL - ").append(s1).toString());
                    super.onLoadResource(webview, s1);
                }

                public void onPageFinished(WebView webview, String s1)
                {
                    super.onPageFinished(webview, s1);
                    com.admarvel.android.ads.AdMarvelWebView.a(a, true);
                    Logging.log("Load Ad: onPageFinished");
                    if (AdMarvelUtils.isLogDumpEnabled())
                    {
                        webview.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
                    }
                    if (!AdMarvelWebView.m(a).get() && AdMarvelWebView.k(a).compareAndSet(true, false))
                    {
                        if (com.admarvel.android.ads.AdMarvelWebView.a(a.e) != null)
                        {
                            com.admarvel.android.ads.AdMarvelInternalWebView.a(a.e, (g)AdMarvelWebView.n(a).get());
                            com.admarvel.android.ads.AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a));
                        } else
                        {
                            Logging.log("Load Ad: onPageFinished - No listener found");
                        }
                    }
                    AdMarvelWebView.l(a).set(true);
                }

                public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
                {
                    super.onPageStarted(webview, s1, bitmap);
                    Logging.log("Load Ad: onPageStarted");
                    AdMarvelWebView.l(a).set(false);
                    if (com.admarvel.android.ads.ac.a() > 18)
                    {
                        Logging.log((new StringBuilder()).append(" adding onpagefinsihed callback reciever with delay of 5 sec").append(u.b).toString());
                        AdMarvelWebView.d(a).postDelayed(a. new y(s1), u.b);
                    }
                }

                public void onReceivedError(WebView webview, int i1, String s1, String s2)
                {
                    AdMarvelInternalWebView.b(a.e);
                    Logging.log((new StringBuilder()).append("Load Ad: onReceivedError - Failing Url ").append(s2).toString());
                    super.onReceivedError(webview, i1, s1, s2);
                    if (AdMarvelWebView.k(a).compareAndSet(true, false) && com.admarvel.android.ads.AdMarvelWebView.a(a.e) != null)
                    {
                        com.admarvel.android.ads.AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a), 305, com.admarvel.android.ads.ab.a(305));
                    }
                }

                public WebResourceResponse shouldInterceptRequest(WebView webview, String s1)
                {
                    int i1;
                    i1 = 0;
                    Logging.log((new StringBuilder()).append("Load Ad : shouldInterceptRequest URL - ").append(s1).toString());
                    if (!s1.equals("http://baseurl.admarvel.com/mraid.js")) goto _L2; else goto _L1
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
                        break MISSING_BLOCK_LABEL_296;
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
                    if (l1 <= 0) goto _L8; else goto _L7
_L7:
                    byte abyte1[] = new byte[l1];
                    int j2 = 0;
_L10:
                    if (j2 >= arraylist.size())
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    e e2 = (e)arraylist.get(j2);
                    System.arraycopy(e2.a, 0, abyte1, i1, e2.b);
                    i1 += e2.b;
                    j2++;
                    if (true) goto _L10; else goto _L9
_L9:
                    String s2 = new String(abyte1);
_L12:
                    return new WebResourceResponse("text/css", "UTF-8", new ByteArrayInputStream(s2.getBytes()));
_L4:
                    WebResourceResponse webresourceresponse = super.shouldInterceptRequest(webview, s1);
                    return webresourceresponse;
_L2:
                    return super.shouldInterceptRequest(webview, s1);
_L8:
                    s2 = "";
                    if (true) goto _L12; else goto _L11
_L11:
                }

                public boolean shouldOverrideUrlLoading(WebView webview, String s1)
                {
                    Logging.log((new StringBuilder()).append("Load Ad : shouldOverrideUrlLoading URL - ").append(s1).toString());
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
                    if (admarvelinternalwebview == null && AdMarvelWebView.f(a))
                    {
                        Context context = a.getContext();
                        if (context != null && (context instanceof Activity))
                        {
                            admarvelinternalwebview = (AdMarvelInternalWebView)((ViewGroup)((Activity)context).getWindow().findViewById(0x1020002)).findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
                        }
                    }
                    if (admarvelinternalwebview != null && admarvelinternalwebview.isSignalShutdown())
                    {
                        return false;
                    }
                    if (com.admarvel.android.ads.ab.d(s1))
                    {
                        return true;
                    }
                    if (AdMarvelWebView.g(a))
                    {
                        if (admarvelinternalwebview != null && !admarvelinternalwebview.b() && (s1 == null || s1.length() <= 0 || !s1.startsWith("admarvelsdk") && !s1.startsWith("admarvelinternal")))
                        {
                            return true;
                        }
                        if (com.admarvel.android.ads.ab.b(a.getContext(), s1))
                        {
                            (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                            return true;
                        }
                        if (s1 != null && com.admarvel.android.ads.ab.a(s1, "admarvelsdk") != ab.f.c)
                        {
                            if (com.admarvel.android.ads.AdMarvelWebView.a(a.e) != null)
                            {
                                com.admarvel.android.ads.AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), com.admarvel.android.ads.ab.a(s1, "admarvelsdk", "", com.admarvel.android.ads.ab.a(s1, "admarvelsdk"), a.getContext()));
                            }
                            (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                            return true;
                        }
                        if (s1 != null && com.admarvel.android.ads.ab.a(s1, "admarvelinternal") != ab.f.c)
                        {
                            if (com.admarvel.android.ads.AdMarvelWebView.a(a.e) != null)
                            {
                                com.admarvel.android.ads.AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), com.admarvel.android.ads.ab.a(s1, "admarvelinternal", "", com.admarvel.android.ads.ab.a(s1, "admarvelinternal"), a.getContext()));
                            }
                            (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                            return true;
                        }
                        if (s1 != null && com.admarvel.android.ads.ab.a(s1, "admarvelvideo") != ab.f.c)
                        {
                            String s2 = com.admarvel.android.ads.ab.a(s1, "admarvelvideo", "http://", com.admarvel.android.ads.ab.a(s1, "admarvelvideo"), a.getContext());
                            Intent intent2 = new Intent("android.intent.action.VIEW");
                            intent2.addFlags(0x10000000);
                            intent2.setDataAndType(Uri.parse(s2), "video/*");
                            if (com.admarvel.android.ads.ab.a(a.getContext(), intent2))
                            {
                                a.getContext().startActivity(intent2);
                            }
                            (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                            return true;
                        }
                        if (s1 != null && com.admarvel.android.ads.ab.a(s1, "admarvelexternal") != ab.f.c)
                        {
                            Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(com.admarvel.android.ads.ab.a(s1, "admarvelexternal", "", com.admarvel.android.ads.ab.a(s1, "admarvelexternal"), a.getContext())));
                            intent1.addFlags(0x10000000);
                            if (com.admarvel.android.ads.ab.a(a.getContext(), intent1))
                            {
                                a.getContext().startActivity(intent1);
                            }
                            (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                            return true;
                        }
                        if (s1 != null && com.admarvel.android.ads.ab.a(s1, "admarvelcustomvideo") != ab.f.c)
                        {
                            Intent intent = new Intent(a.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
                            intent.addFlags(0x10000000);
                            AdMarvelWebView.c(a).removeNonStringEntriesTargetParam();
                            try
                            {
                                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                                ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                                objectoutputstream.writeObject(AdMarvelWebView.c(a));
                                objectoutputstream.close();
                                intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
                            }
                            catch (IOException ioexception)
                            {
                                ioexception.printStackTrace();
                            }
                            intent.putExtra("url", s1);
                            intent.putExtra("isCustomUrl", true);
                            intent.putExtra("xml", AdMarvelWebView.h(a));
                            intent.putExtra("source", AdMarvelWebView.i(a));
                            intent.putExtra("GUID", a.e);
                            a.getContext().startActivity(intent);
                            (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                            return true;
                        }
                    }
                    if (AdMarvelWebView.j(a).get() || admarvelinternalwebview != null && admarvelinternalwebview.b())
                    {
                        com.admarvel.android.ads.AdMarvelWebView.a(a, s1);
                    }
                    return true;
                }

                b()
                {
                    a = AdMarvelWebView.this;
                    super();
                }

                private class y
                    implements Runnable
                {

                    final AdMarvelWebView a;
                    private final String b;

                    public void run()
                    {
                        if (!AdMarvelWebView.T(a))
                        {
                            Logging.log((new StringBuilder()).append("onPagFinished is not  called after delay").append(u.b).toString());
                            AdMarvelWebView.n(a, b);
                        }
                    }

                    public y(String s1)
                    {
                        a = AdMarvelWebView.this;
                        super();
                        b = s1;
                    }
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

        });
        if (com.admarvel.android.ads.ac.a() < 11)
        {
            break MISSING_BLOCK_LABEL_1495;
        }
        com.admarvel.android.ads.ak.a(Q);
_L28:
        r.set(true);
        return;
        Exception exception;
        exception;
        Logging.log(Log.getStackTraceString(exception));
        if (a(e) == null) goto _L14; else goto _L13
_L13:
        a(e).a(this, S, 305, com.admarvel.android.ads.ab.a(305));
        return;
_L12:
        k5 = com.admarvel.android.ads.ab.h(getContext());
          goto _L15
_L10:
        float f2;
        float f3;
        f2 = S.getImageWidth();
        f3 = S.getImageHeight();
        if (com.admarvel.android.ads.ac.a() < 19) goto _L17; else goto _L16
_L16:
        int l5;
        if (com.admarvel.android.ads.ab.g(getContext()) >= com.admarvel.android.ads.ab.h(getContext()))
        {
            break MISSING_BLOCK_LABEL_736;
        }
        l5 = com.admarvel.android.ads.ab.g(getContext());
_L20:
        float f4;
        f4 = (float)l5 / com.admarvel.android.ads.ab.i(getContext());
        Logging.log((new StringBuilder()).append("Device Relative Screen Width :").append(f4).toString());
        if (f2 <= f4) goto _L17; else goto _L18
_L18:
        float f5;
        f5 = f4 / f2;
        Logging.log((new StringBuilder()).append("Device Image Ad Scaling factpr :").append(f5).toString());
        f2 *= f5;
        f3 *= f5;
_L17:
        String s11 = (new StringBuilder()).append("<a href=\"").append(S.getClickURL()).append("\"><img src=\"").append(S.getImageURL()).append("\" width=\"").append(f2).append("\" height=\"").append(f3).append("\" /></a>").toString();
        String s12 = i;
        Object aobj7[] = new Object[2];
        aobj7[0] = (new StringBuilder()).append(g).append(l).toString();
        aobj7[1] = s11;
        n = String.format(s12, aobj7);
          goto _L19
        l5 = com.admarvel.android.ads.ab.h(getContext());
          goto _L20
_L8:
        if (com.admarvel.android.ads.ab.d(getContext()) != 2) goto _L22; else goto _L21
_L21:
        int j4 = com.admarvel.android.ads.ab.h(getContext());
_L25:
        if (com.admarvel.android.ads.ab.d(getContext()) != 1) goto _L24; else goto _L23
_L23:
        int k4 = com.admarvel.android.ads.ab.h(getContext());
_L26:
        int l4;
        int i5;
        if (!s)
        {
            break MISSING_BLOCK_LABEL_1013;
        }
        l4 = (int)((float)S.getImageWidth() * com.admarvel.android.ads.ab.a(getContext(), j4, S.getImageWidth()));
        i5 = (int)((float)S.getImageHeight() * com.admarvel.android.ads.ab.a(getContext(), j4, S.getImageWidth()));
_L27:
        int j5 = Math.min(i5, k4);
        String s7 = (new StringBuilder()).append("<a href=\"").append(S.getClickURL()).append("\"><img src=\"").append(S.getImageURL()).append("\" width=\"").append(l4).append("\" height=\"").append(j5).append("\" /></a>").toString();
        String s8 = i;
        Object aobj5[] = new Object[2];
        aobj5[0] = (new StringBuilder()).append(g).append(l).toString();
        aobj5[1] = s7;
        n = String.format(s8, aobj5);
          goto _L19
_L22:
        j4 = com.admarvel.android.ads.ab.g(getContext());
          goto _L25
_L24:
        k4 = com.admarvel.android.ads.ab.g(getContext());
          goto _L26
        l4 = S.getImageWidth();
        i5 = S.getImageHeight();
          goto _L27
_L6:
        String s6 = i;
        Object aobj4[] = new Object[2];
        aobj4[0] = (new StringBuilder()).append(g).append(l).toString();
        aobj4[1] = S.getXhtml();
        n = String.format(s6, aobj4);
          goto _L19
_L4:
        if (!S.getAdType().equals(AdMarvelAd.AdType.TEXT) || S.getText() == null || S.getText().length() <= 0)
        {
            break MISSING_BLOCK_LABEL_1374;
        }
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        i2 = 0xff & i1 >> 16;
        j2 = 0xff & i1 >> 8;
        k2 = i1 & 0xff;
        l2 = 0xff & k1 >> 16;
        i3 = 0xff & k1 >> 8;
        j3 = k1 & 0xff;
        k3 = 0xff & j1 >> 16;
        l3 = 0xff & j1 >> 8;
        i4 = j1 & 0xff;
        String s3 = j;
        Object aobj2[] = new Object[9];
        aobj2[0] = Integer.valueOf(i2);
        aobj2[1] = Integer.valueOf(j2);
        aobj2[2] = Integer.valueOf(k2);
        aobj2[3] = Integer.valueOf(l2);
        aobj2[4] = Integer.valueOf(i3);
        aobj2[5] = Integer.valueOf(j3);
        aobj2[6] = Integer.valueOf(k3);
        aobj2[7] = Integer.valueOf(l3);
        aobj2[8] = Integer.valueOf(i4);
        String s4 = String.format(s3, aobj2);
        String s5 = k;
        Object aobj3[] = new Object[3];
        aobj3[0] = s4;
        aobj3[1] = S.getClickURL();
        aobj3[2] = S.getText();
        n = String.format(s5, aobj3);
          goto _L19
label0:
        {
            if (!S.getXhtml().contains("ORMMA_API"))
            {
                break label0;
            }
            String s2 = i;
            Object aobj1[] = new Object[2];
            aobj1[0] = h;
            aobj1[1] = S.getXHTML();
            n = String.format(s2, aobj1);
        }
          goto _L19
        String s1 = i;
        Object aobj[] = new Object[2];
        aobj[0] = g;
        aobj[1] = (new StringBuilder()).append(S.getXHTML()).append(com.admarvel.android.ads.ab.a).toString();
        n = String.format(s1, aobj);
          goto _L19
        com.admarvel.android.ads.al.a(Q);
          goto _L28
    }

    void b()
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
        if (admarvelinternalwebview == null && O)
        {
            Context context = getContext();
            if (context != null && (context instanceof Activity))
            {
                admarvelinternalwebview = (AdMarvelInternalWebView)((ViewGroup)((Activity)context).getWindow().findViewById(0x1020002)).findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
            }
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        admarvelinternalwebview.f();
        if (admarvelinternalwebview instanceof AdMarvelInternalWebView)
        {
            admarvelinternalwebview.a(this);
        }
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            com.admarvel.android.ads.ak.a(admarvelinternalwebview);
            return;
        } else
        {
            com.admarvel.android.ads.al.a(admarvelinternalwebview);
            return;
        }
    }

    void c()
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
        if (admarvelinternalwebview == null && O)
        {
            Context context = getContext();
            if (context != null && (context instanceof Activity))
            {
                admarvelinternalwebview = (AdMarvelInternalWebView)((ViewGroup)((Activity)context).getWindow().findViewById(0x1020002)).findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
            }
        }
        AdMarvelInternalWebView.b(e);
        com.admarvel.android.ads.AdMarvelInternalWebView.a(e);
        b(e);
        if (admarvelinternalwebview != null)
        {
            if (com.admarvel.android.ads.ac.a() >= 14)
            {
                h h1 = new h();
                I.post(h1);
            }
            if (com.admarvel.android.ads.ac.a() >= 15)
            {
                admarvelinternalwebview.setWebChromeClient(null);
            }
            admarvelinternalwebview.setWebViewClient(null);
            admarvelinternalwebview.a();
            if (R != null)
            {
                R.clear();
            }
            S = null;
            if (K != null)
            {
                K.b();
                K = null;
                J = null;
            }
        }
    }

    void d()
    {
        int i1 = 0;
        Context context;
        if (z != null)
        {
            z.disable();
        }
        context = getContext();
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        Activity activity = (Activity)context;
_L14:
        if (!N || !P || A || activity == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        activity.setRequestedOrientation(L);
        N = false;
        if (!a.compareAndSet(true, false) || activity == null) goto _L4; else goto _L3
_L3:
        ViewGroup viewgroup;
        AdMarvelInternalWebView admarvelinternalwebview;
        FrameLayout framelayout;
        RelativeLayout relativelayout;
        FrameLayout framelayout1;
        int j1;
        LinearLayout linearlayout;
        try
        {
            viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
            admarvelinternalwebview = (AdMarvelInternalWebView)viewgroup.findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (admarvelinternalwebview == null)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        admarvelinternalwebview.isAdClosing = true;
        framelayout = (FrameLayout)viewgroup.findViewWithTag((new StringBuilder()).append(e).append("EXPAND_BG").toString());
        relativelayout = (RelativeLayout)viewgroup.findViewWithTag((new StringBuilder()).append(e).append("EXPAND_LAYOUT").toString());
        if (!u)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(e).append("BTN_CLOSE").toString());
        if (linearlayout == null)
        {
            break MISSING_BLOCK_LABEL_269;
        }
        relativelayout.removeView(linearlayout);
        u = false;
        if (framelayout == null || admarvelinternalwebview == null) goto _L6; else goto _L5
_L5:
        framelayout1 = (FrameLayout)findViewWithTag((new StringBuilder()).append(e).append("EXPAND_PLACE_HOLDER").toString());
        j1 = getChildCount();
_L12:
        if (i1 >= j1) goto _L8; else goto _L7
_L7:
        if (getChildAt(i1) != framelayout1) goto _L9; else goto _L8
_L8:
        relativelayout.removeView(admarvelinternalwebview);
        framelayout.removeView(relativelayout);
        viewgroup.removeView(framelayout);
        viewgroup.invalidate();
        viewgroup.requestLayout();
        removeAllViews();
        addView(admarvelinternalwebview, i1);
        removeView(framelayout1);
        admarvelinternalwebview.h();
        O = false;
        C = false;
_L6:
        invalidate();
        requestLayout();
        if (a(e) != null)
        {
            a(e).b();
        }
        if (admarvelinternalwebview == null) goto _L4; else goto _L10
_L10:
        if (c != null)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(c).append("()").toString());
        }
        admarvelinternalwebview.isAdClosing = false;
_L4:
        return;
_L9:
        i1++;
        if (true) goto _L12; else goto _L11
_L11:
_L2:
        activity = null;
        if (true) goto _L14; else goto _L13
_L13:
    }

    void e()
    {
        View view = findViewWithTag((new StringBuilder()).append(e).append("INTERNAL").toString());
        if (view != null && (view instanceof AdMarvelInternalWebView) && !view.hasFocus())
        {
            view.requestFocus();
        }
    }

    public AdMarvelAd getAdMarvelAd()
    {
        return S;
    }

    public void setEnableClickRedirect(boolean flag)
    {
        q = flag;
    }


    private class d
        implements g, o
    {

        private final WeakReference a;

        public void a()
        {
            AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
            AdMarvelInternalWebView admarvelinternalwebview;
            if (admarvelwebview != null)
            {
                if ((admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString())) != null)
                {
                    AdMarvelWebView.f(admarvelwebview, false);
                    AdMarvelWebView.g(admarvelwebview, false);
                    if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
                    {
                        com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).b();
                    }
                    if (admarvelwebview.c != null)
                    {
                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(admarvelwebview.c).append("()").toString());
                        return;
                    }
                }
            }
        }

        public void a(String s1)
        {
            AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
            AdMarvelInternalWebView admarvelinternalwebview;
            if (admarvelwebview != null)
            {
                if ((admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(s1).append("INTERNAL").toString())) != null && admarvelinternalwebview.mInAppBrowserCloseCallback != null && admarvelinternalwebview.mInAppBrowserCloseCallback.length() > 0)
                {
                    admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(admarvelinternalwebview.mInAppBrowserCloseCallback).append("()").toString());
                    return;
                }
            }
        }

        public void b()
        {
            a.clear();
        }

        public d()
        {
            a = new WeakReference(AdMarvelWebView.this);
        }
    }


    private class ad
        implements Runnable
    {

        private String a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public void run()
        {
            AdMarvelWebView admarvelwebview;
            Context context;
            try
            {
                admarvelwebview = (AdMarvelWebView)b.get();
            }
            catch (Exception exception)
            {
                Logging.log((new StringBuilder()).append(exception.getMessage()).append(" Exception in RedirectRunnable ").toString());
                return;
            }
            if (admarvelwebview == null)
            {
                return;
            }
            if (!AdMarvelWebView.g(admarvelwebview)) goto _L2; else goto _L1
_L1:
            context = admarvelwebview.getContext();
            if (!AdMarvelView.b || com.admarvel.android.ads.ab.e(a)) goto _L4; else goto _L3
_L3:
            if (!URLUtil.isNetworkUrl(a) || !com.admarvel.android.ads.ab.b(context, a)) goto _L6; else goto _L5
_L5:
            if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
            {
                com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a(c, a);
                return;
            }
              goto _L7
_L6:
            String s2 = admarvelwebview.getAdMarvelAd().getOfflinekeyUrl();
            if (!com.admarvel.android.ads.ab.b(context, (new StringBuilder()).append(s2.substring(0, s2.lastIndexOf("/"))).append("/").append(a).toString())) goto _L9; else goto _L8
_L8:
            if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
            {
                com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a(c, a);
                return;
            }
              goto _L7
_L4:
            if (com.admarvel.android.ads.ab.e(a) || !com.admarvel.android.ads.ab.b(admarvelwebview.getContext(), a)) goto _L9; else goto _L10
_L10:
            (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
            if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
            {
                com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a(c, a);
                return;
            }
              goto _L7
_L9:
            if (a != null && com.admarvel.android.ads.ab.a(a, "admarvelsdk") != ab.f.c)
            {
                if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
                {
                    com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a(c, com.admarvel.android.ads.ab.a(a, "admarvelsdk", "", com.admarvel.android.ads.ab.a(a, "admarvelsdk"), admarvelwebview.getContext()));
                }
                (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
                return;
            }
            if (a != null && com.admarvel.android.ads.ab.a(a, "admarvelinternal") != ab.f.c)
            {
                if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
                {
                    com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a(c, com.admarvel.android.ads.ab.a(a, "admarvelinternal", "", com.admarvel.android.ads.ab.a(a, "admarvelinternal"), admarvelwebview.getContext()));
                }
                (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
                return;
            }
            if (!com.admarvel.android.ads.ab.f(context) || a == null || com.admarvel.android.ads.ab.a(a, "admarvelvideo") == ab.f.c) goto _L12; else goto _L11
_L11:
            String s1 = com.admarvel.android.ads.ab.a(a, "admarvelvideo", "http://", com.admarvel.android.ads.ab.a(a, "admarvelvideo"), admarvelwebview.getContext());
            Intent intent3 = new Intent("android.intent.action.VIEW");
            intent3.addFlags(0x10000000);
            intent3.setDataAndType(Uri.parse(s1), "video/*");
            if (com.admarvel.android.ads.ab.a(admarvelwebview.getContext(), intent3))
            {
                admarvelwebview.getContext().startActivity(intent3);
            }
            (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
_L2:
            if (com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e) != null)
            {
                com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e).a(c, a);
                return;
            }
              goto _L7
_L12:
            if (com.admarvel.android.ads.ab.f(context) && a != null && com.admarvel.android.ads.ab.a(a, "admarvelexternal") != ab.f.c)
            {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(com.admarvel.android.ads.ab.a(a, "admarvelexternal", "", com.admarvel.android.ads.ab.a(a, "admarvelexternal"), admarvelwebview.getContext())));
                intent2.addFlags(0x10000000);
                if (com.admarvel.android.ads.ab.a(admarvelwebview.getContext(), intent2))
                {
                    admarvelwebview.getContext().startActivity(intent2);
                }
                (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
                continue; /* Loop/switch isn't completed */
            }
            Intent intent1;
            if (!com.admarvel.android.ads.ab.f(context) || a == null || com.admarvel.android.ads.ab.a(a, "admarvelcustomvideo") == ab.f.c)
            {
                break MISSING_BLOCK_LABEL_964;
            }
            intent1 = new Intent(admarvelwebview.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
            intent1.addFlags(0x10000000);
            c.removeNonStringEntriesTargetParam();
            ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream1 = new ObjectOutputStream(bytearrayoutputstream1);
            objectoutputstream1.writeObject(c);
            objectoutputstream1.close();
            intent1.putExtra("serialized_admarvelad", bytearrayoutputstream1.toByteArray());
_L13:
            intent1.putExtra("url", a);
            intent1.putExtra("isCustomUrl", true);
            intent1.putExtra("xml", AdMarvelWebView.h(admarvelwebview));
            intent1.putExtra("source", AdMarvelWebView.i(admarvelwebview));
            intent1.putExtra("GUID", admarvelwebview.e);
            admarvelwebview.getContext().startActivity(intent1);
            (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
            continue; /* Loop/switch isn't completed */
            IOException ioexception1;
            ioexception1;
            ioexception1.printStackTrace();
              goto _L13
            Intent intent;
            if (!com.admarvel.android.ads.ab.f(context) || a == null || a.length() <= 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            intent = new Intent(admarvelwebview.getContext(), com/admarvel/android/ads/AdMarvelActivity);
            intent.addFlags(0x10000000);
            intent.putExtra("url", a);
            intent.putExtra("isInterstitial", false);
            intent.putExtra("isInterstitialClick", false);
            intent.putExtra("xml", AdMarvelWebView.h(admarvelwebview));
            intent.putExtra("source", AdMarvelWebView.i(admarvelwebview));
            intent.putExtra("GUID", admarvelwebview.e);
            c.removeNonStringEntriesTargetParam();
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(c);
            objectoutputstream.close();
            intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
_L14:
            admarvelwebview.getContext().startActivity(intent);
            (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
            continue; /* Loop/switch isn't completed */
            IOException ioexception;
            ioexception;
            ioexception.printStackTrace();
            if (true) goto _L14; else goto _L7
_L7:
            return;
            if (true) goto _L2; else goto _L15
_L15:
        }

        public ad(String s1, AdMarvelWebView admarvelwebview, AdMarvelAd admarvelad)
        {
            a = s1;
            b = new WeakReference(admarvelwebview);
            c = admarvelad;
        }
    }

}
