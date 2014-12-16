// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.content.Context;
import com.etermax.gamescommon.datasource.a.b;
import com.etermax.gamescommon.notification.e;
import com.etermax.tools.a.a.i;
import com.etermax.tools.a.a.k;
import java.util.Date;
import org.a.a.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            a, c

public final class d extends com.etermax.gamescommon.datasource.a
{

    private static d g;
    private Context f;

    private d(Context context)
    {
        f = context;
    }

    public static d a(Context context)
    {
        if (g == null)
        {
            c c1 = c.a(null);
            g = new d(context.getApplicationContext());
            g.f();
            c.a(c1);
        }
        return g;
    }

    static void a(d d1, Long long1, Date date, com.etermax.gamescommon.datasource.c c1)
    {
        d1.com.etermax.gamescommon.datasource.a.a(long1, date, c1);
    }

    private void f()
    {
        c = new b();
        s = f;
        t = com.etermax.tools.j.c.a(f);
        u = i.a(f);
        a = com.etermax.gamescommon.login.datasource.d.b(f);
        b = com.etermax.gamescommon.login.datasource.b.a(f);
        e = e.a(f);
        d = k.a(f);
        c();
    }

    public void a(Long long1, Date date, com.etermax.gamescommon.datasource.c c1)
    {
        org.a.a.a.a(new org.a.a.b("", 0, "", long1, date, c1) {

            final Long a;
            final Date b;
            final com.etermax.gamescommon.datasource.c c;
            final d d;

            public void a()
            {
                try
                {
                    com.etermax.gamescommon.datasource.d.a(d, a, b, c);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                d = d.this;
                a = long1;
                b = date;
                c = c1;
                super(s, j, s1);
            }
        });
    }
}
