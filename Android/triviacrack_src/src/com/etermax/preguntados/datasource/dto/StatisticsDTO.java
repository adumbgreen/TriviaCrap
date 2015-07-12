// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            PlayerStatisticsDTO

public class StatisticsDTO
    implements Serializable
{

    PlayerStatisticsDTO player_one_statistics;
    PlayerStatisticsDTO player_two_statistics;

    public StatisticsDTO()
    {
    }

    public PlayerStatisticsDTO getPlayerOneStatistics()
    {
        return player_one_statistics;
    }

    public PlayerStatisticsDTO getPlayerTwoStatistics()
    {
        return player_two_statistics;
    }
}
