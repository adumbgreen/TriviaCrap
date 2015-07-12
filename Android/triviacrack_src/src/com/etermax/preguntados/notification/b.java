// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    private static final b e[];
    private int d;

    private b(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/etermax/preguntados/notification/b, s);
    }

    public static b[] values()
    {
        return (b[])e.clone();
    }

    public int a()
    {
        return d;
    }

    static 
    {
        a = new b("GAME", 0, 1010);
        b = new b("CHAT", 1, 1020);
        c = new b("USER", 2, 1030);
        b ab[] = new b[3];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        e = ab;
    }
}
