// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


public final class  extends Enum
{

    public static final a DISABLED;
    public static final a ENABLED;
    private static final a a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mopub/mobileads/MraidView$ExpansionStyle, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        ENABLED = new <init>("ENABLED", 0);
        DISABLED = new <init>("DISABLED", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = ENABLED;
        aclone[1] = DISABLED;
        a = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
