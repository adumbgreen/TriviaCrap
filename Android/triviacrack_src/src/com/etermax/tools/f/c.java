// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.f;


public final class c extends Enum
{

    public static final c a;
    private static final c b[];

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/etermax/tools/f/c, s);
    }

    public static c[] values()
    {
        return (c[])b.clone();
    }

    static 
    {
        a = new c("Flurry", 0);
        c ac[] = new c[1];
        ac[0] = a;
        b = ac;
    }
}
