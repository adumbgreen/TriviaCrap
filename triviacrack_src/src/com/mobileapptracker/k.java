// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;


// Referenced classes of package com.mobileapptracker:
//            h, i

final class k
    implements Runnable
{

    final String a;
    final h b;

    k(h h1, String s)
    {
        b = h1;
        a = s;
        super();
    }

    public final void run()
    {
        b.j.C(a);
    }
}
