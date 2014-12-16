// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES APP_ITEM;
    public static final .VALUES COIN_ITEM;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/shop/dto/ProductDTO$ItemType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        COIN_ITEM = new <init>("COIN_ITEM", 0);
        APP_ITEM = new <init>("APP_ITEM", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = COIN_ITEM;
        aclone[1] = APP_ITEM;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
