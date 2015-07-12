// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a.a;

import java.util.List;
import org.b.c.a.g;
import org.b.c.a.o;
import org.b.d.c;

// Referenced classes of package org.b.c.a.a:
//            a

public abstract class b extends a
{

    private List a;

    public b()
    {
    }

    public g a()
    {
        g g = super.a();
        if (!c.a(b()))
        {
            return new o(g, b());
        } else
        {
            return g;
        }
    }

    public void a(List list)
    {
        a = list;
    }

    public List b()
    {
        return a;
    }
}
