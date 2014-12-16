// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;

import java.util.Comparator;
import java.util.Map;

// Referenced classes of package org.b.c:
//            k

final class ject
    implements Comparator
{

    public int a(k k1, k k2)
    {
        byte byte0 = -1;
        if (k1.b() && !k2.b())
        {
            byte0 = 1;
        } else
        if (!k2.b() || k1.b())
        {
            if (!k1.a().equals(k2.a()))
            {
                return 0;
            }
            if (k1.d() && !k2.d())
            {
                return 1;
            }
            if (!k2.d() || k1.d())
            {
                if (!k1.c().equals(k2.c()))
                {
                    return 0;
                }
                double d = k1.f();
                int i = Double.compare(k2.f(), d);
                if (i != 0)
                {
                    return i;
                }
                int j = k.d(k1).size();
                int l = k.d(k2).size();
                if (l >= j)
                {
                    return l != j ? 1 : 0;
                }
            }
        }
        return byte0;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((k)obj, (k)obj1);
    }

    ject()
    {
    }
}
