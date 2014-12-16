// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.a.a;

import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package org.a.a:
//            a

public abstract class b
    implements Runnable
{

    private String a;
    private int b;
    private long c;
    private String d;
    private boolean e;
    private Future f;
    private AtomicBoolean g;

    public b(String s, int i, String s1)
    {
        g = new AtomicBoolean();
        if (!"".equals(s))
        {
            a = s;
        }
        if (i > 0)
        {
            b = i;
            c = System.currentTimeMillis() + (long)i;
        }
        if (!"".equals(s1))
        {
            d = s1;
        }
    }

    static String a(b b1)
    {
        return b1.d;
    }

    static Future a(b b1, Future future)
    {
        b1.f = future;
        return future;
    }

    static boolean a(b b1, boolean flag)
    {
        b1.e = flag;
        return flag;
    }

    static int b(b b1)
    {
        return b1.b;
    }

    private void b()
    {
        if (a == null && d == null)
        {
            return;
        }
        org/a/a/a;
        JVM INSTR monitorenter ;
        b b1;
        org.a.a.a.a().remove(this);
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        b1 = org.a.a.a.a(d);
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (b1.b != 0)
        {
            b1.b = Math.max(0, (int)(c - System.currentTimeMillis()));
        }
        org.a.a.a.a(b1);
        org/a/a/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        org/a/a/a;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static String c(b b1)
    {
        return b1.a;
    }

    static Future d(b b1)
    {
        return b1.f;
    }

    static AtomicBoolean e(b b1)
    {
        return b1.g;
    }

    static void f(b b1)
    {
        b1.b();
    }

    static boolean g(b b1)
    {
        return b1.e;
    }

    public abstract void a();

    public void run()
    {
        if (g.getAndSet(true))
        {
            return;
        }
        a();
        b();
        return;
        Exception exception;
        exception;
        b();
        throw exception;
    }
}
