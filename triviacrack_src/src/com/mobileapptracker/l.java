// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;


// Referenced classes of package com.mobileapptracker:
//            h, i

final class l
    implements Runnable
{

    final String a;
    final int b;
    final h c;

    l(h h1, String s, int j)
    {
        c = h1;
        a = s;
        b = j;
        super();
    }

    public final void run()
    {
        c.j.D(a);
        c.j.E(Integer.toString(b));
        c.e = true;
        if (c.f && !c.h)
        {
            synchronized (c.l)
            {
                c.l.notifyAll();
                c.h = true;
            }
        }
    }
}
