// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import org.a.a.a;
import org.a.a.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            m, ShareView

public final class o extends m
{

    private static o c;
    private Context b;

    private o(Context context)
    {
        b = context;
    }

    public static o a(Context context)
    {
        if (c == null)
        {
            c c1 = org.a.a.b.c.a(null);
            c = new o(context.getApplicationContext());
            c.a();
            org.a.a.b.c.a(c1);
        }
        return c;
    }

    private void a()
    {
        a = b;
    }

    static void a(o o1, ShareView shareview)
    {
        o1.com.etermax.preguntados.sharing.m.b(shareview);
    }

    public void b(ShareView shareview)
    {
        org.a.a.a.a(new b("", 0, "", shareview) {

            final ShareView a;
            final o b;

            public void a()
            {
                try
                {
                    com.etermax.preguntados.sharing.o.a(b, a);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                b = o.this;
                a = shareview;
                super(s, i, s1);
            }
        });
    }
}
