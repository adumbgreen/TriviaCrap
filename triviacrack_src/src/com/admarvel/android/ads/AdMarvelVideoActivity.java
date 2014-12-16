// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import com.admarvel.android.util.Logging;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

// Referenced classes of package com.admarvel.android.ads:
//            ab, AdMarvelXMLElement, ac, ad, 
//            p, AdMarvelXMLReader, y, AdMarvelInterstitialAds, 
//            i, AdMarvelAd, c, AdMarvelAnalyticsAdapter

public class AdMarvelVideoActivity extends Activity
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener, p.a
{

    static int a = 0x19414;
    static int b = 0x1e0f4;
    static int c = 23232;
    private static Activity l;
    private boolean A;
    private boolean B;
    private boolean C;
    private RelativeLayout D;
    private long E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private String J;
    private ImageView K;
    private p L;
    private WeakReference M;
    private Handler N;
    private ab O;
    private String P;
    private Map Q;
    private List R;
    private List S;
    private TextView T;
    private LinearLayout U;
    private i V;
    private i W;
    private i X;
    private i Y;
    private i Z;
    private long aa;
    private boolean ab;
    private BroadcastReceiver ac;
    private int ad;
    private Runnable ae;
    private Runnable af;
    private Runnable ag;
    private Runnable ah;
    private Runnable ai;
    private android.view.View.OnTouchListener aj;
    private android.view.View.OnTouchListener ak;
    public boolean d;
    AdMarvelXMLReader e;
    AdMarvelXMLElement f;
    LinearLayout g;
    WeakReference h;
    public k i;
    public m j;
    public int k;
    private WeakReference m;
    private AdMarvelAd n;
    private RelativeLayout o;
    private String p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private int w;
    private String x;
    private String y;
    private boolean z;

    public AdMarvelVideoActivity()
    {
        q = false;
        s = false;
        t = false;
        u = true;
        v = false;
        w = -1;
        z = false;
        A = false;
        B = false;
        C = false;
        D = null;
        F = false;
        G = false;
        H = false;
        I = false;
        d = false;
        j = m.c;
        T = null;
        U = null;
        k = -1;
        ab = false;
        ad = 0;
        ae = new Runnable() {

            final AdMarvelVideoActivity a;

            public void run()
            {
                if (AdMarvelVideoActivity.a(a) != null && !AdMarvelVideoActivity.b(a))
                {
                    int i1;
                    if (AdMarvelVideoActivity.a(a).getCurrentPosition() == 0)
                    {
                        i1 = AdMarvelVideoActivity.a(a).f();
                    } else
                    {
                        i1 = AdMarvelVideoActivity.a(a).getCurrentPosition();
                    }
                    AdMarvelVideoActivity.a(a, a.k - AdMarvelVideoActivity.a(a, i1), AdMarvelVideoActivity.c(a));
                    AdMarvelVideoActivity.a(a, AdMarvelVideoActivity.a(a, AdMarvelVideoActivity.a(a).getCurrentPosition()));
                    if (!AdMarvelVideoActivity.d(a))
                    {
                        a.g();
                        AdMarvelVideoActivity.a(a, true);
                        return;
                    }
                }
            }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }
        };
        af = new Runnable() {

            final AdMarvelVideoActivity a;

            public void run()
            {
                if (AdMarvelVideoActivity.f(a) == null) goto _L2; else goto _L1
_L1:
                ad ad1 = (ad)AdMarvelVideoActivity.f(a).get();
                if (ad1 == null) goto _L2; else goto _L3
_L3:
                if (!(ad1 instanceof LinearLayout)) goto _L2; else goto _L4
_L4:
                if (ad1 == null) goto _L6; else goto _L5
_L5:
                if (!AdMarvelVideoActivity.g(a)) goto _L6; else goto _L7
_L7:
                int i1 = 0;
_L12:
                if (i1 >= ad1.getChildCount()) goto _L6; else goto _L8
_L8:
                if (!(ad1.getChildAt(i1) instanceof ad.d)) goto _L10; else goto _L9
_L9:
                ad.d d1 = (ad.d)ad1.getChildAt(i1);
                if (d1 != null)
                {
                    try
                    {
                        if (d1.c.equalsIgnoreCase("done"))
                        {
                            d1.setClickable(true);
                            d1.setEnabled(true);
                            if (d1.getChildAt(0) instanceof ImageView)
                            {
                                if (AdMarvelVideoActivity.e(a) != null && AdMarvelVideoActivity.e(a).c())
                                {
                                    AdMarvelVideoActivity.e(a).b();
                                }
                                ImageView imageview = (ImageView)d1.getChildAt(0);
                                if (imageview.getDrawable() != null)
                                {
                                    imageview.getDrawable().setAlpha(255);
                                    imageview.invalidate();
                                }
                            }
                        }
                    }
                    catch (Exception exception)
                    {
                        Logging.log(Log.getStackTraceString(exception));
                        return;
                    }
                }
                  goto _L10
_L6:
                AdMarvelVideoActivity.b(a, false);
                if (AdMarvelVideoActivity.h(a) != null)
                {
                    AdMarvelVideoActivity.h(a).b();
                    AdMarvelVideoActivity.c(a, false);
                    AdMarvelVideoActivity.i(a).setVisibility(8);
                    AdMarvelVideoActivity.j(a);
                }
_L2:
                return;
_L10:
                i1++;
                if (true) goto _L12; else goto _L11
_L11:
            }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }

            private class i
            {

                private Handler a;
                private Runnable b;
                private int c;
                private boolean d;
                private boolean e;
                private Runnable f = new Runnable() {

                    final i a;

                    public void run()
                    {
                        if (!i.a(a))
                        {
                            return;
                        }
                        i.c(a).post(i.b(a));
                        if (i.d(a))
                        {
                            i.a(a, false);
                            return;
                        } else
                        {
                            i.c(a).postDelayed(i.e(a), i.f(a));
                            return;
                        }
                    }

                        
                        {
                            a = i.this;
                            super();
                        }
                };

                static boolean a(i i1)
                {
                    return i1.d;
                }

                static boolean a(i i1, boolean flag)
                {
                    i1.d = flag;
                    return flag;
                }

                static Runnable b(i i1)
                {
                    return i1.b;
                }

                static Handler c(i i1)
                {
                    return i1.a;
                }

                static boolean d(i i1)
                {
                    return i1.e;
                }

                static Runnable e(i i1)
                {
                    return i1.f;
                }

                static int f(i i1)
                {
                    return i1.c;
                }

                public void a()
                {
                    while (d || c < 1) 
                    {
                        return;
                    }
                    d = true;
                    a.postDelayed(f, c);
                }

                public void b()
                {
                    if (!d)
                    {
                        return;
                    } else
                    {
                        d = false;
                        a.removeCallbacks(b);
                        a.removeCallbacks(f);
                        return;
                    }
                }

                public boolean c()
                {
                    return d;
                }

                public i(Handler handler, Runnable runnable, int i1)
                {
                    d = false;
                    e = false;
                    a = handler;
                    b = runnable;
                    c = i1;
                }

                public i(Handler handler, Runnable runnable, int i1, boolean flag)
                {
                    this(handler, runnable, i1);
                    e = flag;
                }
            }

        };
        ag = new Runnable() {

            final AdMarvelVideoActivity a;

            public void run()
            {
                b b1;
                try
                {
                    b1 = (b)a.h.get();
                }
                catch (Exception exception)
                {
                    Logging.log(Log.getStackTraceString(exception));
                    return;
                }
                if (b1 == null)
                {
                    break MISSING_BLOCK_LABEL_22;
                }
                b1.d();
            }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }

            private class b extends RelativeLayout
            {

                TextView a;
                ProgressBar b;
                private final Context c;
                private boolean d;
                private boolean e;
                private boolean f;
                private int g;
                private final WeakReference h;

                private int a(float f1)
                {
                    return (int)TypedValue.applyDimension(1, f1, getResources().getDisplayMetrics());
                }

                static void a(b b1)
                {
                    b1.e();
                }

                private void e()
                {
                    AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)h.get();
                    if (admarvelvideoactivity != null)
                    {
                        LinearLayout linearlayout = (LinearLayout)admarvelvideoactivity.findViewById(AdMarvelVideoActivity.c);
                        if (linearlayout != null)
                        {
                            linearlayout.setVisibility(0);
                        }
                        if ((LinearLayout)admarvelvideoactivity.findViewById(AdMarvelVideoActivity.b) != null && AdMarvelVideoActivity.r(admarvelvideoactivity) && AdMarvelVideoActivity.g(admarvelvideoactivity))
                        {
                            admarvelvideoactivity.b(true);
                            return;
                        }
                    }
                }

                public boolean a()
                {
                    return f;
                }

                public void b()
                {
                    setShowing(true);
                    b.setVisibility(0);
                    setVisibility(0);
                }

                public void c()
                {
                    d = true;
                }

                public void d()
                {
                    setShowing(false);
                    b.setVisibility(8);
                    setVisibility(8);
                }

                public int getProgress()
                {
                    return g;
                }

                public void setCancelable(boolean flag)
                {
                    e = flag;
                }

                public void setMessage(String s1)
                {
                    a.setText(s1);
                }

                public void setProgress(int i1)
                {
                    g = i1;
                    b.setProgress(i1);
                    if (i1 >= 100)
                    {
                        d();
                    }
                    a.setText((new StringBuilder()).append("Loading...").append(i1).append("% ").toString());
                    a.invalidate();
                }

                public void setShowing(boolean flag)
                {
                    f = flag;
                }

                public b(Context context, AdMarvelVideoActivity admarvelvideoactivity)
                {
                    super(context);
                    d = false;
                    e = true;
                    f = true;
                    g = 0;
                    h = new WeakReference(admarvelvideoactivity);
                    c = context;
                    android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
                    layoutparams.addRule(13);
                    setLayoutParams(layoutparams);
                    setBackgroundColor(getResources().getColor(0x106000d));
                    new android.widget.RelativeLayout.LayoutParams(-1, a(100F));
                    a = new TextView(context);
                    android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                    a.setLayoutParams(layoutparams1);
                    android.widget.RelativeLayout.LayoutParams layoutparams2;
                    if (com.admarvel.android.ads.ac.a() < 9)
                    {
                        b = new ProgressBar(c, null, 0x1010078);
                        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                    } else
                    {
                        b = new ProgressBar(c, null, 0x1010289);
                        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(a(50F), a(50F));
                    }
                    b.setId(0xb4be5ec);
                    b.setVisibility(0);
                    layoutparams2.addRule(13);
                    addView(b, layoutparams2);
                    layoutparams1.addRule(3, b.getId());
                    layoutparams1.addRule(14);
                    layoutparams1.addRule(13);
                    addView(a);
                }
            }

        };
        ah = new Runnable() {

            final AdMarvelVideoActivity a;

            public void run()
            {
                if (!AdMarvelVideoActivity.k(a) || AdMarvelVideoActivity.i(a) == null)
                {
                    return;
                }
                int i1;
                String s2;
                AdMarvelVideoActivity.i(a).setVisibility(0);
                i1 = AdMarvelVideoActivity.l(a) - AdMarvelVideoActivity.a(a, System.currentTimeMillis() - AdMarvelVideoActivity.m(a));
                if (AdMarvelVideoActivity.n(a) == null || AdMarvelVideoActivity.n(a).length() <= 0 || !AdMarvelVideoActivity.n(a).contains("@seconds"))
                {
                    break MISSING_BLOCK_LABEL_144;
                }
                s2 = AdMarvelVideoActivity.n(a).replace("@seconds", String.valueOf(i1));
_L1:
                Exception exception;
                ((TextView)AdMarvelVideoActivity.i(a).getChildAt(0)).setText(s2);
                return;
                String s1;
                try
                {
                    s1 = (new StringBuilder()).append("You Can Skip Ad in ").append(i1).append(" seconds").toString();
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception)
                {
                    Logging.log(Log.getStackTraceString(exception));
                    return;
                }
                s2 = s1;
                  goto _L1
            }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }
        };
        ai = new Runnable() {

            final AdMarvelVideoActivity a;

            public void run()
            {
                LinearLayout linearlayout = (LinearLayout)a.findViewById(AdMarvelVideoActivity.b);
                if (AdMarvelVideoActivity.g(a) && linearlayout != null && linearlayout.getVisibility() == 0 && System.currentTimeMillis() - AdMarvelVideoActivity.o(a) >= 3000L)
                {
                    a.b(false);
                }
                AdMarvelVideoActivity.p(a).b();
            }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }
        };
        aj = new android.view.View.OnTouchListener() {

            final AdMarvelVideoActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    a.onUserInteraction();
                }
                return false;
            }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }
        };
        ak = new android.view.View.OnTouchListener() {

            final AdMarvelVideoActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    LinearLayout linearlayout = (LinearLayout)a.findViewById(AdMarvelVideoActivity.b);
                    if (AdMarvelVideoActivity.g(a) && linearlayout != null && AdMarvelVideoActivity.q(a) && a.i != k.d && a.i != k.e)
                    {
                        a.onUserInteraction();
                    }
                }
                return false;
            }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }

            private class k extends Enum
            {

                public static final k a;
                public static final k b;
                public static final k c;
                public static final k d;
                public static final k e;
                public static final k f;
                public static final k g;
                private static final k h[];

                public static k valueOf(String s1)
                {
                    return (k)Enum.valueOf(com/admarvel/android/ads/AdMarvelVideoActivity$k, s1);
                }

                public static k[] values()
                {
                    return (k[])h.clone();
                }

                static 
                {
                    a = new k("Loading", 0);
                    b = new k("Playing", 1);
                    c = new k("Paused", 2);
                    d = new k("Stopped", 3);
                    e = new k("Finished", 4);
                    f = new k("PausedByToolbar", 5);
                    g = new k("PausedBySystem", 6);
                    k ak1[] = new k[7];
                    ak1[0] = a;
                    ak1[1] = b;
                    ak1[2] = c;
                    ak1[3] = d;
                    ak1[4] = e;
                    ak1[5] = f;
                    ak1[6] = g;
                    h = ak1;
                }

                private k(String s1, int i1)
                {
                    super(s1, i1);
                }
            }

        };
    }

    private int a(long l1)
    {
        return (int)l1 / 1000;
    }

    static int a(AdMarvelVideoActivity admarvelvideoactivity, long l1)
    {
        return admarvelvideoactivity.a(l1);
    }

    static p a(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.L;
    }

    private void a(int i1)
    {
_L2:
        return;
        if (R == null || O == null) goto _L2; else goto _L1
_L1:
        if (R.size() <= 0) goto _L2; else goto _L3
_L3:
        int j1 = ((g)R.get(0)).a;
        if (i1 != j1) goto _L2; else goto _L4
_L4:
        if (i1 != j1) goto _L1; else goto _L5
_L5:
        List list = ((g)R.get(0)).b;
        if (list == null) goto _L2; else goto _L6
_L6:
        String s1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); O.a(s1))
        {
            s1 = (String)iterator.next();
        }

        R.remove(0);
          goto _L1
    }

    private void a(int i1, TextView textview)
    {
        new String();
        int j1 = i1 / 60;
        int k1 = i1 % 60;
        String s1;
        if (i1 == 0)
        {
            s1 = " 00:00";
        } else
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("-");
            Object obj;
            StringBuilder stringbuilder1;
            Object obj1;
            if (j1 < 10)
            {
                obj = (new StringBuilder()).append("0").append(j1).toString();
            } else
            {
                obj = Integer.valueOf(j1);
            }
            stringbuilder1 = stringbuilder.append(obj).append(":");
            if (k1 < 10)
            {
                obj1 = (new StringBuilder()).append("0").append(k1).toString();
            } else
            {
                obj1 = Integer.valueOf(k1);
            }
            s1 = stringbuilder1.append(obj1).toString();
        }
        if (textview != null)
        {
            if (textview.getVisibility() != 0 || U.getVisibility() != 0)
            {
                textview.setVisibility(0);
                U.setVisibility(0);
            }
            textview.setText(s1);
        }
    }

    private void a(LinearLayout linearlayout, boolean flag)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setInterpolator(new DecelerateInterpolator());
        alphaanimation.setDuration(800L);
        AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation1.setInterpolator(new AccelerateInterpolator());
        alphaanimation1.setDuration(500L);
        if (flag)
        {
            linearlayout.setAnimation(alphaanimation);
            return;
        } else
        {
            linearlayout.setAnimation(alphaanimation1);
            return;
        }
    }

    private void a(RelativeLayout relativelayout)
    {
        D = new RelativeLayout(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(10);
        layoutparams.addRule(11);
        D.setLayoutParams(layoutparams);
        D.setBackgroundColor(0);
        TextView textview = new TextView(this);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(11);
        textview.setLayoutParams(layoutparams1);
        textview.setTypeface(Typeface.DEFAULT_BOLD);
        D.addView(textview);
        D.setVisibility(4);
        relativelayout.addView(D);
    }

    static void a(AdMarvelVideoActivity admarvelvideoactivity, int i1)
    {
        admarvelvideoactivity.a(i1);
    }

    static void a(AdMarvelVideoActivity admarvelvideoactivity, int i1, TextView textview)
    {
        admarvelvideoactivity.a(i1, textview);
    }

    private void a(AdMarvelXMLElement admarvelxmlelement, l l1)
    {
        while (Q == null || admarvelxmlelement == null || !admarvelxmlelement.c().containsKey("pixel")) 
        {
            return;
        }
        ArrayList arraylist = (ArrayList)admarvelxmlelement.c().get("pixel");
        ArrayList arraylist1 = new ArrayList();
        arraylist1.clear();
        for (int i1 = 0; i1 < arraylist.size(); i1++)
        {
            arraylist1.add(((AdMarvelXMLElement)arraylist.get(i1)).b());
        }

        Q.put(l1, arraylist1);
    }

    static boolean a(AdMarvelVideoActivity admarvelvideoactivity, boolean flag)
    {
        admarvelvideoactivity.q = flag;
        return flag;
    }

    private void b(RelativeLayout relativelayout)
    {
        K = new ImageView(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(13);
        K.setLayoutParams(layoutparams);
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            N.post(new d(K, y));
        } else
        {
            c c1 = new c(K);
            String as[] = new String[1];
            as[0] = y;
            c1.execute(as);
        }
        if (S != null && S.size() > 0)
        {
            if (S.contains(k.a))
            {
                K.setVisibility(0);
            } else
            {
                K.setVisibility(4);
            }
        } else
        {
            K.setVisibility(0);
        }
        relativelayout.addView(K);
    }

    static boolean b(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.A;
    }

    static boolean b(AdMarvelVideoActivity admarvelvideoactivity, boolean flag)
    {
        admarvelvideoactivity.v = flag;
        return flag;
    }

    static TextView c(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.T;
    }

    static boolean c(AdMarvelVideoActivity admarvelvideoactivity, boolean flag)
    {
        admarvelvideoactivity.C = flag;
        return flag;
    }

    static boolean d(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.q;
    }

    static boolean d(AdMarvelVideoActivity admarvelvideoactivity, boolean flag)
    {
        admarvelvideoactivity.F = flag;
        return flag;
    }

    private LinearLayout e(String s1)
    {
        LinearLayout linearlayout = new LinearLayout(this);
        linearlayout.setId(b);
        linearlayout.setGravity(80);
        ad ad1 = new ad(L, this, this, s1, P);
        M = new WeakReference(ad1);
        linearlayout.addView(ad1);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams.addRule(12);
        linearlayout.setLayoutParams(layoutparams);
        return linearlayout;
    }

    static i e(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.Z;
    }

    static boolean e(AdMarvelVideoActivity admarvelvideoactivity, boolean flag)
    {
        admarvelvideoactivity.G = flag;
        return flag;
    }

    private String f(String s1)
    {
        if (s1 != null && s1.length() > 0) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        String s2;
        Object obj;
        Object obj1;
        String s3;
        Object obj2;
        List list;
        j j1;
        StringBuffer stringbuffer;
        s2 = null;
        obj = null;
        obj1 = null;
        s3 = null;
        obj2 = null;
        list = null;
        j1 = new j();
        stringbuffer = new StringBuffer();
        stringbuffer.append("<videoTrackingEvents>");
        j1.a(s1);
        if (j1 == null) goto _L1; else goto _L3
_L3:
        Iterator iterator = j1.a().iterator();
_L5:
        class j.a
        {

            public String a;
            public List b;
            final j c;

            public String a()
            {
                return a;
            }

            public void a(String s19)
            {
                b.add(URLDecoder.decode(s19));
            }

            public j.a(j j1, String s1, String s2)
            {
                c = j1;
                super();
                a = s1;
                b = new ArrayList();
                b.add(URLDecoder.decode(s2));
            }
        }

        j.a a1;
        List list1;
        Object obj3;
        String s7;
        Object obj4;
        Object obj5;
        String s8;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_864;
        }
        a1 = (j.a)iterator.next();
        if ("xml".equalsIgnoreCase(a1.a))
        {
            return (String)a1.b.get(0);
        }
        if (!"video".equalsIgnoreCase(a1.a))
        {
            break; /* Loop/switch isn't completed */
        }
        String s18 = d((String)a1.b.get(0));
        List list4 = list;
        obj3 = obj2;
        s7 = s3;
        obj4 = obj1;
        obj5 = obj;
        s8 = s18;
        list1 = list4;
_L6:
        s2 = s8;
        obj = obj5;
        obj1 = obj4;
        s3 = s7;
        obj2 = obj3;
        list = list1;
        if (true) goto _L5; else goto _L4
_L4:
        if ("duration".equalsIgnoreCase(a1.a))
        {
            String s17 = (String)a1.b.get(0);
            s8 = s2;
            Object obj6 = obj2;
            s7 = s3;
            obj4 = obj1;
            obj5 = s17;
            list1 = list;
            obj3 = obj6;
        } else
        if ("poster".equalsIgnoreCase(a1.a))
        {
            String s16 = (String)a1.b.get(0);
            obj4 = obj1;
            obj5 = obj;
            s8 = s2;
            List list3 = list;
            obj3 = obj2;
            s7 = s16;
            list1 = list3;
        } else
        if ("force_quit".equalsIgnoreCase(a1.a))
        {
            String s14 = (String)a1.b.get(0);
            obj5 = obj;
            s8 = s2;
            String s15 = s3;
            obj4 = s14;
            list1 = list;
            obj3 = obj2;
            s7 = s15;
        } else
        if ("open_url".equalsIgnoreCase(a1.a))
        {
            String s13 = (String)a1.b.get(0);
            s7 = s3;
            obj4 = obj1;
            obj5 = obj;
            s8 = s2;
            List list2 = list;
            obj3 = s13;
            list1 = list2;
        } else
        {
            if (!a1.a.startsWith("track_"))
            {
                break MISSING_BLOCK_LABEL_839;
            }
            if (a1.a.startsWith("track_pr_"))
            {
                String s11 = a1.a.replaceFirst("track_pr_", "");
                stringbuffer.append((new StringBuilder()).append("<videoTracking event=\"progress\" offset=\"").append(s11).append("\"><pixels>").toString());
                Iterator iterator3 = a1.b.iterator();
                do
                {
                    if (!iterator3.hasNext())
                    {
                        break;
                    }
                    String s12 = (String)iterator3.next();
                    if (s12 != null && s12.length() > 0)
                    {
                        stringbuffer.append((new StringBuilder()).append("<pixel>").append(s12).append("</pixel>").toString());
                    }
                } while (true);
                stringbuffer.append("</pixels></videoTracking>");
                list1 = list;
                obj3 = obj2;
                s7 = s3;
                obj4 = obj1;
                obj5 = obj;
                s8 = s2;
            } else
            {
label0:
                {
                    if (!"track_open_url".equalsIgnoreCase(a1.a))
                    {
                        break label0;
                    }
                    new ArrayList();
                    list1 = a1.b;
                    obj3 = obj2;
                    s7 = s3;
                    obj4 = obj1;
                    obj5 = obj;
                    s8 = s2;
                }
            }
        }
          goto _L6
        String s9 = a1.a.replaceFirst("track_", "");
        stringbuffer.append((new StringBuilder()).append("<videoTracking event=\"").append(s9).append("\" ><pixels>").toString());
        Iterator iterator2 = a1.b.iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            String s10 = (String)iterator2.next();
            if (s10 != null && s10.length() > 0)
            {
                stringbuffer.append((new StringBuilder()).append("<pixel>").append(s10).append("</pixel>").toString());
            }
        } while (true);
        stringbuffer.append("</pixels></videoTracking>");
        list1 = list;
        obj3 = obj2;
        s7 = s3;
        obj4 = obj1;
        obj5 = obj;
        s8 = s2;
          goto _L6
        stringbuffer.append("</videoTrackingEvents>");
        String s4;
        if (s3 != null && s3.length() > 0)
        {
            s4 = (new StringBuilder()).append("<loadingimage>").append(s3).append("</loadingimage>").toString();
        } else
        {
            s4 = "";
        }
        String s5;
        if (obj2 != null && ((String) (obj2)).length() > 0)
        {
            StringBuffer stringbuffer1 = new StringBuffer();
            if (list != null && list.size() > 0)
            {
                stringbuffer1.append("<clickTracking><pixels>");
                Iterator iterator1 = list.iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    String s6 = (String)iterator1.next();
                    if (s6 != null && s6.length() > 0)
                    {
                        stringbuffer1.append((new StringBuilder()).append("<pixel>").append(s6).append("</pixel>").toString());
                    }
                } while (true);
                stringbuffer1.append("</pixels></clickTracking>");
            }
            Object aobj[];
            if (stringbuffer1.length() > 0)
            {
                Object aobj1[] = new Object[2];
                aobj1[0] = stringbuffer1.toString();
                aobj1[1] = obj2;
                s5 = String.format("<toolbar > <item type=\"SystemItem\" ><action type=\"done\"/></item> <item type=\"Toggle\"> <subitem type=\"SystemItem\" > <action type=\"pause\"/> </subitem> <subitem type=\"SystemItem\" > <action type=\"resume\"/> </subitem> </item> <item type=\"SystemItem\" >%s<action type=\"open_url\">%s</action></item> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"Timer\"/> </toolbar>", aobj1);
            } else
            {
                s5 = String.format("<toolbar > <item type=\"SystemItem\" ><action type=\"done\"/></item> <item type=\"Toggle\"> <subitem type=\"SystemItem\" > <action type=\"pause\"/> </subitem> <subitem type=\"SystemItem\" > <action type=\"resume\"/> </subitem> </item> <item type=\"SystemItem\" >%s<action type=\"open_url\">%s</action></item> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"Timer\"/> </toolbar>", new Object[] {
                    "", obj2
                });
            }
        } else
        {
            s5 = "<toolbar > <item type=\"SystemItem\" ><action type=\"done\"/></item> <item type=\"Toggle\"> <subitem type=\"SystemItem\" > <action type=\"pause\"/> </subitem> <subitem type=\"SystemItem\" > <action type=\"resume\"/> </subitem> </item> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"Timer\"/> </toolbar>";
        }
        aobj = new Object[6];
        if (obj == null)
        {
            obj = "";
        }
        aobj[0] = obj;
        if (obj1 == null)
        {
            obj1 = "NO";
        }
        aobj[1] = obj1;
        if (s2 == null)
        {
            s2 = "";
        }
        aobj[2] = s2;
        aobj[3] = s4;
        aobj[4] = s5;
        aobj[5] = stringbuffer.toString();
        return String.format("<customad type=\"video\"><video duration=\"%s\" forcequit=\"%s\">%s</video>%s%s%s</customad>", aobj);
    }

    static WeakReference f(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.M;
    }

    static boolean g(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.s;
    }

    static i h(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.X;
    }

    static RelativeLayout i(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.D;
    }

    static void j(AdMarvelVideoActivity admarvelvideoactivity)
    {
        admarvelvideoactivity.o();
    }

    static boolean k(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.C;
    }

    static int l(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.w;
    }

    static long m(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.E;
    }

    static String n(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.J;
    }

    static long o(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.aa;
    }

    private void o()
    {
        if (o != null)
        {
            o.setVisibility(0);
        }
    }

    static i p(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.Y;
    }

    private void p()
    {
        if (o != null)
        {
            o.setVisibility(8);
        }
    }

    private boolean q()
    {
        WeakReference weakreference;
        boolean flag;
        weakreference = M;
        flag = false;
        if (weakreference == null) goto _L2; else goto _L1
_L1:
        ad ad1;
        ad1 = (ad)M.get();
        flag = false;
        if (ad1 == null) goto _L2; else goto _L3
_L3:
        boolean flag1;
        flag1 = ad1 instanceof LinearLayout;
        flag = false;
        if (!flag1) goto _L2; else goto _L4
_L4:
        int i1 = 0;
_L11:
        int j1;
        j1 = ad1.getChildCount();
        flag = false;
        if (i1 >= j1) goto _L2; else goto _L5
_L5:
        if (!(ad1.getChildAt(i1) instanceof ViewSwitcher)) goto _L7; else goto _L6
_L6:
        ad.d d2;
        ad.d d3;
        ViewSwitcher viewswitcher = (ViewSwitcher)ad1.getChildAt(i1);
        d2 = (ad.d)viewswitcher.getCurrentView();
        d3 = (ad.d)viewswitcher.getNextView();
        if ((d2 == null || !d2.c.equalsIgnoreCase("unmute")) && (d3 == null || !d3.c.equalsIgnoreCase("unmute"))) goto _L9; else goto _L8
_L8:
        flag = true;
_L2:
        return flag;
_L7:
        if (ad1.getChildAt(i1) instanceof ad.d)
        {
            ad.d d1 = (ad.d)ad1.getChildAt(i1);
            if (d1 != null && d1.c.equalsIgnoreCase("unmute"))
            {
                return true;
            }
        }
_L9:
        i1++;
        if (true) goto _L11; else goto _L10
_L10:
    }

    static boolean q(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.u;
    }

    private void r()
    {
        if (M != null)
        {
            ad ad1 = (ad)M.get();
            if (ad1 != null && (ad1 instanceof LinearLayout))
            {
                for (int i1 = 0; i1 < ad1.getChildCount(); i1++)
                {
                    if (!(ad1.getChildAt(i1) instanceof ViewSwitcher))
                    {
                        continue;
                    }
                    ViewSwitcher viewswitcher = (ViewSwitcher)ad1.getChildAt(i1);
                    ad.d d1 = (ad.d)viewswitcher.getCurrentView();
                    ad.d d2 = (ad.d)viewswitcher.getNextView();
                    if (d1 != null && d1.c.equalsIgnoreCase("mute") && d2 != null && d2.c.equalsIgnoreCase("unmute"))
                    {
                        viewswitcher.showNext();
                    }
                }

            }
        }
    }

    static boolean r(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.t;
    }

    private void s()
    {
        if (W != null)
        {
            W.b();
        }
        if (V != null)
        {
            V.b();
        }
        if (Y != null)
        {
            Y.b();
        }
        if (X != null)
        {
            X.b();
        }
    }

    static boolean s(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.H;
    }

    static boolean t(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.F;
    }

    static boolean u(AdMarvelVideoActivity admarvelvideoactivity)
    {
        return admarvelvideoactivity.G;
    }

    public Handler a()
    {
        return N;
    }

    public void a(l l1)
    {
        List list;
        if (Q != null)
        {
            if ((list = (List)Q.get(l1)) != null && O != null)
            {
                String s1;
                for (Iterator iterator = list.iterator(); iterator.hasNext(); O.a(s1))
                {
                    s1 = (String)iterator.next();
                }

                if (l1 == l.a || l1 == l.b)
                {
                    Q.remove(l1);
                    return;
                }
            }
        }
    }

    public void a(p p1)
    {
        if (p1.getVisibility() != 0)
        {
            p1.setVisibility(0);
        }
        if (z && K != null && K.getVisibility() == 0)
        {
            K.setVisibility(4);
        }
        if (k <= 0 || A) goto _L2; else goto _L1
_L1:
        LinearLayout linearlayout = (LinearLayout)findViewById(b);
        if (linearlayout != null && s && T == null)
        {
            U = (LinearLayout)linearlayout.findViewWithTag((new StringBuilder()).append(P).append("TIMER_BUTTON_LAYOUT").toString());
            if (U != null)
            {
                T = (TextView)U.getChildAt(0);
            }
        }
        if (R != null && R.size() > 0)
        {
            Collections.sort(R, new Comparator() {

                final AdMarvelVideoActivity a;

                public int a(g g1, g g2)
                {
                    return g1.a - g2.a;
                }

                public int compare(Object obj, Object obj1)
                {
                    return a((g)obj, (g)obj1);
                }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }
            });
        }
        if (W != null) goto _L4; else goto _L3
