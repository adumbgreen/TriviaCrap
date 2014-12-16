// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.RankingsDTO;
import com.etermax.preguntados.ui.rankings.i;

public class d extends FragmentPagerAdapter
{

    private Context a;
    private RankingsDTO b;

    public d(FragmentManager fragmentmanager, Context context, RankingsDTO rankingsdto)
    {
        super(fragmentmanager);
        a = context;
        b = rankingsdto;
    }

    public RankingsDTO a()
    {
        return b;
    }

    public int getCount()
    {
        return 2;
    }

    public Fragment getItem(int j)
    {
        switch (j)
        {
        default:
            return null;

        case 1: // '\001'
            return i.a(1, b.getHistoricalRanking());

        case 0: // '\0'
            return i.a(0, b.getPeriodicalRanking());
        }
    }

    public CharSequence getPageTitle(int j)
    {
        switch (j)
        {
        default:
            return a.getString(o.player_ranking_plural);

        case 1: // '\001'
            return a.getString(o.all_time);

        case 0: // '\0'
            return a.getString(o.weekly);
        }
    }
}
