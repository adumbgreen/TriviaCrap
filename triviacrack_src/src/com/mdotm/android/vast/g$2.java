// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import com.mdotm.android.e.d;
import com.mdotm.android.e.f;
import java.util.ArrayList;

// Referenced classes of package com.mdotm.android.vast:
//            g, f

class b
    implements Runnable
{

    final g a;
    private final ArrayList b;

    public void run()
    {
        if (b != null)
        {
            int i = 0;
            do
            {
                if (i >= b.size())
                {
                    return;
                }
                d.b(this, (new StringBuilder("Event URL")).append((String)b.get(i)).toString());
                f.a().a((String)b.get(i), com.mdotm.android.vast.f.f(g.a(a)));
                i++;
            } while (true);
        } else
        {
            d.b(this, "Event URL null");
            return;
        }
    }

    (g g1, ArrayList arraylist)
    {
        a = g1;
        b = arraylist;
        super();
    }
}