_L3:
        W = new i(N, ae, 500);
        W.a();
_L2:
        p1.start();
        i = k.b;
        return;
_L4:
        if (!W.c())
        {
            W.a();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void a(String s1)
    {
        if (h == null)
        {
            b b1 = new b(this, this);
            b1.setMessage(s1);
            b1.b();
            h = new WeakReference(b1);
            b1.setTag("ADM__VIDEO_DIALOG");
            addContentView(b1, b1.getLayoutParams());
            return;
        }
        b b2 = (b)h.get();
        if (b2 != null)
        {
            b2.setMessage(s1);
            b2.b();
            return;
        } else
        {
            b b3 = new b(this, this);
            b3.setMessage(s1);
            b3.b();
            h.clear();
            h = new WeakReference(b3);
            return;
        }
    }

    public void a(List list)
    {
        if (list != null && O != null)
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                O.a(s1);
            }
        }
    }

    public void a(boolean flag)
    {
        while (L == null || i != k.b) 
        {
            return;
        }
        L.pause();
        if (flag)
        {
            i = k.f;
            return;
        } else
        {
            i = k.c;
            return;
        }
    }

    public void b(String s1)
    {
        e = new AdMarvelXMLReader();
        e.parseXMLString(s1);
        f = e.getParsedXMLData();
        if (!f.c().containsKey("video")) goto _L2; else goto _L1
_L1:
        AdMarvelXMLElement admarvelxmlelement8 = (AdMarvelXMLElement)((ArrayList)f.c().get("video")).get(0);
        if (admarvelxmlelement8 == null) goto _L2; else goto _L3
_L3:
        String s13;
        x = d(admarvelxmlelement8.b());
        String s11 = (String)admarvelxmlelement8.getAttributes().get("forcequit");
        if (s11 != null && s11.equalsIgnoreCase("YES"))
        {
            B = true;
        }
        String s12 = (String)admarvelxmlelement8.getAttributes().get("duration");
        if (s12 != null && Integer.parseInt(s12) > 0)
        {
            k = Integer.parseInt(s12);
        }
        s13 = (String)admarvelxmlelement8.getAttributes().get("lockOrientation");
        if (s13 == null) goto _L5; else goto _L4
_L4:
        if (!s13.equalsIgnoreCase("LandscapeLeft")) goto _L7; else goto _L6
_L6:
        setRequestedOrientation(0);
_L5:
        String s14 = (String)admarvelxmlelement8.getAttributes().get("initialMute");
        if (s14 != null && s14.equalsIgnoreCase("YES"))
        {
            ab = true;
        }
        String s15 = (String)admarvelxmlelement8.getAttributes().get("enableVideoPlayOnScreenLock");
        if (s15 != null && s15.equalsIgnoreCase("YES"))
        {
            H = true;
        }
        String s16 = (String)admarvelxmlelement8.getAttributes().get("quitVideoInBackground");
        if (s16 != null && s16.equalsIgnoreCase("YES"))
        {
            I = true;
        }
          goto _L2
_L7:
        if (s13.equalsIgnoreCase("Portrait"))
        {
            setRequestedOrientation(1);
        } else
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            com.admarvel.android.ads.y.a(this, s13);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (f.c().containsKey("loadingimage"))
        {
            AdMarvelXMLElement admarvelxmlelement7 = (AdMarvelXMLElement)((ArrayList)f.c().get("loadingimage")).get(0);
            if (admarvelxmlelement7 != null)
            {
                y = admarvelxmlelement7.b();
                z = true;
                String s10 = (String)admarvelxmlelement7.getAttributes().get("displayEvent");
                if (s10 != null)
                {
                    String as[] = s10.split(",");
                    if (as != null && as.length > 0)
                    {
                        S = new ArrayList();
                        int j3 = 0;
                        do
                        {
                            if (j3 >= as.length)
                            {
                                break;
                            }
                            if (as[j3].equalsIgnoreCase("loading"))
                            {
                                S.add(k.a);
                            } else
                            if (as[j3].equalsIgnoreCase("complete"))
                            {
                                S.add(k.d);
                                S.add(k.e);
                            }
                            j3++;
                        } while (true);
                    }
                }
            }
        }
        if (f.c().containsKey("toolbar"))
        {
            AdMarvelXMLElement admarvelxmlelement6 = (AdMarvelXMLElement)((ArrayList)f.c().get("toolbar")).get(0);
            AdMarvelXMLElement admarvelxmlelement;
            ArrayList arraylist;
            AdMarvelXMLElement admarvelxmlelement5;
            ArrayList arraylist7;
            int i3;
            String s4;
            String s5;
            String s6;
            String s7;
            if (admarvelxmlelement6 == null)
            {
                s5 = null;
            } else
            {
                s5 = (String)admarvelxmlelement6.getAttributes().get("initiallyVisible");
            }
            if (s5 != null && s5.equalsIgnoreCase("YES"))
            {
                t = true;
            }
            if (admarvelxmlelement6 == null)
            {
                s6 = null;
            } else
            {
                s6 = (String)admarvelxmlelement6.getAttributes().get("toggleToolbar");
            }
            if (s6 != null && s6.equalsIgnoreCase("NO"))
            {
                u = false;
            }
            if (admarvelxmlelement6 == null)
            {
                s7 = null;
            } else
            {
                s7 = (String)admarvelxmlelement6.getAttributes().get("delayDisplayDoneButton");
            }
            if (s7 != null)
            {
                v = true;
                C = true;
                w = Integer.parseInt(s7);
                String s8 = (String)admarvelxmlelement6.getAttributes().get("showSkipMessage");
                if (s8 != null && s8.equalsIgnoreCase("NO"))
                {
                    C = false;
                }
                String s9 = (String)admarvelxmlelement6.getAttributes().get("skipText");
                if (s9 != null && s9.length() > 0 && s9.contains("@seconds"))
                {
                    J = s9;
                }
            }
            if (admarvelxmlelement6 != null && admarvelxmlelement6.c().containsKey("item") && ((ArrayList)admarvelxmlelement6.c().get("item")).size() > 0)
            {
                s = true;
            }
        }
        if (f.c().containsKey("videoTrackingEvents"))
        {
            R = new ArrayList();
            Q = new HashMap();
            admarvelxmlelement = (AdMarvelXMLElement)((ArrayList)f.c().get("videoTrackingEvents")).get(0);
            if (admarvelxmlelement != null && admarvelxmlelement.c().containsKey("videoTracking"))
            {
                arraylist = (ArrayList)admarvelxmlelement.c().get("videoTracking");
                int i1 = 0;
                while (i1 < arraylist.size()) 
                {
                    AdMarvelXMLElement admarvelxmlelement1 = (AdMarvelXMLElement)arraylist.get(i1);
                    String s2 = (String)admarvelxmlelement1.getAttributes().get("event");
                    if ("progress".equalsIgnoreCase(s2))
                    {
                        String s3 = (String)admarvelxmlelement1.getAttributes().get("offset");
                        if (s3 != null)
                        {
                            int l2;
                            if (s3.endsWith("%"))
                            {
                                s4 = s3.replace("%", "");
                                l2 = (k * Integer.parseInt(s4)) / 100;
                            } else
                            {
                                l2 = Integer.parseInt(s3);
                            }
                            admarvelxmlelement5 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0);
                            if (admarvelxmlelement5 != null && admarvelxmlelement5.c().containsKey("pixel"))
                            {
                                arraylist7 = (ArrayList)admarvelxmlelement5.c().get("pixel");
                                ArrayList arraylist8 = new ArrayList();
                                arraylist8.clear();
                                for (i3 = 0; i3 < arraylist7.size(); i3++)
                                {
                                    arraylist8.add(((AdMarvelXMLElement)arraylist7.get(i3)).b());
                                }

                                R.add(new g(l2, arraylist8));
                            }
                        }
                    } else
                    if ("firstQuartile".equalsIgnoreCase(s2) && k > 0)
                    {
                        int j2 = k / 4;
                        if (j2 > 0)
                        {
                            AdMarvelXMLElement admarvelxmlelement4 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0);
                            if (admarvelxmlelement4 != null && admarvelxmlelement4.c().containsKey("pixel"))
                            {
                                ArrayList arraylist5 = (ArrayList)admarvelxmlelement4.c().get("pixel");
                                ArrayList arraylist6 = new ArrayList();
                                arraylist6.clear();
                                for (int k2 = 0; k2 < arraylist5.size(); k2++)
                                {
                                    arraylist6.add(((AdMarvelXMLElement)arraylist5.get(k2)).b());
                                }

                                R.add(new g(j2, arraylist6));
                            }
                        }
                    } else
                    if ("midpoint".equalsIgnoreCase(s2) && k > 0)
                    {
                        int l1 = k / 2;
                        if (l1 > 0)
                        {
                            AdMarvelXMLElement admarvelxmlelement3 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0);
                            if (admarvelxmlelement3 != null && admarvelxmlelement3.c().containsKey("pixel"))
                            {
                                ArrayList arraylist3 = (ArrayList)admarvelxmlelement3.c().get("pixel");
                                ArrayList arraylist4 = new ArrayList();
                                arraylist4.clear();
                                for (int i2 = 0; i2 < arraylist3.size(); i2++)
                                {
                                    arraylist4.add(((AdMarvelXMLElement)arraylist3.get(i2)).b());
                                }

                                R.add(new g(l1, arraylist4));
                            }
                        }
                    } else
                    if ("thirdQuartile".equalsIgnoreCase(s2) && k > 0)
                    {
                        int j1 = 3 * (k / 4);
                        if (j1 > 0)
                        {
                            AdMarvelXMLElement admarvelxmlelement2 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0);
                            if (admarvelxmlelement2 != null && admarvelxmlelement2.c().containsKey("pixel"))
                            {
                                ArrayList arraylist1 = (ArrayList)admarvelxmlelement2.c().get("pixel");
                                ArrayList arraylist2 = new ArrayList();
                                arraylist2.clear();
                                for (int k1 = 0; k1 < arraylist1.size(); k1++)
                                {
                                    arraylist2.add(((AdMarvelXMLElement)arraylist1.get(k1)).b());
                                }

                                R.add(new g(j1, arraylist2));
                            }
                        }
                    } else
                    if ("start".equalsIgnoreCase(s2))
                    {
                        a((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0), l.a);
                    } else
                    if ("complete".equalsIgnoreCase(s2))
                    {
                        a((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0), l.b);
                    } else
                    if ("pause".equalsIgnoreCase(s2))
                    {
                        a((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0), l.c);
                    } else
                    if ("resume".equalsIgnoreCase(s2))
                    {
                        a((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0), l.d);
                    } else
                    if ("close".equalsIgnoreCase(s2))
                    {
                        a((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0), l.e);
                    } else
                    if ("stop".equalsIgnoreCase(s2))
                    {
                        a((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("pixels")).get(0), l.f);
                    }
                    i1++;
                }
            }
        }
        return;
        if (true) goto _L5; else goto _L8
