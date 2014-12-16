// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class z extends Enum
{

    public static final z a;
    public static final z b;
    public static final z c;
    private static final z d[];

    private z(String s, int i)
    {
        super(s, i);
    }

    public static z valueOf(String s)
    {
        return (z)Enum.valueOf(com/etermax/gamescommon/b/z, s);
    }

    public static z[] values()
    {
        return (z[])d.clone();
    }

    static 
    {
        a = new z("ACCOUNT_NOT_CREATED", 0);
        b = new z("LINK_CANCELLED", 1);
        c = new z("JUST_LINKED", 2);
        z az[] = new z[3];
        az[0] = a;
        az[1] = b;
        az[2] = c;
        d = az;
    }
}
