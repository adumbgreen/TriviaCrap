// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            RanksDTO

public class RankingsDTO
    implements Serializable
{

    private RanksDTO historical_ranking;
    private RanksDTO periodical_ranking;

    public RankingsDTO()
    {
    }

    public RanksDTO getHistoricalRanking()
    {
        return historical_ranking;
    }

    public RanksDTO getPeriodicalRanking()
    {
        return periodical_ranking;
    }
}