_L8:
    }

    public void b(boolean flag)
    {
        LinearLayout linearlayout = (LinearLayout)findViewById(b);
        if (s && linearlayout != null)
        {
            if (linearlayout.getVisibility() != 0)
            {
                if (flag)
                {
                    a(linearlayout, flag);
                    linearlayout.setVisibility(0);
                    linearlayout.bringToFront();
                    linearlayout.requestLayout();
                    if (Y != null && !Y.c())
                    {
                        aa = System.currentTimeMillis();
                        Y.b();
                        Y.a();
                    }
                }
            } else
            if (!flag)
            {
                a(linearlayout, flag);
                linearlayout.setVisibility(4);
                return;
            }
        }
    }

    boolean b()
    {
        return r;
    }

    public void c()
    {
        s();
        a(l.e);
        if (R != null && R.size() > 0)
        {
            R.clear();
        }
        if (Q != null && Q.size() > 0)
        {
            Q.clear();
        }
        if (b())
        {
            if (AdMarvelInterstitialAds.getListener() != null)
            {
                AdMarvelInterstitialAds.getListener().b();
                ad = 1 + ad;
            }
            if (ad > 2)
            {
                finish();
                return;
            } else
            {
                finish();
                return;
            }
        } else
        {
            finish();
            return;
        }
    }

    public void c(String s1)
    {
        if (L == null)
        {
            return;
        }
        if (L.isPlaying())
        {
            L.a();
            i = k.d;
        }
        if (L.getVisibility() != 0)
        {
            L.setVisibility(0);
            L.requestFocus();
        }
        if (z && K != null)
        {
            if (S != null && S.size() > 0)
            {
                if (S.contains(k.a))
                {
                    K.setVisibility(0);
                }
            } else
            {
                K.setVisibility(0);
            }
        }
        if (R != null && R.size() > 0)
        {
            R.clear();
        }
        if (Q != null && Q.size() > 0)
        {
            HashMap hashmap = new HashMap();
            hashmap.putAll(Q);
            Iterator iterator = hashmap.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                l l1 = (l)iterator.next();
                if (l1 != l.e)
                {
                    Q.remove(l1);
                }
            } while (true);
        }
        a("Loading Next Video...");
        if (B)
        {
            B = false;
        }
        A = true;
        if (T != null)
        {
            T.setVisibility(4);
        }
        L.a(Uri.parse(s1));
        L.requestFocus();
        i = k.a;
    }

    public void c(boolean flag)
    {
        if (M != null)
        {
            ad ad1 = (ad)M.get();
            if (ad1 != null && (ad1 instanceof LinearLayout))
            {
                int i1 = 0;
                while (i1 < ad1.getChildCount()) 
                {
                    if (ad1.getChildAt(i1) instanceof ViewSwitcher)
                    {
                        ViewSwitcher viewswitcher = (ViewSwitcher)ad1.getChildAt(i1);
                        ad.d d1 = (ad.d)viewswitcher.getCurrentView();
                        if (!flag && d1 != null && d1.c.equalsIgnoreCase("pause"))
                        {
                            if (viewswitcher.getDisplayedChild() == 0)
                            {
                                viewswitcher.showNext();
                            } else
                            {
                                viewswitcher.showPrevious();
                            }
                        } else
                        if (!flag && d1 != null && d1.c.equalsIgnoreCase("stop"))
                        {
                            if (viewswitcher.getDisplayedChild() == 0)
                            {
                                viewswitcher.showNext();
                            } else
                            {
                                viewswitcher.showPrevious();
                            }
                        } else
                        if (flag && d1 != null && d1.c.equalsIgnoreCase("replay"))
                        {
                            if (viewswitcher.getDisplayedChild() == 0)
                            {
                                viewswitcher.showNext();
                            } else
                            {
                                viewswitcher.showPrevious();
                            }
                        } else
                        if (flag && d1 != null && d1.c.equalsIgnoreCase("resume"))
                        {
                            if (viewswitcher.getDisplayedChild() == 0)
                            {
                                viewswitcher.showNext();
                            } else
                            {
                                viewswitcher.showPrevious();
                            }
                        }
                    }
                    i1++;
                }
            }
        }
    }

    String d(String s1)
    {
        String s2;
        if (s1 == null || s1.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        s2 = s1;
_L1:
        HttpURLConnection httpurlconnection;
        int i1;
        ab ab1 = new ab(this, N);
        httpurlconnection = (HttpURLConnection)(new URL(s2)).openConnection();
        httpurlconnection.setRequestMethod("GET");
        httpurlconnection.setDoInput(true);
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setRequestProperty("User-Agent", ab1.a());
        httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpurlconnection.setRequestProperty("Content-Length", "0");
        httpurlconnection.setConnectTimeout(4000);
        httpurlconnection.setReadTimeout(5000);
        httpurlconnection.setInstanceFollowRedirects(false);
        httpurlconnection.connect();
        i1 = httpurlconnection.getResponseCode();
        if (i1 != 301 && i1 != 302)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        String s3 = httpurlconnection.getHeaderField("Location");
        s2 = s3;
          goto _L1
        Exception exception;
        exception;
        if (s2 != null && s2.length() > 0)
        {
            s1 = s2;
        }
        return s1;
    }

    public void d()
    {
        if (L == null)
        {
            return;
        } else
        {
            L.a();
            i = k.d;
            return;
        }
    }

    public void e()
    {
        if (L != null)
        {
            if (i == k.f || i == k.c)
            {
                a("Resuming Video...");
                L.e();
                i = k.b;
                return;
            }
            if (i == k.d || i == k.e)
            {
                f();
                return;
            }
        }
    }

    public void f()
    {
        while (L == null || i != k.e && i != k.d && i != k.c && i != k.f) 
        {
            return;
        }
        if (i == k.c || i == k.f)
        {
            L.a();
            i = k.d;
        }
        if (L.getVisibility() != 0)
        {
            L.setVisibility(0);
        }
        if (z && K != null)
        {
            if (S != null && S.size() > 0)
            {
                if (S.contains(k.a))
                {
                    K.setVisibility(0);
                }
            } else
            {
                K.setVisibility(0);
            }
        }
        if (R != null && R.size() > 0)
        {
            R.clear();
        }
        if (Q != null && Q.size() > 0)
        {
            HashMap hashmap = new HashMap();
            hashmap.putAll(Q);
            Iterator iterator = hashmap.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                l l1 = (l)iterator.next();
                if (l1 != l.e)
                {
                    Q.remove(l1);
                }
            } while (true);
        }
        if (B)
        {
            B = false;
        }
        a("Replaying Video...");
        if (x != null && x.length() > 0)
        {
            L.a(Uri.parse(x));
            i = k.a;
        }
        A = false;
        L.requestFocus();
    }

    public void g()
    {
        N.postDelayed(new e(n, this), 3000L);
    }

    public void h()
    {
        a(l.c);
    }

    public void i()
    {
        a(l.f);
        if (W != null)
        {
            W.b();
        }
        if (Y != null)
        {
            Y.b();
        }
        LinearLayout linearlayout;
        if (z && K != null)
        {
            if (S != null && S.size() > 0)
            {
                if (S.contains(k.d))
                {
                    K.setVisibility(0);
                }
            } else
            {
                K.setVisibility(0);
            }
        }
        if (L != null)
        {
            L.setVisibility(4);
        }
        linearlayout = (LinearLayout)findViewById(b);
        if (s && linearlayout != null && linearlayout.getVisibility() != 0)
        {
            a(linearlayout, true);
            linearlayout.setVisibility(0);
            linearlayout.bringToFront();
            linearlayout.requestLayout();
        }
        if (k > 0 && T != null && T.getVisibility() == 0)
        {
            a(0, T);
        }
        c(false);
    }

    public void j()
    {
        a(l.d);
        i = k.b;
    }

    public void k()
    {
        if (N != null)
        {
            N.post(ag);
        }
        if (W != null && !A && i != k.e && i != k.d)
        {
            W.a();
        }
        if (z && K != null && K.getVisibility() == 0)
        {
            K.setVisibility(4);
        }
    }

    public void l()
    {
        if (N != null)
        {
            N.post(ag);
        }
        Toast.makeText(this, "Network Connection Unavailable", 0).show();
    }

    public void m()
    {
        c();
    }

    public void n()
    {
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        boolean flag;
        i = k.e;
        a(l.b);
        s();
        LinearLayout linearlayout = (LinearLayout)findViewById(b);
        Logging.log("Video onCompletion is called");
        ad ad1;
        if (z && K != null)
        {
            if (S != null && S.size() > 0)
            {
                if (S.contains(k.d))
                {
                    K.setVisibility(0);
                }
            } else
            {
                K.setVisibility(0);
            }
        }
        if (L != null)
        {
            L.setVisibility(4);
        }
        if (s && linearlayout != null && linearlayout.getVisibility() != 0)
        {
            a(linearlayout, true);
            linearlayout.setVisibility(0);
            linearlayout.bringToFront();
            linearlayout.requestLayout();
        }
        if (k > 0 && T != null && T.getVisibility() == 0)
        {
            a(0, T);
        }
        c(false);
        if (M == null) goto _L2; else goto _L1
_L1:
        ad1 = (ad)M.get();
        if (ad1 == null) goto _L2; else goto _L3
_L3:
        flag = ad1.b();
_L5:
        if (!s || !flag || B)
        {
            if (L != null)
            {
                L.a(true);
            }
            c();
        }
        return;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void onCreate(Bundle bundle)
    {
        RelativeLayout relativelayout;
        ImageView imageview;
        super.onCreate(bundle);
        Bundle bundle1;
        if (l == null)
        {
            l = this;
        } else
        {
            l.finish();
            l = this;
        }
        if (Build.MODEL.contains("Kindle") || Build.PRODUCT.contains("Kindle"))
        {
            getWindow().addFlags(256);
            getWindow().clearFlags(1024);
        } else
        {
            getWindow().setFlags(512, 512);
        }
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            com.admarvel.android.ads.f.a(this);
        }
        bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            byte abyte0[] = bundle1.getByteArray("serialized_admarvelad");
            LinearLayout linearlayout;
            android.widget.LinearLayout.LayoutParams layoutparams;
            RelativeLayout relativelayout1;
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            ad ad1;
            int i1;
            ad.d d1;
            ad ad2;
            android.widget.RelativeLayout.LayoutParams layoutparams2;
            android.widget.RelativeLayout.LayoutParams layoutparams3;
            int j1;
            if (abyte0 != null)
            {
                try
                {
                    n = (AdMarvelAd)(new ObjectInputStream(new ByteArrayInputStream(abyte0))).readObject();
                    if (n != null)
                    {
                        m = new WeakReference(n);
                    }
                }
                catch (Exception exception2)
                {
                    Logging.log(Log.getStackTraceString(exception2));
                }
            }
            if (bundle1.getBoolean("isCustomUrl"))
            {
                p = f(bundle1.getString("url"));
                P = bundle1.getString("GUID");
                r = false;
            } else
            if (bundle1.containsKey("html"))
            {
                p = bundle1.getString("html");
                P = bundle1.getString("GUID");
                if (p != null && p.length() > 0)
                {
                    r = true;
                } else
                {
                    r = false;
                }
            } else
            {
                finish();
            }
        }
        i = com.admarvel.android.ads.k.a;
        relativelayout = new RelativeLayout(this);
        relativelayout.setId(a);
        relativelayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        setContentView(relativelayout);
        linearlayout = new LinearLayout(this);
        linearlayout.setId(c);
        layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        layoutparams.weight = 10F;
        linearlayout.setLayoutParams(layoutparams);
        linearlayout.setOnTouchListener(ak);
        linearlayout.setBackgroundColor(0xff000000);
        relativelayout1 = new RelativeLayout(this);
        relativelayout1.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        linearlayout.addView(relativelayout1);
        layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams1.addRule(13);
        L = new p(this, this);
        L.setLayoutParams(layoutparams1);
        L.a(this);
        relativelayout1.addView(L);
        N = new Handler();
        O = new ab(this, N);
        try
        {
            b(p);
        }
        catch (Exception exceptionException exception1, )
        {
            try
            {
                exception.printStackTrace();
            }
            catch (ParserConfigurationException parserconfigurationexception)
            {
                Logging.log(parserconfigurationexception.getMessage());
                return;
            }
            catch (SAXException saxexception)
            {
                Logging.log(saxexception.getMessage());
                return;
            }
            catch (IOException ioexception)
            {
                Logging.log(ioexception.getMessage());
                return;
            }
        }
