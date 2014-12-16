// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;

import java.util.Comparator;

// Referenced classes of package org.b.c:
//            a

final class ject
    implements Comparator
{

    public int a(a a1, a a2)
    {
        double d = a1.c();
        int i = Double.compare(a2.c(), d);
        if (i != 0)
        {
            return i;
        }
        if (a1.b() && !a2.b())
        {
            return 1;
        }
        if (a2.b() && !a1.b())
        {
            return -1;
        }
        return a1.a().equals(a2.a()) ? 0 : 0;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((a)obj, (a)obj1);
    }

    ject()
    {
    }
}
