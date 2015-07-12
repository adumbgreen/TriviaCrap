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
        int i = -1;
        double d = k1.f();
        int j = Double.compare(k2.f(), d);
        if (j != 0)
        {
            i = j;
        } else
        {
            if (k1.b() && !k2.b())
            {
                return 1;
            }
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
                    int l = k.d(k1).size();
                    int i1 = k.d(k2).size();
                    if (i1 >= l)
                    {
                        return i1 != l ? 1 : 0;
                    }
                }
            }
        }
        return i;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((k)obj, (k)obj1);
    }

    ject()
    {
    }
}
