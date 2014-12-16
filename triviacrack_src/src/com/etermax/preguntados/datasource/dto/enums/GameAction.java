// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class GameAction extends Enum
{

    private static final GameAction $VALUES[];
    public static final GameAction REJECT;
    public static final GameAction RESIGN;

    private GameAction(String s, int i)
    {
        super(s, i);
    }

    public static GameAction valueOf(String s)
    {
        return (GameAction)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/GameAction, s);
    }

    public static GameAction[] values()
    {
        return (GameAction[])$VALUES.clone();
    }

    static 
    {
        REJECT = new GameAction("REJECT", 0);
        RESIGN = new GameAction("RESIGN", 1);
        GameAction agameaction[] = new GameAction[2];
        agameaction[0] = REJECT;
        agameaction[1] = RESIGN;
        $VALUES = agameaction;
    }
}
