// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.b;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import com.etermax.gamescommon.animations.d;
import org.a.a.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.b:
//            a, c

public final class b extends com.etermax.preguntados.b.a
{

    private static b e;
    private Context d;
    private Handler f;

    private b(Context context)
    {
        f = new Handler(Looper.getMainLooper());
        d = context;
    }

    public static b a(Context context)
    {
        if (e == null)
        {
            c c1 = c.a(null);
            e = new b(context.getApplicationContext());
            e.a();
            c.a(c1);
        }
        return e;
    }

    private void a()
    {
        c = d;
        a = com.etermax.gamescommon.animations.c.a(d);
        b = com.etermax.gamescommon.resources.c.b(d);
    }

    static void a(b b1, d d1, ViewGroup viewgroup)
    {
        b1.com.etermax.preguntados.b.a.a(d1, viewgroup);
    }

    static void a(b b1, com.etermax.preguntados.b.c ac[])
    {
        b1.com.etermax.preguntados.b.a.a(ac);
    }

    public void a(d d1, ViewGroup viewgroup)
    {
        f.post(new Runnable(d1, viewgroup) {

            final d a;
            final ViewGroup b;
            final b c;

            public void run()
            {
                com.etermax.preguntados.b.b.a(c, a, b);
            }

            
            {
                c = b.this;
                a = d1;
                b = viewgroup;
                super();
            }
        });
    }

    public void a(com.etermax.preguntados.b.c ac[])
    {
        org.a.a.a.a(new org.a.a.b("", 0, "", ac) {

            final com.etermax.preguntados.b.c a[];
            final b b;

            public void a()
            {
                try
                {
                    com.etermax.preguntados.b.b.a(b, a);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                b = b.this;
                a = ac;
                super(s, i, s1);
            }
        });
    }
}
