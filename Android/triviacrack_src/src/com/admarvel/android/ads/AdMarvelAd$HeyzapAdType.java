// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INCENTIVIZED_AD;
    public static final .VALUES INTERSTITIAL_AD;
    public static final .VALUES VIDEO_AD;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/AdMarvelAd$HeyzapAdType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        VIDEO_AD = new <init>("VIDEO_AD", 0);
        INTERSTITIAL_AD = new <init>("INTERSTITIAL_AD", 1);
        INCENTIVIZED_AD = new <init>("INCENTIVIZED_AD", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = VIDEO_AD;
        aclone[1] = INTERSTITIAL_AD;
        aclone[2] = INCENTIVIZED_AD;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
