// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.d;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    public static final b d;
    public static final b e;
    public static final b f;
    public static final b g;
    public static final b h;
    public static final b i;
    public static final b j;
    private static final b k[];

    private b(String s, int l)
    {
        super(s, l);
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/millennialmedia/a/a/d/b, s);
    }

    public static b[] values()
    {
        return (b[])k.clone();
    }

    static 
    {
        a = new b("BEGIN_ARRAY", 0);
        b = new b("END_ARRAY", 1);
        c = new b("BEGIN_OBJECT", 2);
        d = new b("END_OBJECT", 3);
        e = new b("NAME", 4);
        f = new b("STRING", 5);
        g = new b("NUMBER", 6);
        h = new b("BOOLEAN", 7);
        i = new b("NULL", 8);
        j = new b("END_DOCUMENT", 9);
        b ab[] = new b[10];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        ab[4] = e;
        ab[5] = f;
        ab[6] = g;
        ab[7] = h;
        ab[8] = i;
        ab[9] = j;
        k = ab;
    }
}
