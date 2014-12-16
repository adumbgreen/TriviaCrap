// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;


public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    private static final g h[];
    private boolean g;

    private g(String s, int i, boolean flag)
    {
        super(s, i);
        g = flag;
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/etermax/gamescommon/menu/a/a/g, s);
    }

    public static g[] values()
    {
        return (g[])h.clone();
    }

    public boolean a()
    {
        return g;
    }

    static 
    {
        a = new g("CHAT", 0, true);
        b = new g("USER", 1, true);
        c = new g("SECTION", 2, false);
        d = new g("LOADING", 3, false);
        e = new g("VIEW_MORE", 4, true);
        f = new g("MESSAGE", 5, false);
        g ag[] = new g[6];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        h = ag;
    }
}
