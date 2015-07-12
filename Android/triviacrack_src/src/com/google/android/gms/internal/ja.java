// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import com.google.android.gms.a.a;
import com.google.android.gms.a.d;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.ArrayList;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            s, ai, an, aq, 
//            az, cc, ch, ef, 
//            fl, iz, jd, jg, 
//            c, fq, fg, fz, 
//            fx, o, jb, fh, 
//            ew, ay, be, aw, 
//            bj, am, fj, eq, 
//            fw, ib, dc, cu, 
//            aj, fs, ba, fm, 
//            gb, jf, d, y, 
//            cv, du, cr, cw, 
//            dh, ee, w, ci, 
//            bx, fo, bg

public class ja extends s
    implements ai, an, aq, az, cc, ch, ef, fl, iz
{

    private final bg a;
    private final jd b;
    private final jg c = new jg(this);
    private final c d = new c();
    private boolean e;
    private final ComponentCallbacks f = new ComponentCallbacks() {

        final ja a;

        public void onConfigurationChanged(Configuration configuration)
        {
            if (com.google.android.gms.internal.ja.a(a) != null && com.google.android.gms.internal.ja.a(a).i != null && com.google.android.gms.internal.ja.a(a).i.b != null)
            {
                com.google.android.gms.internal.ja.a(a).i.b.a();
            }
        }

        public void onLowMemory()
        {
        }

            
            {
                a = ja.this;
                super();
            }
    };

    public ja(Context context, am am1, String s1, bg bg, ew ew1)
    {
        b = new jd(context, am1, s1, ew1);
        a = bg;
        fq.b(context);
        s();
    }

    private void A()
    {
        if (b.i != null)
        {
            b.i.b.destroy();
            b.i = null;
        }
    }

    static jd a(ja ja1)
    {
        return ja1.b;
    }

    private void a(int i1)
    {
        fx.e((new StringBuilder()).append("Failed to load ad: ").append(i1).toString());
        if (b.f == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        b.f.a(i1);
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Could not call AdListener.onAdFailedToLoad().", remoteexception);
        return;
    }

    private void a(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-2, -2);
        b.a.addView(view, layoutparams);
    }

    private void b(boolean flag)
    {
        if (b.i == null)
        {
            fx.e("Ad state was null when trying to ping impression URLs.");
        } else
        {
            com.google.android.gms.internal.fx.a("Pinging Impression URLs.");
            b.j.a();
            if (b.i.e != null)
            {
                com.google.android.gms.internal.fq.a(b.c, b.e.b, b.i.e);
            }
            if (b.i.o != null && b.i.o.d != null)
            {
                com.google.android.gms.internal.be.a(b.c, b.e.b, b.i, b.b, flag, b.i.o.d);
            }
            if (b.i.l != null && b.i.l.f != null)
            {
                com.google.android.gms.internal.be.a(b.c, b.e.b, b.i, b.b, flag, b.i.l.f);
                return;
            }
        }
    }

    private boolean b(fg fg1)
    {
        if (fg1.k)
        {
            View view1;
            View view2;
            try
            {
                view1 = (View)com.google.android.gms.a.d.a(fg1.m.a());
            }
            catch (RemoteException remoteexception1)
            {
                fx.c("Could not get View from mediation adapter.", remoteexception1);
                return false;
            }
            view2 = b.a.getNextView();
            if (view2 != null)
            {
                b.a.removeView(view2);
            }
            try
            {
                a(view1);
            }
            catch (Throwable throwable)
            {
                fx.c("Could not add mediation view to view hierarchy.", throwable);
                return false;
            }
        } else
        if (fg1.r != null)
        {
            fg1.b.a(fg1.r);
            b.a.removeAllViews();
            b.a.setMinimumWidth(fg1.r.g);
            b.a.setMinimumHeight(fg1.r.d);
            a(fg1.b);
        }
        if (b.a.getChildCount() > 1)
        {
            b.a.showNext();
        }
        if (b.i != null)
        {
            View view = b.a.getNextView();
            if (view instanceof fz)
            {
                ((fz)view).a(b.c, b.h);
            } else
            if (view != null)
            {
                b.a.removeView(view);
            }
            if (b.i.m != null)
            {
                try
                {
                    b.i.m.c();
                }
                catch (RemoteException remoteexception)
                {
                    fx.e("Could not destroy previous mediation adapter.");
                }
            }
        }
        b.a.setVisibility(0);
        return true;
    }

    private eq c(aj aj1)
    {
        ApplicationInfo applicationinfo = b.c.getApplicationInfo();
        android.content.pm.PackageInfo packageinfo1 = b.c.getPackageManager().getPackageInfo(applicationinfo.packageName, 0);
        android.content.pm.PackageInfo packageinfo = packageinfo1;
_L1:
        Bundle bundle;
        if (!b.h.e && b.a.getParent() != null)
        {
            int ai1[] = new int[2];
            b.a.getLocationOnScreen(ai1);
            int i1 = ai1[0];
            int j1 = ai1[1];
            DisplayMetrics displaymetrics = b.c.getResources().getDisplayMetrics();
            int k1 = b.a.getWidth();
            int l1 = b.a.getHeight();
            android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
            String s1;
            Bundle bundle1;
            int i2;
            if (b.a.isShown() && i1 + k1 > 0 && j1 + l1 > 0 && i1 <= displaymetrics.widthPixels && j1 <= displaymetrics.heightPixels)
            {
                i2 = 1;
            } else
            {
                i2 = 0;
            }
            bundle = new Bundle(5);
            bundle.putInt("x", i1);
            bundle.putInt("y", j1);
            bundle.putInt("width", k1);
            bundle.putInt("height", l1);
            bundle.putInt("visible", i2);
        } else
        {
            bundle = null;
        }
        s1 = fj.b();
        b.j = new fh(s1, b.b);
        b.j.a(aj1);
        bundle1 = com.google.android.gms.internal.fj.a(b.c, this, s1);
        return new eq(bundle, aj1, b.h, b.b, applicationinfo, packageinfo, s1, com.google.android.gms.internal.fj.a, b.e, bundle1);
        namenotfoundexception;
        packageinfo = null;
          goto _L1
    }

    private void s()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14 && b != null && b.c != null)
        {
            b.c.registerComponentCallbacks(f);
        }
    }

    private void t()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14 && b != null && b.c != null)
        {
            b.c.unregisterComponentCallbacks(f);
        }
    }

    private void u()
    {
        fx.c("Ad closing.");
        if (b.f == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        b.f.a();
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Could not call AdListener.onAdClosed().", remoteexception);
        return;
    }

    private void v()
    {
        fx.c("Ad leaving application.");
        if (b.f == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        b.f.b();
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Could not call AdListener.onAdLeftApplication().", remoteexception);
        return;
    }

    private void w()
    {
        fx.c("Ad opening.");
        if (b.f == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        b.f.d();
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Could not call AdListener.onAdOpened().", remoteexception);
        return;
    }

    private void x()
    {
        fx.c("Ad finished loading.");
        if (b.f == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        b.f.c();
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Could not call AdListener.onAdLoaded().", remoteexception);
        return;
    }

    private boolean y()
    {
        boolean flag = true;
        if (!com.google.android.gms.internal.fq.a(b.c.getPackageManager(), b.c.getPackageName(), "android.permission.INTERNET"))
        {
            if (!b.h.e)
            {
                com.google.android.gms.internal.fw.a(b.a, b.h, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            }
            flag = false;
        }
        if (!com.google.android.gms.internal.fq.a(b.c))
        {
            if (!b.h.e)
            {
                com.google.android.gms.internal.fw.a(b.a, b.h, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            }
            flag = false;
        }
        if (!flag && !b.h.e)
        {
            b.a.setVisibility(0);
        }
        return flag;
    }

    private void z()
    {
        if (b.i == null)
        {
            fx.e("Ad state was null when trying to ping click URLs.");
        } else
        {
            com.google.android.gms.internal.fx.a("Pinging click URLs.");
            b.j.b();
            if (b.i.c != null)
            {
                com.google.android.gms.internal.fq.a(b.c, b.e.b, b.i.c);
            }
            if (b.i.o != null && b.i.o.c != null)
            {
                com.google.android.gms.internal.be.a(b.c, b.e.b, b.i, b.b, false, b.i.o.c);
                return;
            }
        }
    }

    public a a()
    {
        com.google.android.gms.internal.ib.a("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.a.d.a(b.a);
    }

    public void a(am am1)
    {
        com.google.android.gms.internal.ib.a("setAdSize must be called on the main UI thread.");
        b.h = am1;
        if (b.i != null)
        {
            b.i.b.a(am1);
        }
        if (b.a.getChildCount() > 1)
        {
            b.a.removeView(b.a.getNextView());
        }
        b.a.setMinimumWidth(am1.g);
        b.a.setMinimumHeight(am1.d);
        b.a.requestLayout();
    }

    public void a(dh dh1)
    {
        com.google.android.gms.internal.ib.a("setInAppPurchaseListener must be called on the main UI thread.");
        b.m = dh1;
    }

    public void a(du du1, String s1)
    {
        com.google.android.gms.internal.ib.a("setPlayStorePurchaseParams must be called on the main UI thread.");
        b.n = new dc(s1);
        b.l = du1;
        if (!fj.f() && du1 != null)
        {
            (new cu(b.c, b.l, b.n)).e();
        }
    }

    public void a(fg fg1)
    {
        boolean flag;
        b.g = null;
        if (fg1.d != -2 && fg1.d != 3)
        {
            com.google.android.gms.internal.fj.a(b.a());
        }
        if (fg1.d == -1)
        {
            return;
        }
        if (fg1.a.c != null)
        {
            flag = fg1.a.c.getBoolean("_noRefresh", false);
        } else
        {
            flag = false;
        }
        if (!b.h.e) goto _L2; else goto _L1
_L1:
        com.google.android.gms.internal.fq.a(fg1.b);
_L4:
        if (fg1.d == 3 && fg1.o != null && fg1.o.e != null)
        {
            com.google.android.gms.internal.fx.a("Pinging no fill URLs.");
            com.google.android.gms.internal.be.a(b.c, b.e.b, fg1, b.b, false, fg1.o.e);
        }
        if (fg1.d != -2)
        {
            a(fg1.d);
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (!flag)
        {
            if (fg1.h > 0L)
            {
                c.a(fg1.a, fg1.h);
            } else
            if (fg1.o != null && fg1.o.g > 0L)
            {
                c.a(fg1.a, fg1.o.g);
            } else
            if (!fg1.k && fg1.d == 2)
            {
                c.a(fg1.a);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!b.h.e)
        {
            if (!b(fg1))
            {
                a(0);
                return;
            }
            if (b.a != null)
            {
                com.google.android.gms.internal.jb.a(b.a).a(fg1.v);
            }
        }
        if (b.i != null && b.i.p != null)
        {
            b.i.p.a(null);
        }
        if (fg1.p != null)
        {
            fg1.p.a(this);
        }
        d.b(b.i);
        b.i = fg1;
        if (fg1.r != null)
        {
            b.h = fg1.r;
        }
        b.j.a(fg1.t);
        b.j.b(fg1.u);
        b.j.a(b.h.e);
        b.j.b(fg1.k);
        if (!b.h.e)
        {
            b(false);
        }
        if (b.o == null)
        {
            b.o = new fm(b.b);
        }
        int i1;
        int j1;
        if (fg1.o != null)
        {
            i1 = fg1.o.h;
            j1 = fg1.o.i;
        } else
        {
            i1 = 0;
            j1 = 0;
        }
        b.o.a(i1, j1);
        if (!b.h.e && fg1.b != null && (fg1.b.f().a() || fg1.j != null))
        {
            com.google.android.gms.internal.d d1 = d.a(b.h, b.i);
            if (fg1.b.f().a() && d1 != null)
            {
                d1.a(new jf(fg1.b));
            }
        }
        b.i.b.a();
        x();
        return;
    }

    public void a(o o1)
    {
        com.google.android.gms.internal.ib.a("setAdListener must be called on the main UI thread.");
        b.f = o1;
    }

    public void a(y y1)
    {
        com.google.android.gms.internal.ib.a("setAppEventListener must be called on the main UI thread.");
        b.k = y1;
    }

    public void a(String s1, String s2)
    {
        if (b.k == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        b.k.a(s1, s2);
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Could not call the AppEventListener.", remoteexception);
        return;
    }

    public void a(String s1, ArrayList arraylist)
    {
        cv cv1 = new cv(s1, arraylist, b.c, b.e.b);
        if (b.m != null) goto _L2; else goto _L1
_L1:
        fx.e("InAppPurchaseListener is not set. Try to launch default purchase flow.");
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(b.c) == 0) goto _L4; else goto _L3
_L3:
        fx.e("Google Play Service unavailable, cannot launch default purchase flow.");
_L6:
        return;
_L4:
        if (b.l == null)
        {
            fx.e("PlayStorePurchaseListener is not set.");
            return;
        }
        if (b.n == null)
        {
            fx.e("PlayStorePurchaseVerifier is not initialized.");
            return;
        }
        boolean flag = b.l.a(s1);
        if (!flag) goto _L6; else goto _L5
_L5:
        com.google.android.gms.internal.cw.a(b.c, b.e.e, new cr(cv1, b.l, b.n, b.c));
        return;
        RemoteException remoteexception1;
        remoteexception1;
        fx.e("Could not start In-App purchase.");
        if (true) goto _L5; else goto _L2
_L2:
        try
        {
            b.m.a(cv1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.e("Could not start In-App purchase.");
        }
        return;
    }

    public void a(HashSet hashset)
    {
        b.a(hashset);
    }

    public void a(boolean flag)
    {
        b.p = flag;
    }

    public boolean a(aj aj1)
    {
        com.google.android.gms.internal.ib.a("loadAd must be called on the main UI thread.");
        if (b.g == null) goto _L2; else goto _L1
_L1:
        fx.e("An ad request is already in progress. Aborting.");
_L4:
        return false;
_L2:
        if (b.h.e && b.i != null)
        {
            fx.e("An interstitial is already loading. Aborting.");
            return false;
        }
        if (!y()) goto _L4; else goto _L3
_L3:
        eq eq1;
        fx.c("Starting ad request.");
        if (!aj1.f)
        {
            fx.c((new StringBuilder()).append("Use AdRequest.Builder.addTestDevice(\"").append(com.google.android.gms.internal.fw.a(b.c)).append("\") to get test ads on this device.").toString());
        }
        c.a();
        b.p = false;
        eq1 = c(aj1);
        if (!b.h.e) goto _L6; else goto _L5
_L5:
        fz fz2;
        fz fz3 = com.google.android.gms.internal.fz.a(b.c, b.h, false, false, b.d, b.e);
        fz3.f().a(this, null, this, this, true, this, this);
        fz2 = fz3;
_L8:
        b.g = com.google.android.gms.internal.ee.a(b.c, eq1, b.d, fz2, a, this);
        return true;
_L6:
        View view;
        fz fz1;
        view = b.a.getNextView();
        if (!(view instanceof fz))
        {
            break; /* Loop/switch isn't completed */
        }
        fz1 = (fz)view;
        fz1.a(b.c, b.h);
_L9:
        fz1.f().a(this, this, this, this, false, this);
        fz2 = fz1;
        if (true) goto _L8; else goto _L7
_L7:
        if (view != null)
        {
            b.a.removeView(view);
        }
        fz1 = com.google.android.gms.internal.fz.a(b.c, b.h, false, false, b.d, b.e);
        if (b.h.h == null)
        {
            a(((View) (fz1)));
        }
          goto _L9
        if (true) goto _L8; else goto _L10
_L10:
    }

    public void b()
    {
        com.google.android.gms.internal.ib.a("destroy must be called on the main UI thread.");
        t();
        b.f = null;
        b.k = null;
        c.a();
        d.a();
        g();
        if (b.a != null)
        {
            b.a.removeAllViews();
        }
        if (b.i != null && b.i.b != null)
        {
            b.i.b.destroy();
        }
        if (b.i == null || b.i.m == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        b.i.m.c();
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.e("Could not destroy mediation adapter.");
        return;
    }

    public void b(aj aj1)
    {
        android.view.ViewParent viewparent = b.a.getParent();
        if ((viewparent instanceof View) && ((View)viewparent).isShown() && com.google.android.gms.internal.fq.a() && !e)
        {
            a(aj1);
            return;
        } else
        {
            fx.c("Ad is not visible. Not refreshing ad.");
            c.a(aj1);
            return;
        }
    }

    public boolean c()
    {
        com.google.android.gms.internal.ib.a("isLoaded must be called on the main UI thread.");
        return b.g == null && b.i != null;
    }

    public void d()
    {
        com.google.android.gms.internal.ib.a("pause must be called on the main UI thread.");
        if (b.i != null)
        {
            com.google.android.gms.internal.fq.a(b.i.b);
        }
        if (b.i != null && b.i.m != null)
        {
            try
            {
                b.i.m.d();
            }
            catch (RemoteException remoteexception)
            {
                fx.e("Could not pause mediation adapter.");
            }
        }
        d.b();
        c.b();
    }

    public void e()
    {
        com.google.android.gms.internal.ib.a("resume must be called on the main UI thread.");
        if (b.i != null)
        {
            fq.b(b.i.b);
        }
        if (b.i != null && b.i.m != null)
        {
            try
            {
                b.i.m.e();
            }
            catch (RemoteException remoteexception)
            {
                fx.e("Could not resume mediation adapter.");
            }
        }
        c.c();
        d.c();
    }

    public void f()
    {
        com.google.android.gms.internal.ib.a("showInterstitial must be called on the main UI thread.");
        if (!b.h.e)
        {
            fx.e("Cannot call showInterstitial on a banner ad.");
            return;
        }
        if (b.i == null)
        {
            fx.e("The interstitial has not loaded.");
            return;
        }
        if (b.i.b.i())
        {
            fx.e("The interstitial is already showing.");
            return;
        }
        b.i.b.a(true);
        if (b.i.b.f().a() || b.i.j != null)
        {
            com.google.android.gms.internal.d d1 = d.a(b.h, b.i);
            if (b.i.b.f().a() && d1 != null)
            {
                d1.a(new jf(b.i.b));
            }
        }
        if (b.i.k)
        {
            try
            {
                b.i.m.b();
                return;
            }
            catch (RemoteException remoteexception)
            {
                fx.c("Could not show interstitial.", remoteexception);
            }
            A();
            return;
        }
        w w1 = new w(b.p, false);
        if (b.c instanceof Activity)
        {
            Window window = ((Activity)b.c).getWindow();
            Rect rect = new Rect();
            Rect rect1 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect);
            window.getDecorView().getWindowVisibleDisplayFrame(rect1);
            if (rect.bottom != 0 && rect1.bottom != 0)
            {
                boolean flag = b.p;
                ci ci1;
                boolean flag1;
                if (rect.top == rect1.top)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                w1 = new w(flag, flag1);
            }
        }
        ci1 = new ci(this, this, this, b.i.b, b.i.g, b.e, b.i.v, w1);
        com.google.android.gms.internal.bx.a(b.c, ci1);
    }

    public void g()
    {
        com.google.android.gms.internal.ib.a("stopLoading must be called on the main UI thread.");
        if (b.i != null)
        {
            b.i.b.stopLoading();
            b.i = null;
        }
        if (b.g != null)
        {
            b.g.f();
        }
    }

    public void h()
    {
        com.google.android.gms.internal.ib.a("recordManualImpression must be called on the main UI thread.");
        if (b.i == null)
        {
            fx.e("Ad state was null when trying to ping manual tracking URLs.");
        } else
        {
            com.google.android.gms.internal.fx.a("Pinging manual tracking URLs.");
            if (b.i.f != null)
            {
                com.google.android.gms.internal.fq.a(b.c, b.e.b, b.i.f);
                return;
            }
        }
    }

    public am i()
    {
        com.google.android.gms.internal.ib.a("getAdSize must be called on the main UI thread.");
        return b.h;
    }

    public void j()
    {
        r();
    }

    public void k()
    {
        o();
    }

    public void l()
    {
        q();
    }

    public void m()
    {
        p();
    }

    public void n()
    {
        if (b.i != null)
        {
            fx.e((new StringBuilder()).append("Mediation adapter ").append(b.i.n).append(" refreshed, but mediation adapters should never refresh.").toString());
        }
        b(true);
        x();
    }

    public void o()
    {
        d.b(b.i);
        if (b.h.e)
        {
            A();
        }
        e = false;
        u();
        b.j.c();
    }

    public void p()
    {
        if (b.h.e)
        {
            b(false);
        }
        e = true;
        w();
    }

    public void q()
    {
        v();
    }

    public void r()
    {
        z();
    }
}