_L20:
        if (s)
        {
            g = e(p);
            g.setVisibility(8);
        }
        relativelayout.addView(linearlayout);
        if (x == null) goto _L2; else goto _L1
_L1:
        j1 = x.length();
        if (j1 <= 0) goto _L2; else goto _L3
_L3:
        L.a(Uri.parse(x));
_L17:
        L.a(this);
        L.a(this);
        L.a(this);
        L.requestFocus();
        if (r && AdMarvelInterstitialAds.getListener() != null)
        {
            AdMarvelInterstitialAds.getListener().a(this);
        }
        if (z && y != null && y.length() > 0)
        {
            b(relativelayout);
        }
        if (s && g != null)
        {
            relativelayout.addView(g);
        }
        if (M == null) goto _L5; else goto _L4
_L4:
        ad2 = (ad)M.get();
        if (ad2 == null) goto _L5; else goto _L6
_L6:
        o = new RelativeLayout(this);
        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams2.addRule(10);
        layoutparams2.addRule(11);
        o.setLayoutParams(layoutparams2);
        o.setBackgroundColor(0);
        layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams3.setMargins(20, 20, 20, 20);
        layoutparams3.addRule(11);
        if (ad2.a() != null)
        {
            o.addView(ad2.a(), layoutparams3);
            (TextView)o.findViewWithTag("ADM_VIDEO_CUSTOM_DONE_BUTTON");
            o.setOnClickListener(new android.view.View.OnClickListener() {

                final AdMarvelVideoActivity a;

                public void onClick(View view)
                {
                    a.c();
                }

            
            {
                a = AdMarvelVideoActivity.this;
                super();
            }
            });
            o.setClickable(true);
            relativelayout.addView(o);
        }
