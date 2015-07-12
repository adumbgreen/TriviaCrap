// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.g:
//            c, b, j, i, 
//            d, e

class d
    implements Runnable
{

    final List a;
    final d b;
    final Handler c;
    final e d;
    final c e;

    public void run()
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            j j1 = (j)iterator.next();
            try
            {
                e.a(j1);
                arraylist.add(new i(0, (new StringBuilder()).append("Successful consume of sku ").append(j1.c()).toString()));
            }
            catch (b b1)
            {
                arraylist.add(b1.a());
            }
        }

        e.b();
        if (b != null)
        {
            c.post(new Runnable(arraylist) {

                final List a;
                final c._cls3 b;

                public void run()
                {
                    b.b.a((j)b.a.get(0), (i)a.get(0));
                }

            
            {
                b = c._cls3.this;
                a = list;
                super();
            }
            });
        }
        if (d != null)
        {
            c.post(new Runnable(arraylist) {

                final List a;
                final c._cls3 b;

                public void run()
                {
                    b.d.a(b.a, a);
                }

            
            {
                b = c._cls3.this;
                a = list;
                super();
            }
            });
        }
    }

    _cls2.a(c c1, List list, d d1, Handler handler, e e1)
    {
        e = c1;
        a = list;
        b = d1;
        c = handler;
        d = e1;
        super();
    }
}
