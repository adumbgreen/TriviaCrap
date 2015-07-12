// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class t extends Enum
{

    public static final t a;
    public static final t b;
    private static final t c[];

    private t(String s, int i)
    {
        super(s, i);
    }

    public static t valueOf(String s)
    {
        return (t)Enum.valueOf(com/etermax/gamescommon/b/t, s);
    }

    public static t[] values()
    {
        return (t[])c.clone();
    }

    static 
    {
        a = new t("SHOW", 0);
        b = new t("OK", 1);
        t at[] = new t[2];
        at[0] = a;
        at[1] = b;
        c = at;
    }
}
