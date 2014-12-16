// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CONSUMABLE;
    public static final .VALUES ENTITLED;
    public static final .VALUES SUBSCRIPTION;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/inapp/purchasing/Item$ItemType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        CONSUMABLE = new <init>("CONSUMABLE", 0);
        ENTITLED = new <init>("ENTITLED", 1);
        SUBSCRIPTION = new <init>("SUBSCRIPTION", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = CONSUMABLE;
        aclone[1] = ENTITLED;
        aclone[2] = SUBSCRIPTION;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
