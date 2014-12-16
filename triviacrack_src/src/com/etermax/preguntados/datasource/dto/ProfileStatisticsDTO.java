// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.util.List;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            ChallengeDTO, ProfileRankingsDTO

public class ProfileStatisticsDTO
{

    private List category_questions;
    private ChallengeDTO challenges;
    private int duel_games_lost;
    private int duel_games_won;
    private int games_lost;
    private int games_resigned;
    private int games_won;
    private List language_games;
    private ProfileRankingsDTO rankings;

    public List getCategory_question()
    {
        return category_questions;
    }

    public ChallengeDTO getChallenges()
    {
        return challenges;
    }

    public int getDuelGamesLost()
    {
        return duel_games_lost;
    }

    public int getDuelGamesWon()
    {
        return duel_games_won;
    }

    public int getGames_lost()
    {
        return games_lost;
    }

    public int getGames_resigned()
    {
        return games_resigned;
    }

    public int getGames_won()
    {
        return games_won;
    }

    public List getLanguageGames()
    {
        return language_games;
    }

    public ProfileRankingsDTO getRankings()
    {
        return rankings;
    }
}