_L5:
        if (C)
        {
            a(relativelayout);
            p();
        }
        if (!v || w <= 0 || M == null)
        {
            break MISSING_BLOCK_LABEL_1298;
        }
        ad1 = (ad)M.get();
        if (ad1 == null)
        {
            break MISSING_BLOCK_LABEL_1298;
        }
        if (!(ad1 instanceof LinearLayout) || ad1 == null)
        {
            break MISSING_BLOCK_LABEL_1298;
        }
        if (!s)
        {
            break MISSING_BLOCK_LABEL_1298;
        }
        i1 = 0;
_L16:
        if (i1 >= ad1.getChildCount())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!(ad1.getChildAt(i1) instanceof ad.d)) goto _L8; else goto _L7
_L7:
        d1 = (ad.d)ad1.getChildAt(i1);
        if (d1 == null) goto _L8; else goto _L9
_L9:
        if (!d1.c.equalsIgnoreCase("done")) goto _L8; else goto _L10
_L10:
        d1.setClickable(false);
        d1.setEnabled(false);
        if (!(d1.getChildAt(0) instanceof ImageView)) goto _L8; else goto _L11
_L11:
        imageview = (ImageView)d1.getChildAt(0);
        if (imageview == null) goto _L13; else goto _L12
_L12:
        if (imageview.getDrawable() == null) goto _L13; else goto _L14
