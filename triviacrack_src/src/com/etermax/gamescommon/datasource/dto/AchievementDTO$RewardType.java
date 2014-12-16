// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES COINS;
    public static final .VALUES EXTRA_SHOTS;
    public static final .VALUES LIVES;
    public static final .VALUES LIVES_LIMIT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        COINS = new <init>("COINS", 0);
        LIVES_LIMIT = new <init>("LIVES_LIMIT", 1);
        LIVES = new <init>("LIVES", 2);
        EXTRA_SHOTS = new <init>("EXTRA_SHOTS", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = COINS;
        aclone[1] = LIVES_LIMIT;
        aclone[2] = LIVES;
        aclone[3] = EXTRA_SHOTS;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
