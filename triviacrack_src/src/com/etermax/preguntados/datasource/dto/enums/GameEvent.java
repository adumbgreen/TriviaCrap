// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class GameEvent extends Enum
{

    private static final GameEvent $VALUES[];
    public static final GameEvent CROWNS_EXCEDED;
    public static final GameEvent DUEL_ENDED;
    public static final GameEvent DUEL_STARTED;
    public static final GameEvent FINAL_DUEL_ENDED;
    public static final GameEvent FINAL_DUEL_STARTED;
    public static final GameEvent GAME_ENDED;

    private GameEvent(String s, int i)
    {
        super(s, i);
    }

    public static GameEvent valueOf(String s)
    {
        return (GameEvent)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/GameEvent, s);
    }

    public static GameEvent[] values()
    {
        return (GameEvent[])$VALUES.clone();
    }

    static 
    {
        DUEL_STARTED = new GameEvent("DUEL_STARTED", 0);
        DUEL_ENDED = new GameEvent("DUEL_ENDED", 1);
        FINAL_DUEL_STARTED = new GameEvent("FINAL_DUEL_STARTED", 2);
        FINAL_DUEL_ENDED = new GameEvent("FINAL_DUEL_ENDED", 3);
        GAME_ENDED = new GameEvent("GAME_ENDED", 4);
        CROWNS_EXCEDED = new GameEvent("CROWNS_EXCEDED", 5);
        GameEvent agameevent[] = new GameEvent[6];
        agameevent[0] = DUEL_STARTED;
        agameevent[1] = DUEL_ENDED;
        agameevent[2] = FINAL_DUEL_STARTED;
        agameevent[3] = FINAL_DUEL_ENDED;
        agameevent[4] = GAME_ENDED;
        agameevent[5] = CROWNS_EXCEDED;
        $VALUES = agameevent;
    }
}
