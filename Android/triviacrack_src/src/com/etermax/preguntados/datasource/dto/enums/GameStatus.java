// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class GameStatus extends Enum
{

    private static final GameStatus $VALUES[];
    public static final GameStatus ACTIVE;
    public static final GameStatus ENDED;
    public static final GameStatus PENDING_APPROVAL;

    private GameStatus(String s, int i)
    {
        super(s, i);
    }

    public static GameStatus valueOf(String s)
    {
        return (GameStatus)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/GameStatus, s);
    }

    public static GameStatus[] values()
    {
        return (GameStatus[])$VALUES.clone();
    }

    static 
    {
        PENDING_APPROVAL = new GameStatus("PENDING_APPROVAL", 0);
        ENDED = new GameStatus("ENDED", 1);
        ACTIVE = new GameStatus("ACTIVE", 2);
        GameStatus agamestatus[] = new GameStatus[3];
        agamestatus[0] = PENDING_APPROVAL;
        agamestatus[1] = ENDED;
        agamestatus[2] = ACTIVE;
        $VALUES = agamestatus;
    }
}
