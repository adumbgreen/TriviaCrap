// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INVALID_CLIENT_PROTOCOL;
    public static final .VALUES MALFORMED_URL;
    public static final .VALUES NETWORK_FAILURE;
    public static final .VALUES NETWORK_TIMEOUT;
    public static final .VALUES UNSUPPORTED_ENCODING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/device/ads/WebRequest$WebRequestStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NETWORK_FAILURE = new <init>("NETWORK_FAILURE", 0);
        NETWORK_TIMEOUT = new <init>("NETWORK_TIMEOUT", 1);
        MALFORMED_URL = new <init>("MALFORMED_URL", 2);
        INVALID_CLIENT_PROTOCOL = new <init>("INVALID_CLIENT_PROTOCOL", 3);
        UNSUPPORTED_ENCODING = new <init>("UNSUPPORTED_ENCODING", 4);
        s_3B_.clone aclone[] = new <init>[5];
        aclone[0] = NETWORK_FAILURE;
        aclone[1] = NETWORK_TIMEOUT;
        aclone[2] = MALFORMED_URL;
        aclone[3] = INVALID_CLIENT_PROTOCOL;
        aclone[4] = UNSUPPORTED_ENCODING;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
