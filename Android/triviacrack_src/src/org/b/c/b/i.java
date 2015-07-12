// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b;

import java.io.OutputStream;
import org.b.b.a.b;
import org.b.b.a.e;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;

// Referenced classes of package org.b.c.b:
//            a

public class i extends a
{

    public i()
    {
        super(k.a);
    }

    protected volatile Long a(Object obj, k k1)
    {
        return a((e)obj, k1);
    }

    protected Long a(e e1, k k1)
    {
        return Long.valueOf(e1.b());
    }

    protected volatile k a(Object obj)
    {
        return a((e)obj);
    }

    protected k a(e e1)
    {
        return k.f;
    }

    protected volatile void a(Object obj, g g1)
    {
        a((e)obj, g1);
    }

    protected void a(e e1, g g1)
    {
        org.b.d.e.a(e1.d(), g1.a());
        g1.a().flush();
    }

    protected boolean a(Class class1)
    {
        return org/b/b/a/e.isAssignableFrom(class1);
    }

    protected Object b(Class class1, d d1)
    {
        return c(class1, d1);
    }

    protected e c(Class class1, d d1)
    {
        return new b(org.b.d.e.a(d1.e()));
    }
}
