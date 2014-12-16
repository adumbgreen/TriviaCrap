// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import android.text.TextUtils;
import com.etermax.gamescommon.g.a;
import com.etermax.gamescommon.g.h;
import com.etermax.gamescommon.g.i;
import com.etermax.gamescommon.g.j;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon:
//            l, n

public class m
    implements h
{

    String a;
    int b;
    final l c;

    public m(l l1, String s)
    {
        c = l1;
        super();
        b = 0;
        a = s;
    }

    public void a(i k, a a1)
    {
        c.d("Query inventory finished.");
        if (k.d())
        {
            c.e((new StringBuilder()).append("Failed to query inventory: ").append(k).toString());
            return;
        }
        c.d("Query inventory was successful.");
        for (Iterator iterator = a1.b().iterator(); iterator.hasNext();)
        {
            j j1 = (j)iterator.next();
            if (j1.c().equals(a))
            {
                c.a(l.b(c), j1, new n() {

                    final m a;

                    public void a()
                    {
                        if (TextUtils.isEmpty(a.a))
                        {
                            a.c.a(a.a);
                        }
                    }

                    public void b()
                    {
                    }

            
            {
                a = m.this;
                super();
            }
                });
            } else
            {
                c.a(l.b(c), j1, null);
            }
        }

        c.d("Initial inventory query finished; enabling main UI.");
    }
}
