// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;


// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            f

public class e
{

    private f a;
    private int b;
    private int c;
    private boolean d;
    private String e;
    private String f;

    public e(f f1, int i, int j, String s, boolean flag)
    {
        this(f1, null, i, j, s, flag);
    }

    public e(f f1, int i, String s, boolean flag)
    {
        this(f1, i, -1, s, flag);
    }

    public e(f f1, String s, int i, int j, String s1, boolean flag)
    {
        b = -1;
        c = -1;
        a = f1;
        d = flag;
        b = i;
        c = j;
        e = s;
        f = s1;
    }

    public e(f f1, String s, boolean flag)
    {
        this(f1, -1, s, flag);
    }

    public e(f f1, boolean flag)
    {
        this(f1, -1, null, flag);
    }

    public String a()
    {
        return e;
    }

    public f b()
    {
        return a;
    }

    public int c()
    {
        return b;
    }

    public int d()
    {
        return c;
    }

    public boolean e()
    {
        return b != -1;
    }

    public boolean f()
    {
        return c != -1;
    }

    public String g()
    {
        return f;
    }
}
