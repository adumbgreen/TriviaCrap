// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


public final class  extends Enum
{

    public static final a INLINE;
    public static final a INTERSTITIAL;
    private static final a a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mopub/mobileads/MraidView$PlacementType, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        INLINE = new <init>("INLINE", 0);
        INTERSTITIAL = new <init>("INTERSTITIAL", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = INLINE;
        aclone[1] = INTERSTITIAL;
        a = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
