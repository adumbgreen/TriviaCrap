// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BANNER;
    public static final .VALUES BOTH;
    public static final .VALUES INTERSTITIAL;
    public static final .VALUES UNKNOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/lifestreet/android/lsmsdk/AdapterMappingItem$Type, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        BANNER = new <init>("BANNER", 1);
        INTERSTITIAL = new <init>("INTERSTITIAL", 2);
        BOTH = new <init>("BOTH", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = UNKNOWN;
        aclone[1] = BANNER;
        aclone[2] = INTERSTITIAL;
        aclone[3] = BOTH;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
