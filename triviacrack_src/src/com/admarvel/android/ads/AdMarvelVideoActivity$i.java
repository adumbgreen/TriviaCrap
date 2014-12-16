// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;

class e
{

    private Handler a;
    private Runnable b;
    private int c;
    private boolean d;
    private boolean e;
    private Runnable f = new Runnable() {

        final AdMarvelVideoActivity.i a;

        public void run()
        {
            if (!AdMarvelVideoActivity.i.a(a))
            {
                return;
            }
            AdMarvelVideoActivity.i.c(a).post(AdMarvelVideoActivity.i.b(a));
            if (AdMarvelVideoActivity.i.d(a))
            {
                AdMarvelVideoActivity.i.a(a, false);
                return;
            } else
            {
                AdMarvelVideoActivity.i.c(a).postDelayed(AdMarvelVideoActivity.i.e(a), AdMarvelVideoActivity.i.f(a));
                return;
            }
        }

            
            {
                a = AdMarvelVideoActivity.i.this;
                super();
            }
    };

    static boolean a(e e1)
    {
        return e1.d;
    }

    static boolean a(d d1, boolean flag)
    {
        d1.d = flag;
        return flag;
    }

    static Runnable b(d d1)
    {
        return d1.b;
    }

    static Handler c(b b1)
    {
        return b1.a;
    }

    static boolean d(a a1)
    {
        return a1.e;
    }

    static Runnable e(e e1)
    {
        return e1.f;
    }

    static int f(f f1)
    {
        return f1.c;
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

    public _cls1.a(Handler handler, Runnable runnable, int j)
    {
        d = false;
        e = false;
        a = handler;
        b = runnable;
        c = j;
    }

    public c(Handler handler, Runnable runnable, int j, boolean flag)
    {
        this(handler, runnable, j);
        e = flag;
    }
}
