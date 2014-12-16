// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES COMPLETE;
    public static final .VALUES FAILED;
    public static final .VALUES INVALID_LOCATION;
    public static final .VALUES INVALID_SKU;
    public static final .VALUES IN_PROGRESS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        IN_PROGRESS = new <init>("IN_PROGRESS", 0);
        COMPLETE = new <init>("COMPLETE", 1);
        FAILED = new <init>("FAILED", 2);
        INVALID_LOCATION = new <init>("INVALID_LOCATION", 3);
        INVALID_SKU = new <init>("INVALID_SKU", 4);
        s_3B_.clone aclone[] = new <init>[5];
        aclone[0] = IN_PROGRESS;
        aclone[1] = COMPLETE;
        aclone[2] = FAILED;
        aclone[3] = INVALID_LOCATION;
        aclone[4] = INVALID_SKU;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
