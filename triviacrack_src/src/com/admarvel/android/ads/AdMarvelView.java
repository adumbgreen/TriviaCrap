// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.admarvel.android.a.a;
import com.admarvel.android.b.c;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.e;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.admarvel.android.ads:
//            r, b, ac, AdMarvelWebView, 
//            aa, AdMarvelAdapter, AdMarvelActivity, AdMarvelVideoActivity, 
//            c, AdMarvelAnalyticsAdapter, ab, n, 
//            l, AdMarvelAd, AdMarvelUtils

public class AdMarvelView extends LinearLayout
{

    static String a;
    public static boolean b;
    protected static boolean d = true;
    private static boolean j = false;
    private static boolean o = true;
    private static boolean w = true;
    private static c x = null;
    private static WeakReference z;
    private AdMarvelAd A;
    private boolean B;
    final String c;
    private int e;
    private int f;
    private int g;
    private int h;
    private final r i;
    private boolean k;
    private boolean l;
    private final AtomicLong m;
    private boolean n;
    private boolean p;
    private final k q;
    private final l r;
    private final Handler s;
    private Map t;
    private boolean u;
    private boolean v;
    private boolean y;

    public AdMarvelView(Context context)
    {
        this(context, null);
    }

    public AdMarvelView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        k = false;
        n = true;
        p = false;
        u = true;
        v = false;
        y = false;
        B = false;
        i = new r();
        u = true;
        s = new Handler();
        c = UUID.randomUUID().toString();
        com.admarvel.android.ads.b.a(c);
        Logging.log(ac.b());
        setFocusable(true);
        setDescendantFocusability(0x40000);
        setClickable(true);
        String s1 = (new StringBuilder()).append("http://schemas.android.com/apk/res/").append(context.getPackageName()).toString();
        if (attributeset != null)
        {
            if (attributeset.getAttributeValue(s1, "backgroundColor") != null)
            {
                if ("0".equals(attributeset.getAttributeValue(s1, "backgroundColor")))
                {
                    e = 0;
                } else
                {
                    e = Integer.parseInt(attributeset.getAttributeValue(s1, "backgroundColor").replace("#", ""), 16);
                }
            }
            if (attributeset.getAttributeValue(s1, "textBackgroundColor") != null)
            {
                f = Integer.parseInt(attributeset.getAttributeValue(s1, "textBackgroundColor").replace("#", ""), 16);
            }
            if (attributeset.getAttributeValue(s1, "textFontColor") != null)
            {
                g = Integer.parseInt(attributeset.getAttributeValue(s1, "textFontColor").replace("#", ""), 16);
            }
            if (attributeset.getAttributeValue(s1, "textBorderColor") != null)
            {
                h = Integer.parseInt(attributeset.getAttributeValue(s1, "textBorderColor").replace("#", ""), 16);
            }
            if (attributeset.getAttributeValue(s1, "disableAnimation") != null)
            {
                l = Boolean.parseBoolean(attributeset.getAttributeValue(s1, "disableAnimation"));
            }
            if (attributeset.getAttributeValue(s1, "enableClickRedirect") != null)
            {
                n = Boolean.parseBoolean(attributeset.getAttributeValue(s1, "enableClickRedirect"));
            }
            setAdMarvelBackgroundColor(e);
        }
        m = new AtomicLong(0L);
        q = new k();
        r = new l();
    }

    static c a(c c1)
    {
        x = c1;
        return c1;
    }

    private void a(View view)
    {
        if (view != null && (view instanceof AdMarvelWebView))
        {
            AdMarvelWebView admarvelwebview = (AdMarvelWebView)view;
            admarvelwebview.d();
            admarvelwebview.c();
        }
    }

    private void a(View view, AdMarvelAd admarvelad)
    {
        if (l)
        {
            return;
        } else
        {
            setVisibility(8);
            setVisibility(0);
            aa aa1 = new aa(0.0F, -90F, (float)getWidth() / 2.0F, (float)getHeight() / 2.0F, -0.3F * (float)getWidth(), true);
            aa1.setDuration(700L);
            aa1.setFillAfter(true);
            aa1.setInterpolator(new AccelerateInterpolator());
            aa1.setAnimationListener(new android.view.animation.Animation.AnimationListener(view, admarvelad) {

                final View a;
                final AdMarvelAd b;
                final AdMarvelView c;

                public void onAnimationEnd(Animation animation)
                {
                    c.post(new n(a, c, b));
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                c = AdMarvelView.this;
                a = view;
                b = admarvelad;
                super();
            }

                private class n
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private final AdMarvelAd c;

                    public void run()
                    {
                        if (a != null && b != null)
                        {
                            View view = (View)a.get();
                            AdMarvelView admarvelview = (AdMarvelView)b.get();
                            if (admarvelview != null)
                            {
                                View view1 = admarvelview.findViewWithTag("CURRENT");
                                if (view1 != null)
                                {
                                    com.admarvel.android.ads.AdMarvelView.a(admarvelview, view1);
                                    com.admarvel.android.ads.AdMarvelView.c(admarvelview);
                                    view.setVisibility(0);
                                    view.setTag("CURRENT");
                                    admarvelview.removeAllViews();
                                    admarvelview.addView(view);
                                    if (!com.admarvel.android.ads.AdMarvelView.a(admarvelview))
                                    {
                                        AdMarvelView.b(admarvelview, view1);
                                    }
                                    aa aa1 = new aa(90F, 0.0F, (float)admarvelview.getWidth() / 2.0F, (float)admarvelview.getHeight() / 2.0F, -0.3F * (float)admarvelview.getWidth(), false);
                                    aa1.setDuration(700L);
                                    aa1.setFillAfter(true);
                                    aa1.setInterpolator(new DecelerateInterpolator());
                                    admarvelview.startAnimation(aa1);
                                    if (c != null)
                                    {
                                        if (admarvelview.a())
                                        {
                                            AdMarvelView.d(admarvelview).b(admarvelview.getContext(), admarvelview, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                                        } else
                                        {
                                            AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                                        }
                                        if (AdMarvelUtils.isLogDumpEnabled())
                                        {
                                            (new Handler()).postDelayed(new f(c, admarvelview.getContext()), 1000L);
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }

                    public n(View view, AdMarvelView admarvelview, AdMarvelAd admarvelad)
                    {
                        a = new WeakReference(view);
                        b = new WeakReference(admarvelview);
                        c = admarvelad;
                    }

                    private class f
                        implements Runnable
                    {

                        private final AdMarvelAd a;
                        private final Context b;

                        public void run()
                        {
                            com.admarvel.android.util.a a1 = com.admarvel.android.util.a.b(b);
                            if (a1 != null)
                            {
                                int i1 = a1.a(b);
                                a.setAdHistoryCounter(i1);
                                a1.a(a.getAdHistoryDumpString(), i1);
                            }
                        }

                        public f(AdMarvelAd admarvelad, Context context)
                        {
                            a = admarvelad;
                            if (!(context instanceof Activity) && AdMarvelView.d() != null && AdMarvelView.d().get() != null)
                            {
                                context = (Context)AdMarvelView.d().get();
                            }
                            b = context;
                        }
                    }

                }

            });
            startAnimation(aa1);
            return;
        }
    }

    static void a(AdMarvelView admarvelview, View view)
    {
        admarvelview.a(view);
    }

    static void a(AdMarvelView admarvelview, View view, AdMarvelAd admarvelad)
    {
        admarvelview.a(view, admarvelad);
    }

    static boolean a(AdMarvelView admarvelview)
    {
        return admarvelview.k;
    }

    static boolean a(AdMarvelView admarvelview, boolean flag)
    {
        admarvelview.k = flag;
        return flag;
    }

    private void b(View view)
    {
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: cleanupView");
        }
        catch (Exception exception) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: cleanupView");
        }
        catch (Exception exception1) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: cleanupView");
        }
        catch (Exception exception2) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: cleanupView");
        }
        catch (Exception exception3) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: cleanupView");
        }
        catch (Exception exception4) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: cleanupView");
        }
        catch (Exception exception5) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: cleanupView");
        }
        catch (Exception exception6) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: cleanupView");
        }
        catch (Exception exception7) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: cleanupView");
        }
        catch (Exception exception8) { }
        try
        {
            com.admarvel.android.ads.b.a(c, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter").cleanupView(view);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: cleanupView");
            return;
        }
        catch (Exception exception9)
        {
            return;
        }
    }

    static void b(AdMarvelView admarvelview, View view)
    {
        admarvelview.b(view);
    }

    static boolean b(AdMarvelView admarvelview)
    {
        return admarvelview.l;
    }

    static c c()
    {
        return x;
    }

    static void c(AdMarvelView admarvelview)
    {
        admarvelview.e();
    }

    static r d(AdMarvelView admarvelview)
    {
        return admarvelview.i;
    }

    static WeakReference d()
    {
        return z;
    }

    public static void disableNetworkActivity()
    {
        com/admarvel/android/ads/AdMarvelView;
        JVM INSTR monitorenter ;
        w = false;
        if (x != null && !x.isCancelled())
        {
            x.cancel(true);
            x = null;
        }
        com/admarvel/android/ads/AdMarvelView;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static Handler e(AdMarvelView admarvelview)
    {
        return admarvelview.s;
    }

    private void e()
    {
        if (l)
        {
            return;
        } else
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
            alphaanimation.setDuration(233L);
            alphaanimation.startNow();
            alphaanimation.setFillAfter(true);
            alphaanimation.setInterpolator(new AccelerateInterpolator());
            startAnimation(alphaanimation);
            return;
        }
    }

    public static void enableNetworkActivity(Activity activity, String s1)
    {
        com/admarvel/android/ads/AdMarvelView;
        JVM INSTR monitorenter ;
        w = true;
        if (x == null || !x.isCancelled()) goto _L2; else goto _L1
_L1:
        x = null;
        if (com.admarvel.android.ads.ac.a() < 11) goto _L4; else goto _L3
_L3:
        (new g(activity, s1)).run();
_L5:
        com/admarvel/android/ads/AdMarvelView;
        JVM INSTR monitorexit ;
        return;
_L4:
        x.execute(new Void[0]);
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L2:
label0:
        {
            if (com.admarvel.android.ads.ac.a() < 11)
            {
                break label0;
            }
            (new g(activity, s1)).run();
        }
          goto _L5
        x.execute(new Void[0]);
          goto _L5
    }

    static boolean f(AdMarvelView admarvelview)
    {
        return admarvelview.y;
    }

    public static void forceCloseFullScreenAd(Activity activity, AdMarvelActivity admarvelactivity, AdMarvelVideoActivity admarvelvideoactivity)
    {
        if (admarvelactivity != null)
        {
            admarvelactivity.finish();
        }
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.finish();
        }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception1) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception2) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception3) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception4) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception5) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception6) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception7) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: forceCloseFullScreenAd");
        }
        catch (Exception exception8) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter").forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: forceCloseFullScreenAd");
            return;
        }
        catch (Exception exception9)
        {
            return;
        }
    }

    static AdMarvelAd g(AdMarvelView admarvelview)
    {
        return admarvelview.A;
    }

    static boolean h(AdMarvelView admarvelview)
    {
        return admarvelview.u;
    }

    public static void initialize(Activity activity, Map map)
    {
        if (com.admarvel.android.ads.ac.a() >= 11 && o)
        {
            com.admarvel.android.ads.j.a(activity);
        }
        (new a(activity)).a();
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: startActivity");
        }
        catch (Exception exception) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: startActivity");
        }
        catch (Exception exception1) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: startActivity");
        }
        catch (Exception exception2) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: startActivity");
        }
        catch (Exception exception3) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: startActivity");
        }
        catch (Exception exception4) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: startActivity");
        }
        catch (Exception exception5) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: startActivity");
        }
        catch (Exception exception6) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: startActivity");
        }
        catch (Exception exception7) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: startActivity");
        }
        catch (Exception exception8) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter").initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: startActivity");
        }
        catch (Exception exception9) { }
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", activity).start();
        }
        catch (Exception exception10) { }
        (new Thread(new Runnable(activity) {

            final Activity a;

            public void run()
            {
                ab.l(a);
                com.admarvel.android.util.e.c(a);
            }

            
            {
                a = activity;
                super();
            }
        })).start();
        ab.m(activity);
    }

    public static void initializeOfflineSDK(Activity activity, String s1)
    {
label0:
        {
            b = true;
            Logging.log("Offline SDK:initializeOfflineSDK ");
            if (w && ab.f(activity))
            {
                x = new c(s1, activity);
                if (com.admarvel.android.ads.ac.a() < 11)
                {
                    break label0;
                }
                (new g(activity, s1)).run();
            }
            return;
        }
        x.execute(new Void[0]);
    }

    public static void pause(Activity activity, Map map, AdMarvelView admarvelview)
    {
        if (admarvelview != null)
        {
            View view = admarvelview.findViewWithTag("CURRENT");
            if (view instanceof AdMarvelWebView)
            {
                ((AdMarvelWebView)view).a();
            }
        }
        for (Iterator iterator = com.admarvel.android.ads.b.a().entrySet().iterator(); iterator.hasNext();)
        {
            Map map1 = (Map)((java.util.Map.Entry)iterator.next()).getValue();
            try
            {
                ((AdMarvelAdapter)map1.get("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter")).pause(activity, map);
                Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: pause");
            }
            catch (Exception exception10) { }
        }

        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: pause");
        }
        catch (Exception exception) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: pause");
        }
        catch (Exception exception1) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: pause");
        }
        catch (Exception exception2) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: pause");
        }
        catch (Exception exception3) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: pause");
        }
        catch (Exception exception4) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: pause");
        }
        catch (Exception exception5) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: pause");
        }
        catch (Exception exception6) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: pause");
        }
        catch (Exception exception7) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter").pause(activity, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: pause");
        }
        catch (Exception exception8) { }
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", activity).pause();
            return;
        }
        catch (Exception exception9)
        {
            return;
        }
    }

    public static void resume(Activity activity, Map map, AdMarvelView admarvelview)
    {
        if (admarvelview != null)
        {
            View view = admarvelview.findViewWithTag("CURRENT");
            if (view instanceof AdMarvelWebView)
            {
                ((AdMarvelWebView)view).b();
            }
        }
        for (Iterator iterator = com.admarvel.android.ads.b.a().entrySet().iterator(); iterator.hasNext();)
        {
            Map map1 = (Map)((java.util.Map.Entry)iterator.next()).getValue();
            try
            {
                ((AdMarvelAdapter)map1.get("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter")).resume(activity, map);
                Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: resume");
            }
            catch (Exception exception10) { }
        }

        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: resume");
        }
        catch (Exception exception) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: resume");
        }
        catch (Exception exception1) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: resume");
        }
        catch (Exception exception2) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: resume");
        }
        catch (Exception exception3) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: resume");
        }
        catch (Exception exception4) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: resume");
        }
        catch (Exception exception5) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: resume");
        }
        catch (Exception exception6) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: resume");
        }
        catch (Exception exception7) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter").resume(activity, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: resume");
        }
        catch (Exception exception8) { }
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", activity).pause();
            return;
        }
        catch (Exception exception9)
        {
            return;
        }
    }

    public static void setEnableHardwareAcceleration(boolean flag)
    {
        o = flag;
    }

    public static void uninitialize(Activity activity, Map map)
    {
        n n1 = com.admarvel.android.ads.n.a();
        if (n1 != null && n1.b())
        {
            n1.c();
        }
        com.admarvel.android.ads.l l1 = com.admarvel.android.ads.l.a();
        if (l1 != null)
        {
            l1.a(activity);
        }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: endActivity");
        }
        catch (Exception exception) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: endActivity");
        }
        catch (Exception exception1) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: endActivity");
        }
        catch (Exception exception2) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: endActivity");
        }
        catch (Exception exception3) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: endActivity");
        }
        catch (Exception exception4) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: endActivity");
        }
        catch (Exception exception5) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: endActivity");
        }
        catch (Exception exception6) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: endActivity");
        }
        catch (Exception exception7) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: endActivity");
        }
        catch (Exception exception8) { }
        try
        {
            com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter").uninitialize(activity, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: endActivity");
        }
        catch (Exception exception9) { }
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", activity).stop();
        }
        catch (Exception exception10) { }
        com.admarvel.android.util.e.a();
        ab.m(activity);
    }

    protected void a(AdMarvelAd admarvelad)
    {
        View view = findViewWithTag("CURRENT");
        if (view instanceof AdMarvelWebView)
        {
            ((AdMarvelWebView)view).d();
        }
        String s1 = a;
        File file = null;
        if (s1 != null)
        {
            file = new File(a);
        }
        AdMarvelWebView admarvelwebview;
        if (z != null && z.get() != null)
        {
            admarvelwebview = new AdMarvelWebView((Context)z.get(), u, v, file, admarvelad.getXml(), admarvelad, s);
        } else
        {
            admarvelwebview = new AdMarvelWebView(getContext(), u, v, file, admarvelad.getXml(), admarvelad, s);
        }
        admarvelwebview.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-2, -2));
        admarvelwebview.setBackgroundColor(e);
        admarvelwebview.setEnableClickRedirect(n);
        com.admarvel.android.ads.AdMarvelWebView.a(admarvelwebview.e, r);
        admarvelwebview.setTag("PENDING");
        admarvelwebview.setVisibility(8);
        admarvelwebview.a(getTextFontColor(), getTextBorderColor(), getTextBackgroundColor(), getAdMarvelBackgroundColor(), this);
        do
        {
            View view1 = findViewWithTag("PENDING");
            if (view1 == null)
            {
                addView(admarvelwebview);
                return;
            }
            removeView(view1);
        } while (true);
    }

    protected void a(String s1, AdMarvelAd admarvelad, Context context)
    {
        if (context == null) goto _L2; else goto _L1
_L1:
        String s4;
        int i1;
        s4 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        i1 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        if (s4 == null) goto _L4; else goto _L3
_L3:
        String s5 = (new StringBuilder()).append("duration").append(s4).append(i1).append(AdMarvelUtils.getSDKVersion()).toString();
        String s2 = s5;
_L6:
        if (s2 != null)
        {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences(com.admarvel.android.ads.ab.c("admarvel"), 0).edit();
            String s3 = DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis() + (long)(1000 * Integer.parseInt(s1))));
            editor.putString(com.admarvel.android.ads.ab.c(s2), s3);
            editor.commit();
            Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
            i.a(getContext(), this, 304, com.admarvel.android.ads.ab.a(304), admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
        }
