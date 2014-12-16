// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ALREADY_ENTITLED;
    public static final .VALUES FAILED;
    public static final .VALUES INVALID_SKU;
    public static final .VALUES SUCCESSFUL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SUCCESSFUL = new <init>("SUCCESSFUL", 0);
        FAILED = new <init>("FAILED", 1);
        INVALID_SKU = new <init>("INVALID_SKU", 2);
        ALREADY_ENTITLED = new <init>("ALREADY_ENTITLED", 3);
        s_3B_.clone aclone[] = new <init>[4];
        aclone[0] = SUCCESSFUL;
        aclone[1] = FAILED;
        aclone[2] = INVALID_SKU;
        aclone[3] = ALREADY_ENTITLED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
