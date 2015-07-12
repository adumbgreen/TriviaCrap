// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES AUTO;
    public static final .VALUES EXPLICIT;
    public static final .VALUES INTERSTITIAL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/device/ads/AdSize$SizeType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        EXPLICIT = new <init>("EXPLICIT", 0);
        AUTO = new <init>("AUTO", 1);
        INTERSTITIAL = new <init>("INTERSTITIAL", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = EXPLICIT;
        aclone[1] = AUTO;
        aclone[2] = INTERSTITIAL;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
