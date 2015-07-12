// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;


final class x extends Enum
{

    public static final x a;
    public static final x b;
    public static final x c;
    private static final x g[];
    final int d;
    final int e;
    final int f;

    private x(String s, int i, int j, int k, int l)
    {
        super(s, i);
        d = j;
        e = k;
        f = l;
    }

    public static x valueOf(String s)
    {
        return (x)Enum.valueOf(com/b/a/x, s);
    }

    public static x[] values()
    {
        return (x[])g.clone();
    }

    static 
    {
        a = new x("MICRO", 0, 3, 96, 96);
        b = new x("MINI", 1, 1, 512, 384);
        c = new x("FULL", 2, 2, -1, -1);
        x ax[] = new x[3];
        ax[0] = a;
        ax[1] = b;
        ax[2] = c;
        g = ax;
    }
}
