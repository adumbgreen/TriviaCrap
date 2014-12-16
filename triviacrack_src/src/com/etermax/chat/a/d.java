// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;

import com.etermax.chat.a.a.g;
import java.util.Comparator;

// Referenced classes of package com.etermax.chat.a:
//            a

class d
    implements Comparator
{

    final a a;

    d(a a1)
    {
        a = a1;
        super();
    }

    public int a(g g1, g g2)
    {
        if (g1.f() == g2.f())
        {
            return 0;
        }
        return g1.f() <= g2.f() ? -1 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((g)obj, (g)obj1);
    }
}
