// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class GameType extends Enum
{

    private static final GameType $VALUES[];
    public static final GameType DUEL_GAME;
    public static final GameType NORMAL;

    private GameType(String s, int i)
    {
        super(s, i);
    }

    public static GameType getByString(String s)
    {
        GameType agametype[] = values();
        int i = agametype.length;
        for (int j = 0; j < i; j++)
        {
            GameType gametype = agametype[j];
            if (gametype.name().equals(s))
            {
                return gametype;
            }
        }

        return null;
    }

    public static GameType valueOf(String s)
    {
        return (GameType)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/GameType, s);
    }

    public static GameType[] values()
    {
        return (GameType[])$VALUES.clone();
    }

    static 
    {
        NORMAL = new GameType("NORMAL", 0);
        DUEL_GAME = new GameType("DUEL_GAME", 1);
        GameType agametype[] = new GameType[2];
        agametype[0] = NORMAL;
        agametype[1] = DUEL_GAME;
        $VALUES = agametype;
    }
}
