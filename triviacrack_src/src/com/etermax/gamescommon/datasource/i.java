// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.etermax.gamescommon.datasource.a.b;
import com.etermax.gamescommon.datasource.dto.AdsDTO;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.gamescommon.mediation.MediationManager_;
import com.etermax.tools.a.a.k;
import org.a.a.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            e, k, h, g

public final class i extends e
{

    private static i h;
    private Context g;
    private Handler i;

    private i(Context context)
    {
        i = new Handler(Looper.getMainLooper());
        g = context;
    }

    public static i a(Context context)
    {
        if (h == null)
        {
            c c1 = c.a(null);
            h = new i(context.getApplicationContext());
            h.m();
            c.a(c1);
        }
        return h;
    }

    static void a(i j, AdsDTO adsdto, Class class1, h h1, g g1)
    {
        j.com.etermax.gamescommon.datasource.e.a(adsdto, class1, h1, g1);
    }

    static void a(i j, g g1, String s)
    {
        j.com.etermax.gamescommon.datasource.e.a(g1, s);
    }

    private void m()
    {
        c = new b();
        s = g;
        u = com.etermax.tools.a.a.i.a(g);
        b = com.etermax.gamescommon.login.datasource.b.a(g);
        t = com.etermax.tools.j.c.a(g);
        a = d.b(g);
        f = MediationManager_.getInstance_(g);
        e = com.etermax.gamescommon.datasource.k.a(g);
        d = k.a(g);
        c();
    }

    public void a(AdsDTO adsdto, Class class1, h h1, g g1)
    {
        org.a.a.a.a(new org.a.a.b("", 0, "", adsdto, class1, h1, g1) {

            final AdsDTO a;
            final Class b;
            final h c;
            final g d;
            final i e;

            public void a()
            {
                try
                {
                    com.etermax.gamescommon.datasource.i.a(e, a, b, c, d);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                e = i.this;
                a = adsdto;
                b = class1;
                c = h1;
                d = g1;
                super(s, l, s1);
            }
        });
    }

    public void a(g g1, String s)
    {
        i.post(new Runnable(g1, s) {

            final g a;
            final String b;
            final i c;

            public void run()
            {
                com.etermax.gamescommon.datasource.i.a(c, a, b);
            }

            
            {
                c = i.this;
                a = g1;
                b = s;
                super();
            }
        });
    }
}
