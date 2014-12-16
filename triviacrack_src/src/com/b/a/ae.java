// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;


public final class ae extends Enum
{

    public static final ae a;
    public static final ae b;
    public static final ae c;
    private static final ae e[];
    final int d;

    private ae(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static ae valueOf(String s)
    {
        return (ae)Enum.valueOf(com/b/a/ae, s);
    }

    public static ae[] values()
    {
        return (ae[])e.clone();
    }

    static 
    {
        a = new ae("MEMORY", 0, 0xff00ff00);
        b = new ae("DISK", 1, -256);
        c = new ae("NETWORK", 2, 0xffff0000);
        ae aae[] = new ae[3];
        aae[0] = a;
        aae[1] = b;
        aae[2] = c;
        e = aae;
    }
}
