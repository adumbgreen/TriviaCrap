// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES VIDEO_AD;
    public static final .VALUES VIDEO_AD_ONLY;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/AdMarvelAd$RhythmVideoAdType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        VIDEO_AD_ONLY = new <init>("VIDEO_AD_ONLY", 0);
        VIDEO_AD = new <init>("VIDEO_AD", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = VIDEO_AD_ONLY;
        aclone[1] = VIDEO_AD;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
