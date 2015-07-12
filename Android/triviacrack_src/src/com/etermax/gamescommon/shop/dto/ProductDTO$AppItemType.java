// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EXTRA_SHOT;
    public static final .VALUES LIFE;
    public static final .VALUES LIVES_EXTENDER;
    public static final .VALUES PROMO_COINS;
    public static final .VALUES PROMO_SPINS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/shop/dto/ProductDTO$AppItemType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        LIFE = new <init>("LIFE", 0);
        EXTRA_SHOT = new <init>("EXTRA_SHOT", 1);
        LIVES_EXTENDER = new <init>("LIVES_EXTENDER", 2);
        PROMO_COINS = new <init>("PROMO_COINS", 3);
        PROMO_SPINS = new <init>("PROMO_SPINS", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = LIFE;
        aclone[1] = EXTRA_SHOT;
        aclone[2] = LIVES_EXTENDER;
        aclone[3] = PROMO_COINS;
        aclone[4] = PROMO_SPINS;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
