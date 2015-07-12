// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.os.Handler;
import com.mdotm.android.c.b;
import com.mdotm.android.e.d;
import com.mdotm.android.e.f;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.mdotm.android.vast:
//            f, d

class g
{

    public int a;
    public int b;
    public int c;
    public int d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    final com.mdotm.android.vast.f k;

    public g(com.mdotm.android.vast.f f1)
    {
        k = f1;
        super();
        e = false;
        f = false;
        g = false;
        h = false;
        i = false;
        j = false;
    }

    static com.mdotm.android.vast.f a(g g1)
    {
        return g1.k;
    }

    private void a()
    {
        com.mdotm.android.vast.f.a(k, new Timer());
        com.mdotm.android.vast.f.b(k).scheduleAtFixedRate(new TimerTask() {

            final g a;

            public void run()
            {
                int l;
                l = g.a(a).getCurrentPosition();
                com.mdotm.android.e.d.b(this, (new StringBuilder("position ")).append(l).toString());
                if (l > 0 && !a.i)
                {
                    com.mdotm.android.e.d.b(this, (new StringBuilder("video play start :: ")).append(l).toString());
                    a.i = true;
                }
                if (l > 5000 && !a.j)
                {
                    a.j = true;
                    com.mdotm.android.vast.f.c(g.a(a)).a();
                }
                if (l < a.b || a.e) goto _L2; else goto _L1
_L1:
                com.mdotm.android.e.d.b(this, (new StringBuilder("quarter position crossed ::")).append(l).toString());
                a.e = true;
                if (com.mdotm.android.vast.f.d(g.a(a)) != null)
                {
                    g.a(a, com.mdotm.android.vast.f.d(g.a(a)).c);
                }
_L4:
                return;
_L2:
                if (l < a.c || a.f)
                {
                    continue; /* Loop/switch isn't completed */
                }
                com.mdotm.android.e.d.b(this, (new StringBuilder("half position crossed :: ")).append(l).toString());
                a.f = true;
                if (com.mdotm.android.vast.f.d(g.a(a)) != null)
                {
                    g.a(a, com.mdotm.android.vast.f.d(g.a(a)).d);
                    return;
                }
                continue; /* Loop/switch isn't completed */
                if (l < a.d || a.g) goto _L4; else goto _L3
_L3:
                com.mdotm.android.e.d.b(this, (new StringBuilder("three qurter position crossed ::")).append(l).toString());
                a.g = true;
                if (com.mdotm.android.vast.f.d(g.a(a)) != null)
                {
                    g.a(a, com.mdotm.android.vast.f.d(g.a(a)).e);
                    return;
                }
                if (true) goto _L4; else goto _L5
_L5:
            }

            
            {
                a = g.this;
                super();
            }
        }, 0, 1000);
    }

    private void a(int l)
    {
        com.mdotm.android.vast.f.a(k).a = l;
        com.mdotm.android.e.d.b(this, (new StringBuilder("onPrepared Duration = ")).append(com.mdotm.android.vast.f.a(k).a).toString());
        if (a != 0)
        {
            b = a / 4;
            c = a / 2;
            d = (3 * a) / 4;
            com.mdotm.android.e.d.b(this, (new StringBuilder("quarter position = ")).append(b).toString());
            com.mdotm.android.e.d.b(this, (new StringBuilder("half position = ")).append(c).toString());
            com.mdotm.android.e.d.b(this, (new StringBuilder("three qurter position = ")).append(d).toString());
            a();
        }
    }

    static void a(g g1, int l)
    {
        g1.a(l);
    }

    static void a(g g1, ArrayList arraylist)
    {
        g1.a(arraylist);
    }

    private void a(ArrayList arraylist)
    {
        com.mdotm.android.vast.f.e(k).post(new Runnable(arraylist) {

            final g a;
            private final ArrayList b;

            public void run()
            {
                if (b != null)
                {
                    int l = 0;
                    do
                    {
                        if (l >= b.size())
                        {
                            return;
                        }
                        com.mdotm.android.e.d.b(this, (new StringBuilder("Event URL")).append((String)b.get(l)).toString());
                        com.mdotm.android.e.f.a().a((String)b.get(l), com.mdotm.android.vast.f.f(g.a(a)));
                        l++;
                    } while (true);
                } else
                {
                    com.mdotm.android.e.d.b(this, "Event URL null");
                    return;
                }
            }

            
            {
                a = g.this;
                b = arraylist;
                super();
            }
        });
    }
}