_L14:
        imageview.getDrawable().setAlpha(25);
_L8:
        i1++;
        if (true) goto _L16; else goto _L15
        exception1;
        Logging.log((new StringBuilder()).append("Exception in setting URI on videoView ").append(exception1.getMessage()).toString());
        finish();
          goto _L17
_L2:
        finish();
          goto _L17
_L13:
        if (imageview == null) goto _L8; else goto _L18
_L18:
        if (Z != null) goto _L8; else goto _L19
_L19:
        a a1 = new a(imageview);
        Z = new i(N, a1, 1000);
        Z.a();
          goto _L8
_L15:
        V = new i(N, af, 1000 * w);
        V.a();
        if (C && X == null)
        {
            E = System.currentTimeMillis();
            X = new i(N, ah, 500, false);
            X.a();
        }
        relativelayout.setOnTouchListener(aj);
        a("Loading Video...");
        IntentFilter intentfilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        ac = new h();
        registerReceiver(ac, intentfilter);
        return;
          goto _L20
    }

    protected void onDestroy()
    {
        super.onDestroy();
        s();
        if (ac != null)
        {
            unregisterReceiver(ac);
            ac = null;
        }
    }

    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
    {
        c(false);
        i = k.e;
        LinearLayout linearlayout = (LinearLayout)findViewById(b);
        if (s && linearlayout != null && linearlayout.getVisibility() != 0)
        {
            a(linearlayout, true);
            linearlayout.setVisibility(0);
        }
        if (mediaplayer != null)
        {
            mediaplayer.reset();
            mediaplayer.release();
        }
        return false;
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR tableswitch 4 4: default 28
    //                   4 35;
           goto _L2 _L3
_L2:
        return super.onKeyDown(i1, keyevent);
_L3:
        if (M == null) goto _L5; else goto _L4
_L4:
        ad ad1 = (ad)M.get();
        if (ad1 == null) goto _L5; else goto _L6
_L6:
        boolean flag = ad1.b();
_L8:
        if (!s || !flag || !v)
        {
            c();
        }
        return true;
_L5:
        flag = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected void onPause()
    {
        super.onPause();
        if (isFinishing()) goto _L2; else goto _L1
_L1:
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).start();
        }
        catch (Exception exception) { }
        Logging.log("Video Activity onPause is called");
        if (i != k.b) goto _L4; else goto _L3
