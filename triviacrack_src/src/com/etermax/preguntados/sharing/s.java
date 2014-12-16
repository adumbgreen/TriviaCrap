// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.RankingsDTO;
import com.etermax.preguntados.datasource.dto.RanksDTO;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView

public class s extends ShareView
{

    ImageView a;
    TextView b;
    TextView c;
    private Context d;
    private RanksDTO e;
    private boolean f;
    private boolean g;

    public s(Context context, RankingsDTO rankingsdto, boolean flag)
    {
        super(context);
        g = flag;
        d = context;
        RanksDTO ranksdto;
        if (flag)
        {
            ranksdto = rankingsdto.getHistoricalRanking();
        } else
        {
            ranksdto = rankingsdto.getPeriodicalRanking();
        }
        e = ranksdto;
        f = false;
    }

    private String a(String s1, int i)
    {
        if (s1.contains(" "))
        {
            String as[] = s1.split(" ");
            if (as[0].length() <= i && as[1].length() <= i)
            {
                return as[0].concat("\n").concat(as[1]);
            }
            if (as[0].length() > i)
            {
                return as[0].substring(0, i - 3).concat("...");
            }
            if (as[1].length() > i)
            {
                return as[0].concat("\n").concat(as[1].substring(0, i - 3).concat("..."));
            } else
            {
                return null;
            }
        }
        if (s1.length() <= i)
        {
            return s1.replace(" ", "\n");
        } else
        {
            return s1.substring(0, i - 3).concat("...");
        }
    }

    private void a(int i, int j, b b1)
    {
        String s1 = a(((UserRankDTO)e.getUserRanks().get(j)).getUser().getName(), 11);
        ((TextView)findViewById(d.getResources().getIdentifier((new StringBuilder()).append("top_weekly_rank_share_userName").append(i + 1).toString(), "id", d.getPackageName()))).setText(s1);
        b1.a((ViewSwitcher)findViewById(d.getResources().getIdentifier((new StringBuilder()).append("top_weekly_rank_share_avatar").append(i + 1).toString(), "id", d.getPackageName())), ((UserRankDTO)e.getUserRanks().get(j)).getUser());
        if (((UserRankDTO)e.getUserRanks().get(j)).isMe())
        {
            f = true;
        }
    }

    public void a()
    {
        b();
    }

    public void b()
    {
        TextView textview = c;
        int i;
        b b1;
        int j;
        int k;
        if (g)
        {
            i = o.all_time_ranking;
        } else
        {
            i = o.weekly_ranking;
        }
        textview.setText(i);
        b1 = new b();
        if (e.getUserRanks().size() > 5)
        {
            j = 5;
        } else
        {
            j = e.getUserRanks().size();
        }
        for (k = 0; k < j - 1; k++)
        {
            a(k, k, b1);
        }

        if (f)
        {
            a(j - 1, j - 1, b1);
            k++;
        }
        int l = k;
        int i1 = k;
        for (; !f && l < e.getUserRanks().size(); l++)
        {
            if (((UserRankDTO)e.getUserRanks().get(l)).isMe())
            {
                a(j - 1, l, b1);
                i1++;
                b.setText(String.valueOf(((UserRankDTO)e.getUserRanks().get(l)).getPosition()));
            }
        }

        for (; i1 < 5; i1++)
        {
            int j1 = i1 + 1;
            ((LinearLayout)findViewById(d.getResources().getIdentifier((new StringBuilder()).append("top_weekly_rank_share_profileContent").append(j1).toString(), "id", d.getPackageName()))).setVisibility(8);
        }

    }

    public String getShareText()
    {
        String s1;
        if (g)
        {
            s1 = getContext().getString(o.all_time_ranking);
        } else
        {
            s1 = getContext().getString(o.weekly_ranking);
        }
        return (new StringBuilder()).append(s1).append(" - ").append(getContext().getString(o.landing_url)).toString();
    }
}
