// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations;


public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    private static final e e[];

    private e(String s, int i)
    {
        super(s, i);
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/etermax/gamescommon/animations/e, s);
    }

    public static e[] values()
    {
        return (e[])e.clone();
    }

    static 
    {
        a = new e("EMPTY", 0);
        b = new e("PRE_LOADED", 1);
        c = new e("LOADED", 2);
        d = new e("PLAYING", 3);
        e ae[] = new e[4];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        e = ae;
    }
}
