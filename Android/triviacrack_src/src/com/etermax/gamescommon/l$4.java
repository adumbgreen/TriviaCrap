// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import com.etermax.gamescommon.g.c;
import com.etermax.gamescommon.g.f;
import com.etermax.gamescommon.g.i;
import com.etermax.gamescommon.g.j;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.etermax.gamescommon:
//            l, m, i

class a
    implements f
{

    final l a;

    public void a(i j, String s, j j1)
    {
        if (j.a() != 7 || s == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        l.a(a).a(false, new m(a, s));
_L1:
        return;
        Exception exception;
        exception;
        a.a("", exception);
        return;
        if (!j.c())
        {
            Iterator iterator = com.etermax.gamescommon.l.c(a).iterator();
            while (iterator.hasNext()) 
            {
                ((com.etermax.gamescommon.i)iterator.next()).onPurchaseError(j);
            }
        } else
        {
            a.a(l.b(a), j1, null);
            return;
        }
          goto _L1
    }

    (l l1)
    {
        a = l1;
        super();
    }
}
