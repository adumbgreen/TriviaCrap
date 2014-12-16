// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.DuelPlayerStatus;
import com.etermax.preguntados.datasource.dto.enums.GameEvent;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.io.Serializable;

public class EventDTO
    implements Serializable
{

    int challenged_score;
    int challenger_score;
    int coins_reward;
    DuelPlayerStatus me;
    QuestionCategory offered_crown;
    QuestionCategory requested_crown;
    GameEvent type;
    boolean win;

    public EventDTO()
    {
    }

    public int getChallengedScore()
    {
        return challenged_score;
    }

    public int getChallengerScore()
    {
        return challenger_score;
    }

    public int getCoinsReward()
    {
        return coins_reward;
    }

    public DuelPlayerStatus getMe()
    {
        return me;
    }

    public QuestionCategory getOfferedCrown()
    {
        return offered_crown;
    }

    public QuestionCategory getRequestedCrown()
    {
        return requested_crown;
    }

    public GameEvent getType()
    {
        return type;
    }

    public boolean isWin()
    {
        return win;
    }
}
