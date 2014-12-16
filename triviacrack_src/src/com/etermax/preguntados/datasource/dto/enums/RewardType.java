// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class RewardType extends Enum
{

    private static final RewardType $VALUES[];
    public static final RewardType COINS;
    public static final RewardType EXTRA_SHOTS;
    public static final RewardType LIVES;
    public static final RewardType LIVES_LIMIT;
    public static final RewardType UNLIMITED_LIVES;

    private RewardType(String s, int i)
    {
        super(s, i);
    }

    public static RewardType valueOf(String s)
    {
        return (RewardType)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/RewardType, s);
    }

    public static RewardType[] values()
    {
        return (RewardType[])$VALUES.clone();
    }

    static 
    {
        COINS = new RewardType("COINS", 0);
        LIVES_LIMIT = new RewardType("LIVES_LIMIT", 1);
        LIVES = new RewardType("LIVES", 2);
        EXTRA_SHOTS = new RewardType("EXTRA_SHOTS", 3);
        UNLIMITED_LIVES = new RewardType("UNLIMITED_LIVES", 4);
        RewardType arewardtype[] = new RewardType[5];
        arewardtype[0] = COINS;
        arewardtype[1] = LIVES_LIMIT;
        arewardtype[2] = LIVES;
        arewardtype[3] = EXTRA_SHOTS;
        arewardtype[4] = UNLIMITED_LIVES;
        $VALUES = arewardtype;
    }
}
