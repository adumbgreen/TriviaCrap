// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.resources;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    public static final b d;
    public static final b e;
    private static final b h[];
    private String f;
    private int g;

    private b(String s, int i, String s1, int j)
    {
        super(s, i);
        f = s1;
        g = j;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/etermax/gamescommon/resources/b, s);
    }

    public static b[] values()
    {
        return (b[])h.clone();
    }

    public String a()
    {
        return f;
    }

    public int b()
    {
        return g;
    }

    static 
    {
        a = new b("LDPI", 0, "ldpi", 0);
        b = new b("MDPI", 1, "mdpi", 1);
        c = new b("HDPI", 2, "hdpi", 2);
        d = new b("XHDIP", 3, "xhdpi", 3);
        e = new b("XXHDPI", 4, "xxhdpi", 4);
        b ab[] = new b[5];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        ab[4] = e;
        h = ab;
    }
}
