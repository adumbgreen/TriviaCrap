// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class GameSubStatus extends Enum
{

    private static final GameSubStatus $VALUES[];
    public static final GameSubStatus P1_PLAYING_FIRST_TURN;
    public static final GameSubStatus P1_WAITING_FIRST_TURN;
    public static final GameSubStatus P2_PLAYING_FIRST_TURN;
    public static final GameSubStatus P2_WAITING_FIRST_TURN;

    private GameSubStatus(String s, int i)
    {
        super(s, i);
    }

    public static GameSubStatus valueOf(String s)
    {
        return (GameSubStatus)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/GameSubStatus, s);
    }

    public static GameSubStatus[] values()
    {
        return (GameSubStatus[])$VALUES.clone();
    }

    static 
    {
        P1_WAITING_FIRST_TURN = new GameSubStatus("P1_WAITING_FIRST_TURN", 0);
        P1_PLAYING_FIRST_TURN = new GameSubStatus("P1_PLAYING_FIRST_TURN", 1);
        P2_WAITING_FIRST_TURN = new GameSubStatus("P2_WAITING_FIRST_TURN", 2);
        P2_PLAYING_FIRST_TURN = new GameSubStatus("P2_PLAYING_FIRST_TURN", 3);
        GameSubStatus agamesubstatus[] = new GameSubStatus[4];
        agamesubstatus[0] = P1_WAITING_FIRST_TURN;
        agamesubstatus[1] = P1_PLAYING_FIRST_TURN;
        agamesubstatus[2] = P2_WAITING_FIRST_TURN;
        agamesubstatus[3] = P2_PLAYING_FIRST_TURN;
        $VALUES = agamesubstatus;
    }
}
