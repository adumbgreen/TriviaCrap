// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;


public final class Promotion extends Enum
{

    private static final Promotion $VALUES[];
    public static final Promotion LIVES_EXTENDER_1;
    public static final Promotion PROMO_COINS;
    public static final Promotion PROMO_SPINS;

    private Promotion(String s, int i)
    {
        super(s, i);
    }

    public static Promotion valueOf(String s)
    {
        return (Promotion)Enum.valueOf(com/etermax/gamescommon/promotion/Promotion, s);
    }

    public static Promotion[] values()
    {
        return (Promotion[])$VALUES.clone();
    }

    static 
    {
        LIVES_EXTENDER_1 = new Promotion("LIVES_EXTENDER_1", 0);
        PROMO_COINS = new Promotion("PROMO_COINS", 1);
        PROMO_SPINS = new Promotion("PROMO_SPINS", 2);
        Promotion apromotion[] = new Promotion[3];
        apromotion[0] = LIVES_EXTENDER_1;
        apromotion[1] = PROMO_COINS;
        apromotion[2] = PROMO_SPINS;
        $VALUES = apromotion;
    }
}
