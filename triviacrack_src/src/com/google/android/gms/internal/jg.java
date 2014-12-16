// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            jh, fw, fx, aj, 
//            ja

public final class jg
{

    private final jh a;
    private final Runnable b;
    private aj c;
    private boolean d;
    private boolean e;
    private long f;

    public jg(ja ja)
    {
        this(ja, new jh(fw.a));
    }

    jg(ja ja, jh jh1)
    {
        d = false;
        e = false;
        f = 0L;
        a = jh1;
        b = new Runnable(ja) {

            final ja a;
            final jg b;
            private final WeakReference c;

            public void run()
            {
                jg.a(b, false);
                ja ja1 = (ja)c.get();
                if (ja1 != null)
                {
                    ja1.b(jg.a(b));
                }
            }

            
            {
                b = jg.this;
                a = ja1;
                super();
                c = new WeakReference(a);
            }
        };
    }

    static aj a(jg jg1)
    {
        return jg1.c;
    }

    static boolean a(jg jg1, boolean flag)
    {
        jg1.d = flag;
        return flag;
    }

    public void a()
    {
        d = false;
        a.a(b);
    }

    public void a(aj aj)
    {
        a(aj, 60000L);
    }

    public void a(aj aj, long l)
    {
        if (d)
        {
            fx.e("An ad refresh is already scheduled.");
        } else
        {
            c = aj;
            d = true;
            f = l;
            if (!e)
            {
                fx.c((new StringBuilder()).append("Scheduling ad refresh ").append(l).append(" milliseconds from now.").toString());
                a.a(b, l);
                return;
            }
        }
    }

    public void b()
    {
        e = true;
        if (d)
        {
            a.a(b);
        }
    }

    public void c()
    {
        e = false;
        if (d)
        {
            d = false;
            a(c, f);
        }
    }
}
