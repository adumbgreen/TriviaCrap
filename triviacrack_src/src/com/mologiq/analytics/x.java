// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;


final class x extends Enum
{

    public static final x a;
    public static final x b;
    public static final x c;
    private static final x d[];

    private x(String s, int i)
    {
        super(s, i);
    }

    public static x valueOf(String s)
    {
        return (x)Enum.valueOf(com/mologiq/analytics/x, s);
    }

    public static x[] values()
    {
        x ax[] = d;
        int i = ax.length;
        x ax1[] = new x[i];
        System.arraycopy(ax, 0, ax1, 0, i);
        return ax1;
    }

    static 
    {
        a = new x("REQUEST", 0);
        b = new x("IMPRESSION", 1);
        c = new x("CLICK", 2);
        x ax[] = new x[3];
        ax[0] = a;
        ax[1] = b;
        ax[2] = c;
        d = ax;
    }
}
