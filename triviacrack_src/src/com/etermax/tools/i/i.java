// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import org.a.a.a;
import org.a.a.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.tools.i:
//            g, h

public final class i extends g
{

    private static i b;
    private Context a;
    private Handler c;

    private i(Context context)
    {
        c = new Handler(Looper.getMainLooper());
        a = context;
    }

    public static i a(Context context)
    {
        if (b == null)
        {
            c c1 = org.a.a.b.c.a(null);
            b = new i(context.getApplicationContext());
            b.a();
            org.a.a.b.c.a(c1);
        }
        return b;
    }

    private void a()
    {
    }

    static void a(i j, h h)
    {
        j.com.etermax.tools.i.g.b(h);
    }

    static void a(i j, h h, Exception exception)
    {
        j.com.etermax.tools.i.g.a(h, exception);
    }

    static void a(i j, h h, Object obj)
    {
        j.com.etermax.tools.i.g.a(h, obj);
    }

    public void a(h h, Exception exception)
    {
        c.post(new Runnable(h, exception) {

            final h a;
            final Exception b;
            final i c;

            public void run()
            {
                com.etermax.tools.i.i.a(c, a, b);
            }

            
            {
                c = i.this;
                a = h;
                b = exception;
                super();
            }
        });
    }

    public void a(h h, Object obj)
    {
        c.post(new Runnable(h, obj) {

            final h a;
            final Object b;
            final i c;

            public void run()
            {
                com.etermax.tools.i.i.a(c, a, b);
            }

            
            {
                c = i.this;
                a = h;
                b = obj;
                super();
            }
        });
    }

    public void b(h h)
    {
        org.a.a.a.a(new b("", 0, "", h) {

            final h a;
            final i b;

            public void a()
            {
                try
                {
                    com.etermax.tools.i.i.a(b, a);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                b = i.this;
                a = h;
                super(s, k, s1);
            }
        });
    }
}