_L3:
        if (L != null)
        {
            if (H)
            {
                L.d();
                F = true;
                i = k.g;
            } else
            if (I)
            {
                L.d();
                G = true;
                i = k.g;
            } else
            {
                L.pause();
                i = k.c;
            }
        }
_L2:
        if (Y != null && Y.c())
        {
            Y.b();
        }
        return;
_L4:
        if ((i == k.d || i == k.e) && L != null && !L.isPlaying())
        {
            L.a(true);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        b b1;
        if (h == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        b1 = (b)h.get();
        if (b1 != null)
        {
            try
            {
                if (b1.a())
                {
                    b1.d();
                    com.admarvel.android.ads.b.a(b1);
                }
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
        if (u)
        {
            if (Y == null)
            {
                Y = new i(N, ai, 3100, true);
            }
            LinearLayout linearlayout = (LinearLayout)findViewById(b);
            if (s && linearlayout != null && linearlayout.getVisibility() == 0)
            {
                Y.a();
                aa = System.currentTimeMillis();
            }
        }
        if (j == com.admarvel.android.ads.m.a)
        {
            L.b();
        }
        if (ab)
        {
            if (q())
            {
                L.b();
                j = com.admarvel.android.ads.m.a;
                r();
            }
            ab = false;
        }
        c(true);
        if (L != null)
        {
            a(L);
            a(com.admarvel.android.ads.l.a);
        }
        return;
    }

    protected void onResume()
    {
        super.onResume();
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).start();
        }
        catch (Exception exception) { }
        if (L != null && (i == k.c || !L.isPlaying() && i == k.g))
        {
            a("Resuming Video...");
            L.e();
            if (Y != null)
            {
                Y.a();
            }
        }
        F = false;
        d = false;
    }

    protected void onStart()
    {
        super.onStart();
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).start();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onStop()
    {
        super.onStop();
        PowerManager powermanager;
        StringBuilder stringbuilder;
        Object obj;
        b b1;
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).start();
        }
        catch (Exception exception) { }
        Logging.log("Video Activity onStop is called");
        if (L != null && !L.isPlaying() && i == k.g && !I)
        {
            a(l.c);
        }
        powermanager = (PowerManager)getSystemService("power");
        stringbuilder = (new StringBuilder()).append("Video Activity onStop isScreenOn: ");
        if (powermanager != null)
        {
            obj = Boolean.valueOf(powermanager.isScreenOn());
        } else
        {
            obj = "powermanager null";
        }
        Logging.log(stringbuilder.append(obj).toString());
        if (!isFinishing() && F && i == k.g && L != null && L.isPlaying() && powermanager != null && !powermanager.isScreenOn())
        {
            i = k.b;
            F = false;
        } else
        if (!isFinishing() && I && !d)
        {
            c();
        }
        if (W != null && (!H || !L.isPlaying() || powermanager.isScreenOn()))
        {
            W.b();
        }
        if (h != null)
        {
            b1 = (b)h.get();
        } else
        {
            b1 = null;
        }
        if (b1 != null)
        {
            b1.c();
            com.admarvel.android.ads.b.a(b1);
        }
    }

    public void onUserInteraction()
    {
label0:
        {
            LinearLayout linearlayout = (LinearLayout)findViewById(b);
            if (s && linearlayout != null)
            {
                if (linearlayout.getVisibility() != 0)
                {
                    break label0;
                }
                aa = System.currentTimeMillis();
                if (Y != null && Y.c())
                {
                    Y.b();
                    Y.a();
                }
            }
            return;
        }
        b(true);
    }


    private class m extends Enum
    {

        public static final m a;
        public static final m b;
        public static final m c;
        private static final m d[];

        public static m valueOf(String s1)
        {
            return (m)Enum.valueOf(com/admarvel/android/ads/AdMarvelVideoActivity$m, s1);
        }

        public static m[] values()
        {
            return (m[])d.clone();
        }

        static 
        {
            a = new m("Mute", 0);
            b = new m("UnMute", 1);
            c = new m("Unknown", 2);
            m am[] = new m[3];
            am[0] = a;
            am[1] = b;
            am[2] = c;
            d = am;
        }

        private m(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private class g
    {

        public int a;
        public List b;
        final AdMarvelVideoActivity c;

        public g(int i1, List list)
        {
            c = AdMarvelVideoActivity.this;
            super();
            b = new ArrayList();
            a = i1;
            b = list;
        }
    }


    private class d
        implements Runnable
    {

        final AdMarvelVideoActivity a;
        private final WeakReference b;
        private final WeakReference c;

        public void run()
        {
            if (c.get() != null && b.get() != null)
            {
                c c1 = a. new c((ImageView)c.get());
                java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
                String as[] = new String[1];
                as[0] = (String)b.get();
                c1.executeOnExecutor(executor, as);
            }
        }

        public d(ImageView imageview, String s1)
        {
            a = AdMarvelVideoActivity.this;
            super();
            b = new WeakReference(s1);
            c = new WeakReference(imageview);
        }
    }


    private class c extends AsyncTask
    {

        ImageView a;
        final AdMarvelVideoActivity b;

        protected transient Bitmap a(String as[])
        {
            String s1 = as[0];
            Bitmap bitmap;
            try
            {
                bitmap = BitmapFactory.decodeStream((new URL(s1)).openStream());
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
                return null;
            }
            return bitmap;
        }

        protected void a(Bitmap bitmap)
        {
            a.setImageBitmap(bitmap);
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((String[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((Bitmap)obj);
        }

        public c(ImageView imageview)
        {
            b = AdMarvelVideoActivity.this;
            super();
            a = imageview;
        }
    }


    private class j
    {

        final AdMarvelVideoActivity a;
        private final ArrayList b = new ArrayList();

        public List a()
        {
            return b;
        }

        public void a(String s1)
        {
            int i1 = s1.indexOf('?');
            String s2;
            if (i1 >= 0)
            {
                s2 = s1.substring(i1 + 1);
            } else
            {
                s2 = "";
            }
            b(s2);
        }

        protected void a(String s1, String s2)
        {
            for (int i1 = 0; i1 < b.size(); i1++)
            {
                if (((a)b.get(i1)).a().equalsIgnoreCase(s1))
                {
                    ((a)b.get(i1)).a(s2);
                    return;
                }
            }

            b.add(new a(this, s1, s2));
        }

        public void b(String s1)
        {
            StringTokenizer stringtokenizer = new StringTokenizer(s1, "&");
            do
            {
                if (!stringtokenizer.hasMoreElements())
                {
                    break;
                }
                String s2 = stringtokenizer.nextToken();
                if (s2.length() > 0)
                {
                    int i1 = s2.indexOf('=');
                    if (i1 < 0)
                    {
                        a(s2, "");
                    } else
                    {
                        a(s2.substring(0, i1), s2.substring(i1 + 1));
                    }
                }
            } while (true);
        }

        public j()
        {
            a = AdMarvelVideoActivity.this;
            super();
        }
    }


    private class l extends Enum
    {

        public static final l a;
        public static final l b;
        public static final l c;
        public static final l d;
        public static final l e;
        public static final l f;
        private static final l g[];

        public static l valueOf(String s1)
        {
            return (l)Enum.valueOf(com/admarvel/android/ads/AdMarvelVideoActivity$l, s1);
        }

        public static l[] values()
        {
            return (l[])g.clone();
        }

        static 
        {
            a = new l("START", 0);
            b = new l("COMPLETE", 1);
            c = new l("PAUSE", 2);
            d = new l("RESUME", 3);
            e = new l("CLOSE", 4);
            f = new l("STOP", 5);
            l al[] = new l[6];
            al[0] = a;
            al[1] = b;
            al[2] = c;
            al[3] = d;
            al[4] = e;
            al[5] = f;
            g = al;
        }

        private l(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private class e
        implements Runnable
    {

        private final AdMarvelAd a;
        private final Context b;

        public void run()
        {
            if (a != null)
            {
                a.setResponseJson();
            }
            com.admarvel.android.util.a a1 = com.admarvel.android.util.a.b(b);
            if (a1 != null && a != null)
            {
                int i1 = a1.a(b);
                a.setAdHistoryCounter(i1);
                a1.a(a.getAdHistoryDumpString(), i1);
            }
        }

        public e(AdMarvelAd admarvelad, Context context)
        {
            a = admarvelad;
            b = context;
        }
    }


    private class f
    {

        static void a(Activity activity)
        {
            activity.getWindow().setFlags(0x1000000, 0x1000000);
        }
    }


    private class a
        implements Runnable
    {

        final AdMarvelVideoActivity a;
        private WeakReference b;

        public void run()
        {
            ImageView imageview = (ImageView)b.get();
            if (imageview != null && imageview.getDrawable() != null)
            {
                imageview.getDrawable().setAlpha(25);
                if (AdMarvelVideoActivity.e(a) != null && AdMarvelVideoActivity.e(a).c())
                {
                    AdMarvelVideoActivity.e(a).b();
                }
            }
        }

        public a(ImageView imageview)
        {
            a = AdMarvelVideoActivity.this;
            super();
            b = null;
            b = new WeakReference(imageview);
        }
    }


    private class h extends BroadcastReceiver
    {

        final AdMarvelVideoActivity a;

        public void onReceive(Context context, Intent intent)
        {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF"))
            {
                if (a.h != null)
                {
                    b b1 = (b)a.h.get();
                    if (b1 != null && b1.a() && !AdMarvelVideoActivity.s(a))
                    {
                        b1.d();
                        a.c();
                    }
                }
                if (AdMarvelVideoActivity.t(a) && a.i == k.g && com.admarvel.android.ads.AdMarvelVideoActivity.a(a) != null)
                {
                    a.i = k.b;
                    AdMarvelVideoActivity.d(a, false);
                }
                if (AdMarvelVideoActivity.u(a) && a.i == k.g && com.admarvel.android.ads.AdMarvelVideoActivity.a(a) != null)
                {
                    com.admarvel.android.ads.AdMarvelVideoActivity.a(a).pause();
                    a.i = k.c;
                    AdMarvelVideoActivity.e(a, false);
                }
            }
        }

        h()
        {
            a = AdMarvelVideoActivity.this;
            super();
        }
    }

}
