// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;

import org.b.d.h;

// Referenced classes of package org.b.c:
//            c

public class b
{

    public static final b a = new b();
    private final c b;
    private final Object c;

    protected b()
    {
        this(null, null);
    }

    public b(Object obj)
    {
        this(obj, null);
    }

    public b(Object obj, h h)
    {
        c = obj;
        c c1 = new c();
        if (h != null)
        {
            c1.putAll(h);
        }
        b = org.b.c.c.a(c1);
    }

    public b(h h)
    {
        this(null, h);
    }

    public c a()
    {
        return b;
    }

    public Object b()
    {
        return c;
    }

    public boolean c()
    {
        return c != null;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("<");
        if (c != null)
        {
            stringbuilder.append(c);
            if (b != null)
            {
                stringbuilder.append(',');
            }
        }
        if (b != null)
        {
            stringbuilder.append(b);
        }
        stringbuilder.append('>');
        return stringbuilder.toString();
    }

}
