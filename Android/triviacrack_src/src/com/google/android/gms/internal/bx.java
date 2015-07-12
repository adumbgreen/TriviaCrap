// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

// Referenced classes of package com.google.android.gms.internal:
//            cm, ci, ew, w, 
//            fx, ft, bz, fz, 
//            gb, by, ca, cc, 
//            cd, iz, bv, cg, 
//            fq, gc

public class bx extends cm
{

    private static final int a = Color.argb(0, 0, 0, 0);
    private final Activity b;
    private ci c;
    private cd d;
    private fz e;
    private ca f;
    private cg g;
    private boolean h;
    private FrameLayout i;
    private android.webkit.WebChromeClient.CustomViewCallback j;
    private boolean k;
    private boolean l;
    private boolean m;
    private RelativeLayout n;

    public bx(Activity activity)
    {
        k = false;
        l = false;
        m = false;
        b = activity;
    }

    public static void a(Context context, ci ci1)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", ci1.n.e);
        ci.a(intent, ci1);
        intent.addFlags(0x80000);
        if (!(context instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        context.startActivity(intent);
    }

    private static android.widget.RelativeLayout.LayoutParams c(int i1, int j1, int k1, int l1)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(k1, l1);
        layoutparams.setMargins(i1, j1, 0, 0);
        layoutparams.addRule(10);
        layoutparams.addRule(9);
        return layoutparams;
    }

    private void c(boolean flag)
    {
        if (!h)
        {
            b.requestWindowFeature(1);
        }
        Window window = b.getWindow();
        if (!m || c.q.c)
        {
            window.setFlags(1024, 1024);
        }
        a(c.k);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            fx.a("Enabling hardware acceleration on the AdActivity window.");
            ft.a(window);
        }
        n = new bz(b, c.p);
        boolean flag1;
        if (!m)
        {
            n.setBackgroundColor(0xff000000);
        } else
        {
            n.setBackgroundColor(a);
        }
        b.setContentView(n);
        j();
        flag1 = c.e.f().a();
        if (flag)
        {
            e = fz.a(b, c.e.e(), true, flag1, null, c.n);
            e.f().a(null, null, c.f, c.j, true, c.o);
            e.f().a(new gc() {

                final bx a;

                public void a(fz fz1)
                {
                    fz1.c();
                }

            
            {
                a = bx.this;
                super();
            }
            });
            android.view.ViewParent viewparent;
            if (c.m != null)
            {
                e.loadUrl(c.m);
            } else
            if (c.i != null)
            {
                e.loadDataWithBaseURL(c.g, c.i, "text/html", "UTF-8", null);
            } else
            {
                throw new by("No URL or HTML to display in ad overlay.");
            }
        } else
        {
            e = c.e;
            e.setContext(b);
        }
        e.a(this);
        viewparent = e.getParent();
        if (viewparent != null && (viewparent instanceof ViewGroup))
        {
            ((ViewGroup)viewparent).removeView(e);
        }
        if (m)
        {
            e.setBackgroundColor(a);
        }
        n.addView(e, -1, -1);
        if (!flag)
        {
            e.c();
        }
        a(flag1);
    }

    private void l()
    {
        if (b.isFinishing() && !l)
        {
            l = true;
            if (b.isFinishing())
            {
                if (e != null)
                {
                    e.b();
                    n.removeView(e);
                    if (f != null)
                    {
                        e.a(false);
                        f.c.addView(e, f.a, f.b);
                    }
                }
                if (c != null && c.d != null)
                {
                    c.d.o();
                    return;
                }
            }
        }
    }

    public void a()
    {
        b.finish();
    }

    public void a(int i1)
    {
        b.setRequestedOrientation(i1);
    }

    public void a(int i1, int j1, int k1, int l1)
    {
        if (d != null)
        {
            d.setLayoutParams(c(i1, j1, k1, l1));
        }
    }

    public void a(Bundle bundle)
    {
        boolean flag = false;
        if (bundle != null)
        {
            flag = bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        }
        k = flag;
        c = ci.a(b.getIntent());
        if (c.q == null) goto _L2; else goto _L1
_L1:
        m = c.q.b;
_L4:
        by by1;
        if (c == null)
        {
            throw new by("Could not get info for ad overlay.");
        }
          goto _L3
_L10:
        return;
_L2:
        m = false;
          goto _L4
_L3:
        if (bundle != null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (c.d != null)
        {
            c.d.p();
        }
        if (c.l != 1 && c.c != null)
        {
            c.c.r();
        }
        c.l;
        JVM INSTR tableswitch 1 4: default 196
    //                   1 207
    //                   2 213
    //                   3 237
    //                   4 243;
           goto _L5 _L6 _L7 _L8 _L9
_L5:
        throw new by("Could not determine ad overlay type.");
_L6:
        c(false);
        return;
_L7:
        try
        {
            f = new ca(c.e);
            c(false);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (by by1)
        {
            fx.e(by1.getMessage());
            b.finish();
        }
          goto _L10
_L8:
        c(true);
        return;
_L9:
        if (k)
        {
            b.finish();
            return;
        }
        if (bv.a(b, c.b, c.j)) goto _L10; else goto _L11
_L11:
        b.finish();
        return;
          goto _L4
    }

    public void a(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        i = new FrameLayout(b);
        i.setBackgroundColor(0xff000000);
        i.addView(view, -1, -1);
        b.setContentView(i);
        j();
        j = customviewcallback;
    }

    public void a(boolean flag)
    {
        byte byte0;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        byte byte1;
        if (flag)
        {
            byte0 = 50;
        } else
        {
            byte0 = 32;
        }
        g = new cg(b, byte0);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(10);
        if (flag)
        {
            byte1 = 11;
        } else
        {
            byte1 = 9;
        }
        layoutparams.addRule(byte1);
        g.a(c.h);
        n.addView(g, layoutparams);
    }

    public cd b()
    {
        return d;
    }

    public void b(int i1, int j1, int k1, int l1)
    {
        if (d == null)
        {
            d = new cd(b, e);
            n.addView(d, 0, c(i1, j1, k1, l1));
            e.f().a(false);
        }
    }

    public void b(Bundle bundle)
    {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", k);
    }

    public void b(boolean flag)
    {
        if (g != null)
        {
            g.a(flag);
        }
    }

    public void c()
    {
        if (c != null)
        {
            a(c.k);
        }
        if (i != null)
        {
            b.setContentView(n);
            j();
            i.removeAllViews();
            i = null;
        }
        if (j != null)
        {
            j.onCustomViewHidden();
            j = null;
        }
    }

    public void d()
    {
    }

    public void e()
    {
    }

    public void f()
    {
        if (c != null && c.l == 4)
        {
            if (k)
            {
                b.finish();
            } else
            {
                k = true;
            }
        }
        if (e != null)
        {
            fq.b(e);
        }
    }

    public void g()
    {
        if (d != null)
        {
            d.c();
        }
        c();
        if (e != null && (!b.isFinishing() || f == null))
        {
            fq.a(e);
        }
        l();
    }

    public void h()
    {
        l();
    }

    public void i()
    {
        if (d != null)
        {
            d.a();
        }
        if (e != null)
        {
            n.removeView(e);
        }
        l();
    }

    public void j()
    {
        h = true;
    }

    public void k()
    {
        n.removeView(g);
        a(true);
    }

}
