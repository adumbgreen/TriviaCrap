// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LOCATION_AWARENESS_DISABLED;
    public static final .VALUES LOCATION_AWARENESS_NORMAL;
    public static final .VALUES LOCATION_AWARENESS_TRUNCATED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/device/ads/AdLocation$LocationAwareness, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        LOCATION_AWARENESS_NORMAL = new <init>("LOCATION_AWARENESS_NORMAL", 0);
        LOCATION_AWARENESS_TRUNCATED = new <init>("LOCATION_AWARENESS_TRUNCATED", 1);
        LOCATION_AWARENESS_DISABLED = new <init>("LOCATION_AWARENESS_DISABLED", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = LOCATION_AWARENESS_NORMAL;
        aclone[1] = LOCATION_AWARENESS_TRUNCATED;
        aclone[2] = LOCATION_AWARENESS_DISABLED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
