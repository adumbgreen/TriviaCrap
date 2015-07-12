// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import com.etermax.gamescommon.g.a;
import com.etermax.gamescommon.g.h;
import com.etermax.gamescommon.g.i;
import com.etermax.gamescommon.g.j;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon:
//            l

class a
    implements h
{

    final l a;

    public void a(i k, a a1)
    {
        a.d("Query inventory finished.");
        if (k.d())
        {
            a.e((new StringBuilder()).append("Failed to query inventory: ").append(k).toString());
            return;
        }
        a.d("Query inventory was successful.");
        j j1;
        for (Iterator iterator = a1.b().iterator(); iterator.hasNext(); a.a(l.b(a), j1, null))
        {
            j1 = (j)iterator.next();
        }

        a.d("Initial inventory query finished; enabling main UI.");
    }

    (l l1)
    {
        a = l1;
        super();
    }
}
