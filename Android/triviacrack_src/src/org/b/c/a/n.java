// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.util.Iterator;
import java.util.List;
import org.b.c.c;
import org.b.c.h;
import org.b.d.e;

// Referenced classes of package org.b.c.a:
//            f, m, h, g, 
//            e, i

class n
    implements f
{

    final m a;
    private final Iterator b;

    private n(m m1)
    {
        a = m1;
        super();
        b = m.a(m1).iterator();
    }

    n(m m1, m._cls1 _pcls1)
    {
        this(m1);
    }

    public i a(h h1, byte abyte0[])
    {
        if (b.hasNext())
        {
            return ((org.b.c.a.h)b.next()).a(h1, abyte0, this);
        }
        org.b.c.a.e e1 = m.b(a).a(h1.c(), h1.b());
        e1.d().putAll(h1.d());
        if (abyte0.length > 0)
        {
            e.a(abyte0, e1.a());
        }
        return e1.e();
    }
}
