// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;


public abstract class r extends Enum
{

    public static final r a;
    public static final r b;
    private static final r c[];

    private r(String s, int i)
    {
        super(s, i);
    }


    public static r valueOf(String s)
    {
        return (r)Enum.valueOf(com/millennialmedia/a/a/r, s);
    }

    public static r[] values()
    {
        return (r[])c.clone();
    }

    static 
    {
        a = new r("DEFAULT", 0) {

        };
        b = new r("STRING", 1) {

        };
        r ar[] = new r[2];
        ar[0] = a;
        ar[1] = b;
        c = ar;
    }
}
