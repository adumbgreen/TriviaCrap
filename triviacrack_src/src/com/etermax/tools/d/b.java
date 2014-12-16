// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.d;

import java.io.FileOutputStream;
import java.io.OutputStream;

// Referenced classes of package com.etermax.tools.d:
//            d, c, a

public final class b
{

    final a a;
    private final d b;
    private boolean c;

    private b(a a1, d d1)
    {
        a = a1;
        super();
        b = d1;
    }

    b(a a1, d d1, a._cls1 _pcls1)
    {
        this(a1, d1);
    }

    static d a(b b1)
    {
        return b1.b;
    }

    static boolean a(b b1, boolean flag)
    {
        b1.c = flag;
        return flag;
    }

    public OutputStream a(int i)
    {
        a a1 = a;
        a1;
        JVM INSTR monitorenter ;
        if (d.a(b) != this)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        a1;
        JVM INSTR monitorexit ;
        throw exception;
        c c1 = new c(this, new FileOutputStream(b.b(i)), null);
        a1;
        JVM INSTR monitorexit ;
        return c1;
    }

    public void a()
    {
        if (c)
        {
            com.etermax.tools.d.a.a(a, this, false);
            a.c(d.c(b));
            return;
        } else
        {
            com.etermax.tools.d.a.a(a, this, true);
            return;
        }
    }

    public void b()
    {
        com.etermax.tools.d.a.a(a, this, false);
    }
}
