// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import org.b.c.a.i;
import org.b.c.l;

// Referenced classes of package org.b.e.a:
//            i, c, k

class q
    implements org.b.e.a.i
{

    final k a;
    private final c b;

    public q(k k1, Class class1)
    {
        a = k1;
        super();
        if (class1 != null && !java/lang/Void.equals(class1))
        {
            b = new c(class1, k1.c());
            return;
        } else
        {
            b = null;
            return;
        }
    }

    public Object a(i j)
    {
        return b(j);
    }

    public l b(i j)
    {
        if (b != null)
        {
            return new l(b.a(j), j.d(), j.a());
        } else
        {
            return new l(j.d(), j.a());
        }
    }
}
