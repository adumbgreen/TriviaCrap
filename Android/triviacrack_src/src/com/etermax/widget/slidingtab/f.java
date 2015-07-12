// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.slidingtab;


// Referenced classes of package com.etermax.widget.slidingtab:
//            c

class f
    implements c
{

    private int a[];
    private int b[];

    private f()
    {
    }

    f(e._cls1 _pcls1)
    {
        this();
    }

    public final int a(int i)
    {
        return a[i % a.length];
    }

    transient void a(int ai[])
    {
        a = ai;
    }

    public final int b(int i)
    {
        return b[i % b.length];
    }

    transient void b(int ai[])
    {
        b = ai;
    }
}