_L2:
        return;
_L4:
        String s6 = (new StringBuilder()).append("duration").append(i1).append(AdMarvelUtils.getSDKVersion()).toString();
        s2 = s6;
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        Logging.log(Log.getStackTraceString(namenotfoundexception));
        s2 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void a(Map map, AdMarvelAd admarvelad, String s1, Context context)
    {
        if (admarvelad == null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        A = admarvelad;
        AdMarvelAdapter admarveladapter = com.admarvel.android.ads.b.a(c, s1);
        if (z == null || z.get() == null) goto _L2; else goto _L1
_L1:
        View view = admarveladapter.requestNewAd(q, (Context)z.get(), admarvelad, map, e, g);
          goto _L3
_L10:
        View view1;
        FrameLayout framelayout;
        try
        {
            view1 = findViewWithTag("PENDING");
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            i.a(getContext(), this, 304, com.admarvel.android.ads.ab.a(304), admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            return;
        }
        if (view1 != null) goto _L5; else goto _L4
_L4:
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        if (layoutparams.width < 0)
        {
            layoutparams.width = -1;
            setLayoutParams(layoutparams);
        }
        setGravity(1);
        framelayout = new FrameLayout(context);
        framelayout.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-2, -2, 1));
        if (!(view.getLayoutParams() instanceof android.widget.LinearLayout.LayoutParams)) goto _L7; else goto _L6
_L6:
        android.widget.LinearLayout.LayoutParams layoutparams3 = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
        layoutparams3.gravity = 1;
        framelayout.addView(view, layoutparams3);
_L13:
        framelayout.setTag("PENDING");
        if (!admarvelad.isMustBeVisible()) goto _L9; else goto _L8
_L8:
        framelayout.setVisibility(0);
_L15:
        removeAllViews();
        addView(framelayout);
        return;
_L2:
        view = admarveladapter.requestNewAd(q, context, admarvelad, map, e, g);
        continue; /* Loop/switch isn't completed */
_L5:
        removeView(view1);
          goto _L10
_L7:
        if (!(view.getLayoutParams() instanceof android.widget.FrameLayout.LayoutParams)) goto _L12; else goto _L11
_L11:
        android.widget.FrameLayout.LayoutParams layoutparams2 = (android.widget.FrameLayout.LayoutParams)view.getLayoutParams();
        layoutparams2.gravity = 1;
        framelayout.addView(view, layoutparams2);
          goto _L13
_L12:
        if (!(view.getLayoutParams() instanceof android.widget.RelativeLayout.LayoutParams)) goto _L13; else goto _L14
_L14:
        android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)view.getLayoutParams();
        layoutparams1.addRule(13);
        framelayout.addView(view, layoutparams1);
          goto _L13
