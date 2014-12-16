// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FAILED;
    public static final .VALUES SUCCESSFUL;
    public static final .VALUES SUCCESSFUL_WITH_UNAVAILABLE_SKUS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SUCCESSFUL = new <init>("SUCCESSFUL", 0);
        FAILED = new <init>("FAILED", 1);
        SUCCESSFUL_WITH_UNAVAILABLE_SKUS = new <init>("SUCCESSFUL_WITH_UNAVAILABLE_SKUS", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = SUCCESSFUL;
        aclone[1] = FAILED;
        aclone[2] = SUCCESSFUL_WITH_UNAVAILABLE_SKUS;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
