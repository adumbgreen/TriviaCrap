// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class i extends Enum
{

    public static final i a;
    public static final i b;
    private static final i d[];
    String c;

    private i(String s, int j, String s1)
    {
        super(s, j);
        c = s1;
    }

    public static i valueOf(String s)
    {
        return (i)Enum.valueOf(com/etermax/gamescommon/b/i, s);
    }

    public static i[] values()
    {
        return (i[])d.clone();
    }

    public String toString()
    {
        return c;
    }

    static 
    {
        a = new i("FRIEND", 0, "friend");
        b = new i("NO_FRIEND", 1, "no_friend");
        i ai[] = new i[2];
        ai[0] = a;
        ai[1] = b;
        d = ai;
    }
}
