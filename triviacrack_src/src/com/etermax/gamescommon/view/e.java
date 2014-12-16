// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;


public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    public static final e f;
    public static final e g;
    public static final e h;
    private static final e i[];

    private e(String s, int j)
    {
        super(s, j);
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/etermax/gamescommon/view/e, s);
    }

    public static e[] values()
    {
        return (e[])i.clone();
    }

    static 
    {
        a = new e("PROFILE", 0);
        b = new e("CHAT", 1);
        c = new e("POKE", 2);
        d = new e("REJECT", 3);
        e = new e("RESIGN", 4);
        f = new e("DELETE", 5);
        g = new e("REMATCH", 6);
        h = new e("PUBLISH", 7);
        e ae[] = new e[8];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        ae[4] = e;
        ae[5] = f;
        ae[6] = g;
        ae[7] = h;
        i = ae;
    }
}
