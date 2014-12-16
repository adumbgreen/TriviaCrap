// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INTERNAL_ERROR;
    public static final .VALUES NETWORK_ERROR;
    public static final .VALUES NETWORK_TIMEOUT;
    public static final .VALUES NO_FILL;
    public static final .VALUES REQUEST_ERROR;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/device/ads/AdError$ErrorCode, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NETWORK_ERROR = new <init>("NETWORK_ERROR", 0);
        NETWORK_TIMEOUT = new <init>("NETWORK_TIMEOUT", 1);
        NO_FILL = new <init>("NO_FILL", 2);
        INTERNAL_ERROR = new <init>("INTERNAL_ERROR", 3);
        REQUEST_ERROR = new <init>("REQUEST_ERROR", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = NETWORK_ERROR;
        aclone[1] = NETWORK_TIMEOUT;
        aclone[2] = NO_FILL;
        aclone[3] = INTERNAL_ERROR;
        aclone[4] = REQUEST_ERROR;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
