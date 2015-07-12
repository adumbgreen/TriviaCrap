// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.datasource.dto.AppConfigDTO;
import com.etermax.gamescommon.language.Language;
import java.io.Serializable;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            LivesConfigDTO

public class PreguntadosAppConfigDTO extends AppConfigDTO
    implements Serializable
{

    private Language available_languages[];
    private int dashboardTTL;
    private boolean duel_games_enabled;
    private int duel_games_players_max;
    private int duel_games_players_min;
    private int final_duel_rounds;
    private LivesConfigDTO lives;
    private ArrayList power_ups;
    private int questions_time;
    private int rejected_questions_expiration;
    private int show_questions_reload_seconds;

    public PreguntadosAppConfigDTO()
    {
        dashboardTTL = 60;
    }

    public Language[] getAvailableLanguages()
    {
        return available_languages;
    }

    public int getDashboardTTL()
    {
        return dashboardTTL;
    }

    public boolean getDuelGamesEnabled()
    {
        return duel_games_enabled;
    }

    public int getDuelModeMaxPlayers()
    {
        return duel_games_players_max;
    }

    public int getDuelModeMinPlayers()
    {
        return duel_games_players_min;
    }

    public int getFinalDuelRounds()
    {
        return final_duel_rounds;
    }

    public LivesConfigDTO getLivesConfig()
    {
        return lives;
    }

    public ArrayList getPowerUps()
    {
        return power_ups;
    }

    public int getQuestionTime()
    {
        return questions_time;
    }

    public int getRejectedQuestionsExpirationTime()
    {
        return rejected_questions_expiration;
    }

    public int getShowQuestionsReloadSeconds()
    {
        return show_questions_reload_seconds;
    }
}
