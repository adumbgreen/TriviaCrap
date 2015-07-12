// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;


public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    private static final g e[];

    private g(String s, int i)
    {
        super(s, i);
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/etermax/chat/a/g, s);
    }

    public static g[] values()
    {
        return (g[])e.clone();
    }

    static 
    {
        a = new g("FIRST_IN_GROUP", 0);
        b = new g("MIDDLE_IN_GROUP", 1);
        c = new g("LAST_IN_GROUP", 2);
        d = new g("SINGLE", 3);
        g ag[] = new g[4];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        e = ag;
    }
}
