// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;


public final class  extends Enum
{

    public static final a DISABLED;
    public static final a NORMAL;
    public static final a TRUNCATED;
    private static final a a[];

    public static  fromMoPubLocationAwareness( )
    {
        if ( == )
        {
            return DISABLED;
        }
        if ( == DISABLED)
        {
            return TRUNCATED;
        } else
        {
            return NORMAL;
        }
    }

    public static NORMAL valueOf(String s)
    {
        return (NORMAL)Enum.valueOf(com/mopub/common/LocationService$LocationAwareness, s);
    }

    public static NORMAL[] values()
    {
        return (NORMAL[])a.clone();
    }

    public s_3B_.clone getNewLocationAwareness()
    {
        if (this == TRUNCATED)
        {
            return TRUNCATED;
        }
        if (this == DISABLED)
        {
            return DISABLED;
        } else
        {
            return DISABLED;
        }
    }

    static 
    {
        NORMAL = new <init>("NORMAL", 0);
        TRUNCATED = new <init>("TRUNCATED", 1);
        DISABLED = new <init>("DISABLED", 2);
        DISABLED adisabled[] = new <init>[3];
        adisabled[0] = NORMAL;
        adisabled[1] = TRUNCATED;
        adisabled[2] = DISABLED;
        a = adisabled;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