_L9:
        framelayout.setVisibility(8);
          goto _L15
_L3:
        if (view == null) goto _L16; else goto _L10
_L16:
    }

    public boolean a()
    {
        return B;
    }

    public void adMarvelViewDisplayed()
    {
        s.post(new h(s));
    }

    public boolean b()
    {
        return p;
    }

    public void destroy()
    {
        s.post(new d());
    }

    public void displayAd(Context context, AdMarvelAd admarvelad)
    {
        A = admarvelad;
        if (admarvelad != null && context != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Exception exception;
        AdMarvelUtils.ErrorReason errorreason;
        int i1;
        if (admarvelad.getAdType() != AdMarvelAd.AdType.SDKCALL)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        if (admarvelad.getSdkNetwork() != null)
        {
            a(admarvelad.getTargetParams(), admarvelad, admarvelad.getSdkNetwork(), context);
            return;
        }
        String s1;
        if (!admarvelad.isDisableAdrequest())
        {
            break MISSING_BLOCK_LABEL_126;
        }
        s1 = admarvelad.getDisableAdDuration();
        if (s1 == null) goto _L1; else goto _L3
_L3:
        try
        {
            a(s1, admarvelad, context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            errorreason = com.admarvel.android.ads.ab.a(303);
            i1 = com.admarvel.android.ads.ab.a(errorreason);
            getListenerImpl().a(context, this, i1, errorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            return;
        }
        a(admarvelad);
        return;
    }

    public void enableAdFetchedModel(boolean flag)
    {
        B = flag;
    }

    public void fetchNewAd(Map map, String s1, String s2)
    {
        enableAdFetchedModel(true);
        requestNewAd(map, s1, s2);
    }

    public void fetchNewAd(Map map, String s1, String s2, Activity activity)
    {
        enableAdFetchedModel(true);
        requestNewAd(map, s1, s2, activity);
    }

    public void focus()
    {
        s.post(new i());
    }

    public int getAdMarvelBackgroundColor()
    {
        return e;
    }

    r getListenerImpl()
    {
        return i;
    }

    public int getTextBackgroundColor()
    {
        return f;
    }

    public int getTextBorderColor()
    {
        return h;
    }

    public int getTextFontColor()
    {
        return g;
    }

    public void requestNewAd(Map map, String s1, String s2)
    {
        String s7;
        SharedPreferences sharedpreferences;
        String s3;
        int i1;
        String s4;
        String s5;
        String s6;
        n n1;
        com.admarvel.android.ads.l l1;
        String s8;
        File file;
        String s9;
        Date date;
        String s10;
        try
        {
            sharedpreferences = getContext().getSharedPreferences(com.admarvel.android.ads.ab.c("admarvel"), 0);
            s3 = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionName;
            i1 = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionCode;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        s4 = (new StringBuilder()).append("duration").append(s3).append(i1).append(AdMarvelUtils.getSDKVersion()).toString();
_L1:
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        s5 = sharedpreferences.getString(com.admarvel.android.ads.ab.c(s4), null);
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        if (s5.length() > 0)
        {
            date = DateFormat.getDateTimeInstance().parse(s5);
            s10 = DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis()));
            if (DateFormat.getDateTimeInstance().parse(s10).before(date))
            {
                Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
                i.a(getContext(), this, 304, com.admarvel.android.ads.ab.a(304), s2, 0, map, "");
                return;
            }
        }
        break MISSING_BLOCK_LABEL_243;
        s4 = (new StringBuilder()).append("duration").append(i1).append(AdMarvelUtils.getSDKVersion()).toString();
          goto _L1
        (new a(getContext())).a();
        s6 = s1.trim();
        s7 = s2.trim();
        n1 = com.admarvel.android.ads.n.a();
        if (n1 == null)
        {
            break MISSING_BLOCK_LABEL_292;
        }
        if (n1.b())
        {
            n1.c();
        }
        l1 = com.admarvel.android.ads.l.a();
        if (l1 == null)
        {
            break MISSING_BLOCK_LABEL_311;
        }
        l1.a(getContext());
        if (System.currentTimeMillis() - m.getAndSet(System.currentTimeMillis()) <= 2000L)
        {
            break MISSING_BLOCK_LABEL_448;
        }
        i.a(this);
        s8 = a;
        file = null;
        if (s8 == null)
        {
            break MISSING_BLOCK_LABEL_365;
        }
        file = new File(a);
        s9 = null;
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_386;
        }
        s9 = (String)map.get("UNIQUE_ID");
        s.post(new b(file, getContext(), map, s6, s7, s9, ab.d(getContext()), com.admarvel.android.ads.ab.a(getContext()), this, 0, "", s));
        return;
        Logging.log("requestNewAd: AD REQUEST PENDING, IGNORING REQUEST");
        i.a(getContext(), this, 304, com.admarvel.android.ads.ab.a(304), s7, 0, map, "");
        return;
    }

    public void requestNewAd(Map map, String s1, String s2, Activity activity)
    {
        z = new WeakReference(activity);
        requestNewAd(map, s1, s2);
    }

    public void setAdMarvelBackgroundColor(int i1)
    {
        if (i1 == 0)
        {
            e = 0;
        } else
        {
            e = 0xff000000 | i1;
        }
        setBackgroundColor(e);
    }

    public void setAdmarvelWebViewAsSoftwareLayer(boolean flag)
    {
        p = flag;
    }

    public void setDisableAnimation(boolean flag)
    {
        l = flag;
    }

    public void setDisableSDKImpressionTracking(boolean flag)
    {
        y = flag;
    }

    public void setEnableAutoScaling(boolean flag)
    {
        u = flag;
    }

    public void setEnableClickRedirect(boolean flag)
    {
        n = flag;
    }

    public void setEnableFitToScreenForTablets(boolean flag)
    {
        v = flag;
    }

    public void setExtendedListener(AdMarvelViewExtendedListener admarvelviewextendedlistener)
    {
        i.a(admarvelviewextendedlistener);
    }

    public void setListener(AdMarvelViewListener admarvelviewlistener)
    {
        i.a(admarvelviewlistener);
    }

    public void setOptionalFlags(Map map)
    {
        t = map;
        String s1 = a;
        s1;
        JVM INSTR monitorenter ;
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        String s2 = (String)map.get("cached_directory");
_L1:
        a = s2;
        if (a != null && !j)
        {
            s.post(new a(getContext(), new File(a)));
            j = true;
        }
        s1;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        s1;
        JVM INSTR monitorexit ;
        throw exception;
        s2 = null;
          goto _L1
    }

    public void setTextBackgroundColor(int i1)
    {
        f = 0xff000000 | i1;
    }

    public void setTextBorderColor(int i1)
    {
        h = i1;
    }

    public void setTextFontColor(int i1)
    {
        g = 0xff000000 | i1;
    }

    public void setVisibility(int i1)
    {
        if (i1 == 8)
        {
            i1 = 4;
        }
        super.setVisibility(i1);
        requestLayout();
    }

    public void updateCurrentActivity(Activity activity)
    {
        if (activity != null)
        {
            z = new WeakReference(activity);
        }
    }


    private class k
        implements AdMarvelAdapterListener
    {

        private final WeakReference a;
        private AdMarvelAd b;

        public void onClickAd(String s1)
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            AdMarvelAd admarvelad;
            if (admarvelview != null)
            {
                if ((admarvelad = AdMarvelView.g(admarvelview)) != null)
                {
                    AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, s1, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                    return;
                }
            }
        }

        public void onClose()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            } else
            {
                com.admarvel.android.ads.AdMarvelView.a(admarvelview, false);
                AdMarvelView.d(admarvelview).b();
                return;
            }
        }

        public void onExpand()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            } else
            {
                com.admarvel.android.ads.AdMarvelView.a(admarvelview, true);
                AdMarvelView.d(admarvelview).a();
                return;
            }
        }

        public void onFailedToReceiveAd(int i1, AdMarvelUtils.ErrorReason errorreason)
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            AdMarvelAd admarvelad = AdMarvelView.g(admarvelview);
            com.admarvel.android.ads.AdMarvelView.e(admarvelview).post(admarvelview. new m());
            boolean flag = admarvelad.getRetry().equals(Boolean.valueOf(true));
            boolean flag1 = false;
            if (!flag)
            {
                continue; /* Loop/switch isn't completed */
            }
            int j1 = admarvelad.getRetrynum();
            int k1 = admarvelad.getMaxretries();
            flag1 = false;
            if (j1 > k1)
            {
                continue; /* Loop/switch isn't completed */
            }
            int l1 = 1 + admarvelad.getRetrynum();
            String s1 = admarvelad.getExcluded();
            String s2;
            String s3;
            File file;
            if (admarvelad.getExcluded() == null)
            {
                s2 = admarvelad.getBannerid();
            } else
            if (admarvelad.getExcluded().length() > 0)
            {
                s2 = (new StringBuilder()).append(s1).append(",").append(admarvelad.getBannerid()).toString();
            } else
            {
                s2 = admarvelad.getBannerid();
            }
            s3 = com.admarvel.android.ads.AdMarvelView.a;
            file = null;
            if (s3 != null)
            {
                file = new File(com.admarvel.android.ads.AdMarvelView.a);
            }
            if (admarvelview.getContext() != null)
            {
                Logging.log("Retry : onRequestAd");
                com.admarvel.android.ads.AdMarvelView.e(admarvelview).post(new b(file, admarvelview.getContext(), admarvelad.getTargetParams(), admarvelad.getPartnerId(), admarvelad.getSiteId(), admarvelad.getAndroidId(), admarvelad.getOrientation(), admarvelad.getDeviceConnectivity(), admarvelview, l1, s2, com.admarvel.android.ads.AdMarvelView.e(admarvelview)));
            }
            flag1 = true;
            if (flag1) goto _L1; else goto _L3
