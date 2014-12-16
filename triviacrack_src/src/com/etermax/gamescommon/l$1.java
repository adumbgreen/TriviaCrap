// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import com.etermax.gamescommon.g.d;
import com.etermax.gamescommon.g.i;
import com.etermax.gamescommon.g.j;

// Referenced classes of package com.etermax.gamescommon:
//            l, n

class a
    implements d
{

    final n a;
    final l b;

    public void a(j j, i k)
    {
        if (!k.c())
        {
            b.e((new StringBuilder()).append("Error consuming ").append(j).toString());
            if (a != null)
            {
                a.b();
            }
        } else
        {
            b.d((new StringBuilder()).append("Consumed ").append(j).toString());
            if (a != null)
            {
                a.a();
                return;
            }
        }
    }

    (l l1, n n1)
    {
        b = l1;
        a = n1;
        super();
    }
}
