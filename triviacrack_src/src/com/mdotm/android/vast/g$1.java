// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import com.mdotm.android.c.b;
import com.mdotm.android.e.d;
import java.util.TimerTask;

// Referenced classes of package com.mdotm.android.vast:
//            g, f, d

class a extends TimerTask
{

    final g a;

    public void run()
    {
        int i;
        i = g.a(a).getCurrentPosition();
        d.b(this, (new StringBuilder("position ")).append(i).toString());
        if (i > 0 && !a.i)
        {
            d.b(this, (new StringBuilder("video play start :: ")).append(i).toString());
            a.i = true;
        }
        if (i > 5000 && !a.j)
        {
            a.j = true;
            f.c(g.a(a)).a();
        }
        if (i < a.b || a.e) goto _L2; else goto _L1
_L1:
        d.b(this, (new StringBuilder("quarter position crossed ::")).append(i).toString());
        a.e = true;
        if (com.mdotm.android.vast.f.d(g.a(a)) != null)
        {
            g.a(a, com.mdotm.android.vast.f.d(g.a(a)).c);
        }
_L4:
        return;
_L2:
        if (i < a.c || a.f)
        {
            continue; /* Loop/switch isn't completed */
        }
        d.b(this, (new StringBuilder("half position crossed :: ")).append(i).toString());
        a.f = true;
        if (com.mdotm.android.vast.f.d(g.a(a)) != null)
        {
            g.a(a, com.mdotm.android.vast.f.d(g.a(a)).d);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (i < a.d || a.g) goto _L4; else goto _L3
_L3:
        d.b(this, (new StringBuilder("three qurter position crossed ::")).append(i).toString());
        a.g = true;
        if (com.mdotm.android.vast.f.d(g.a(a)) != null)
        {
            g.a(a, com.mdotm.android.vast.f.d(g.a(a)).e);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    (g g1)
    {
        a = g1;
        super();
    }
}
