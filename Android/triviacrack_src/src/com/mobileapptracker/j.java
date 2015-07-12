// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;


// Referenced classes of package com.mobileapptracker:
//            h, i

final class j
    implements Runnable
{

    final boolean a;
    final h b;

    j(h h1, boolean flag)
    {
        b = h1;
        a = flag;
        super();
    }

    public final void run()
    {
        if (a)
        {
            b.j.B(Integer.toString(1));
            return;
        } else
        {
            b.j.B(Integer.toString(0));
            return;
        }
    }
}