_L3:
            AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, i1, errorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            return;
        }

        public void onReceiveAd()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            } else
            {
                com.admarvel.android.ads.AdMarvelView.e(admarvelview).post(admarvelview. new e(AdMarvelView.g(admarvelview)));
                return;
            }
        }

        public k()
        {
            a = new WeakReference(AdMarvelView.this);
            AdMarvelAd admarvelad;
            if (a.get() != null)
            {
                admarvelad = AdMarvelView.g((AdMarvelView)a.get());
            } else
            {
                admarvelad = null;
            }
            b = admarvelad;
        }

        private class m
            implements Runnable
        {

            final WeakReference a;

            public void run()
            {
                AdMarvelView admarvelview = (AdMarvelView)a.get();
                View view;
                if (admarvelview != null)
                {
                    if ((view = admarvelview.findViewWithTag("PENDING")) != null)
                    {
                        admarvelview.removeView(view);
                        return;
                    }
                }
            }

            public m()
            {
                a = new WeakReference(AdMarvelView.this);
            }
        }


        private class e
            implements Runnable
        {

            private final AdMarvelAd a;
            private final WeakReference b;

            public void run()
            {
                AdMarvelView admarvelview;
                Context context;
                View view;
                View view1;
                ab ab1;
                try
                {
                    admarvelview = (AdMarvelView)b.get();
                }
                catch (Exception exception)
                {
                    Logging.log(Log.getStackTraceString(exception));
                    return;
                }
                if (admarvelview == null)
                {
                    return;
                }
                context = admarvelview.getContext();
                if (context == null) goto _L2; else goto _L1
_L1:
                view = admarvelview.findViewWithTag("PENDING");
                if (view == null) goto _L2; else goto _L3
_L3:
                if (AdMarvelUtils.isLogDumpEnabled() && a != null)
                {
                    a.setResponseJson();
                }
                view1 = admarvelview.findViewWithTag("CURRENT");
                if (view1 == null) goto _L5; else goto _L4
_L4:
                if (!AdMarvelView.b(admarvelview) && view1.isShown()) goto _L6; else goto _L5
_L5:
                if (a == null || !a.isMustBeVisible() || a.getSdkAdNetwork() != AdMarvelUtils.SDKAdNetwork.PULSE3D) goto _L8; else goto _L7
_L7:
                view.setTag("CURRENT");
                com.admarvel.android.ads.AdMarvelView.a(admarvelview, view1);
_L16:
                if (!com.admarvel.android.ads.AdMarvelView.a(admarvelview))
                {
                    AdMarvelView.b(admarvelview, view1);
                }
                if (a == null) goto _L10; else goto _L9
_L9:
                if (!admarvelview.a()) goto _L12; else goto _L11
_L11:
                AdMarvelView.d(admarvelview).b(context, admarvelview, a.getSiteId(), a.getId(), a.getTargetParams(), a.getIpAddress());
_L10:
                if (AdMarvelUtils.isLogDumpEnabled())
                {
                    (new Handler()).postDelayed(new f(a, context), 1000L);
                }
_L14:
                ab1 = new ab(context, com.admarvel.android.ads.AdMarvelView.e(admarvelview));
                if (AdMarvelView.b && !AdMarvelView.f(admarvelview))
                {
                    (new com.admarvel.android.b.a()).a(a, context, com.admarvel.android.ads.AdMarvelView.e(admarvelview));
                    return;
                }
                  goto _L13
_L8:
                com.admarvel.android.ads.AdMarvelView.a(admarvelview, view1);
                com.admarvel.android.ads.AdMarvelView.c(admarvelview);
                view.setTag("CURRENT");
                view.setVisibility(0);
                admarvelview.setHorizontalGravity(1);
                admarvelview.removeAllViews();
                admarvelview.addView(view);
                continue; /* Loop/switch isn't completed */
_L12:
                AdMarvelView.d(admarvelview).a(context, admarvelview, a.getSiteId(), a.getId(), a.getTargetParams(), a.getIpAddress());
                  goto _L10
_L6:
                com.admarvel.android.ads.AdMarvelView.a(admarvelview, view, a);
                  goto _L14
_L13:
                if (!AdMarvelView.b)
                {
                    ab1.a(a);
                }
_L2:
                return;
                if (true) goto _L16; else goto _L15
_L15:
            }

            public e(AdMarvelAd admarvelad)
            {
                a = admarvelad;
                b = new WeakReference(AdMarvelView.this);
            }
        }

    }


    private class l
        implements s
    {

        private final WeakReference a;

        public void a()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            } else
            {
                AdMarvelView.d(admarvelview).a();
                return;
            }
        }

        public void a(AdMarvelAd admarvelad, String s1)
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            } else
            {
                AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, s1, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                return;
            }
        }

        public void a(AdMarvelWebView admarvelwebview, AdMarvelAd admarvelad)
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            } else
            {
                com.admarvel.android.ads.AdMarvelView.e(admarvelview).post(admarvelview. new e(admarvelad));
                return;
            }
        }

        public void a(AdMarvelWebView admarvelwebview, AdMarvelAd admarvelad, int i1, AdMarvelUtils.ErrorReason errorreason)
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview != null)
            {
                View view = admarvelview.findViewWithTag("PENDING");
                if (view != null)
                {
                    admarvelview.removeView(view);
                }
                if (admarvelad != null)
                {
                    AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, i1, errorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                    return;
                }
            }
        }

        public void b()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            } else
            {
                AdMarvelView.d(admarvelview).b();
                return;
            }
        }

        public l()
        {
            a = new WeakReference(AdMarvelView.this);
        }
    }


    private class g
        implements Runnable
    {

        private WeakReference a;
        private String b;

        public void run()
        {
            if (com.admarvel.android.ads.AdMarvelView.c() != null)
            {
                com.admarvel.android.ads.AdMarvelView.c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else
            if (a.get() != null && b != null)
            {
                com.admarvel.android.ads.AdMarvelView.a(new c(b, (Activity)a.get()));
                com.admarvel.android.ads.AdMarvelView.c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                return;
            }
        }

        public g(Activity activity, String s1)
        {
            a = new WeakReference(activity);
            b = s1;
        }
    }


    private class j
    {

        static void a(Activity activity)
        {
            activity.getWindow().setFlags(0x1000000, 0x1000000);
        }
    }


    private class h
        implements Runnable
    {

        private final WeakReference a;
        private final WeakReference b;

        public void run()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview != null)
            {
                Handler handler = (Handler)b.get();
                Context context = admarvelview.getContext();
                View view = admarvelview.findViewWithTag("CURRENT");
                if (view != null && (view instanceof AdMarvelWebView))
                {
                    AdMarvelAd admarvelad = ((AdMarvelWebView)view).getAdMarvelAd();
                    if (admarvelad != null)
                    {
                        (new com.admarvel.android.b.a()).a(admarvelad, context, handler);
                        return;
                    }
                }
            }
        }

        public h(Handler handler)
        {
            a = new WeakReference(AdMarvelView.this);
            b = new WeakReference(handler);
        }
    }


    private class d
        implements Runnable
    {

        private final WeakReference a;

        public void run()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            if (admarvelview == null)
            {
                return;
            }
            View view = admarvelview.findViewWithTag("CURRENT");
            com.admarvel.android.ads.AdMarvelView.a(admarvelview, view);
            if (!com.admarvel.android.ads.AdMarvelView.a(admarvelview))
            {
                AdMarvelView.b(admarvelview, view);
            }
            admarvelview.removeAllViews();
            if (AdMarvelView.d() != null)
            {
                AdMarvelView.d().clear();
            }
            com.admarvel.android.ads.b.b(admarvelview.c);
            com.admarvel.android.ads.AdMarvelInternalWebView.c();
        }

        public d()
        {
            a = new WeakReference(AdMarvelView.this);
        }
    }


    private class i
        implements Runnable
    {

        private final WeakReference a;

        public void run()
        {
            AdMarvelView admarvelview = (AdMarvelView)a.get();
            View view;
            if (admarvelview != null)
            {
                if ((view = admarvelview.findViewWithTag("CURRENT")) != null && (view instanceof AdMarvelWebView))
                {
                    ((AdMarvelWebView)view).e();
                    return;
                }
            }
        }

        public i()
        {
            a = new WeakReference(AdMarvelView.this);
        }
    }


    private class b
        implements Runnable
    {

        private final File a;
        private final WeakReference b;
        private final Map c;
        private final String d;
        private final String e;
        private final String f;
        private final int g;
        private final String h;
        private final WeakReference i;
        private final int j;
        private final String k;
        private final Handler l;

        public void run()
        {
            Context context;
            AdMarvelView admarvelview;
label0:
            {
                context = (Context)b.get();
                admarvelview = (AdMarvelView)i.get();
                if (context != null && admarvelview != null)
                {
                    if (com.admarvel.android.ads.ac.a() < 11)
                    {
                        break label0;
                    }
                    l.post(new c(a, context, c, d, e, f, g, h, admarvelview, j, k, l));
                }
                return;
            }
            q q1 = new q(a, context);
            Object aobj[] = new Object[12];
            aobj[0] = c;
            aobj[1] = d;
            aobj[2] = e;
            aobj[3] = f;
            aobj[4] = Integer.valueOf(g);
            aobj[5] = h;
            aobj[6] = admarvelview;
            aobj[7] = Integer.valueOf(j);
            aobj[8] = k;
            aobj[9] = l;
            aobj[10] = Boolean.valueOf(admarvelview.b());
            aobj[11] = Boolean.valueOf(AdMarvelView.h(admarvelview));
            q1.execute(aobj);
        }

        public b(File file, Context context, Map map, String s1, String s2, String s3, int i1, 
                String s4, AdMarvelView admarvelview, int j1, String s5, Handler handler)
        {
            b = new WeakReference(context);
            a = file;
            c = map;
            d = s1;
            e = s2;
            f = s3;
            g = i1;
            h = s4;
            i = new WeakReference(admarvelview);
            j = j1;
            k = s5;
            l = handler;
        }

        private class c
            implements Runnable
        {

            private final File a;
            private final WeakReference b;
            private final Map c;
            private final String d;
            private final String e;
            private final String f;
            private final int g;
            private final String h;
            private final WeakReference i;
            private final int j;
            private final String k;
            private final Handler l;

            public void run()
            {
                if (b.get() != null && i.get() != null)
                {
                    q q1 = new q(a, (Context)b.get());
                    java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
                    Object aobj[] = new Object[12];
                    aobj[0] = c;
                    aobj[1] = d;
                    aobj[2] = e;
                    aobj[3] = f;
                    aobj[4] = Integer.valueOf(g);
                    aobj[5] = h;
                    aobj[6] = i.get();
                    aobj[7] = Integer.valueOf(j);
                    aobj[8] = k;
                    aobj[9] = l;
                    aobj[10] = Boolean.valueOf(((AdMarvelView)i.get()).b());
                    aobj[11] = Boolean.valueOf(AdMarvelView.h((AdMarvelView)i.get()));
                    q1.executeOnExecutor(executor, aobj);
                }
            }

            public c(File file, Context context, Map map, String s1, String s2, String s3, int i1, 
                    String s4, AdMarvelView admarvelview, int j1, String s5, Handler handler)
            {
                b = new WeakReference(context);
                a = file;
                c = map;
                d = s1;
                e = s2;
                f = s3;
                g = i1;
                h = s4;
                i = new WeakReference(admarvelview);
                j = j1;
                k = s5;
                l = handler;
            }
        }

    }


    private class a
        implements Runnable
    {

        private final WeakReference a;
        private final File b;

        public void run()
        {
            Context context;
label0:
            {
                context = (Context)a.get();
                if (context != null)
                {
                    if (com.admarvel.android.ads.ac.a() < 11)
                    {
                        break label0;
                    }
                    (new com.admarvel.android.ads.d(context, b)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                }
                return;
            }
            (new com.admarvel.android.ads.d(context, b)).execute(new Object[0]);
        }

        public a(Context context, File file)
        {
            a = new WeakReference(context);
            b = file;
        }
    }

}
