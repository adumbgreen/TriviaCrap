// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.k;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.RewardDTO;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.preguntados.ui.game.duelmode.h;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView

public class c extends ShareView
{

    private GameDTO a;
    private h b;
    private Context c;
    private String d;

    public c(Context context, GameDTO gamedto, g g)
    {
        super(context);
        a = gamedto;
        c = context;
        b = h.a(g);
    }

    private String a(String s, int j)
    {
        if (s.contains(" "))
        {
            String as[] = s.split(" ");
            if (as[0].length() <= j && as[1].length() <= j)
            {
                return as[0].concat("\n").concat(as[1]);
            }
            if (as[0].length() > j)
            {
                return as[0].substring(0, j - 3).concat("...");
            }
            if (as[1].length() > j)
            {
                return as[0].concat("\n").concat(as[1].substring(0, j - 3).concat("..."));
            } else
            {
                return null;
            }
        }
        if (s.length() <= j)
        {
            return s.replace(" ", "\n");
        } else
        {
            return s.substring(0, j - 3).concat("...");
        }
    }

    public void a()
    {
        b();
    }

    public void b()
    {
        b b1 = new b();
        int j;
        int l;
        if (a.getDuelPlayers().size() > 5)
        {
            j = 5;
        } else
        {
            j = a.getDuelPlayers().size();
        }
        for (l = 0; l < j; l++)
        {
            int i2 = l + 1;
            String s = a(((DuelPlayerDTO)a.getDuelPlayers().get(l)).getName(), 11);
            ((TextView)findViewById(c.getResources().getIdentifier((new StringBuilder()).append("game_duel_mode_share_userName").append(i2).toString(), "id", c.getPackageName()))).setText(s);
            b1.a((ViewSwitcher)findViewById(c.getResources().getIdentifier((new StringBuilder()).append("game_duel_mode_share_avatar").append(i2).toString(), "id", c.getPackageName())), (k)a.getDuelPlayers().get(l));
        }

        for (int i1 = l; i1 < 5; i1++)
        {
            int l1 = i1 + 1;
            ((LinearLayout)findViewById(c.getResources().getIdentifier((new StringBuilder()).append("game_duel_mode_share_profileContent").append(l1).toString(), "id", c.getPackageName()))).setVisibility(8);
        }

        ((RelativeLayout)findViewById(i.game_duel_mode_share_background)).setBackgroundResource(b.c());
        if (((DuelPlayerDTO)a.getDuelPlayers().get(0)).getRewards() != null)
        {
            ((TextView)findViewById(i.game_duel_mode_share_coinNumber)).setText(String.valueOf(((RewardDTO)((DuelPlayerDTO)a.getDuelPlayers().get(0)).getRewards().get(0)).getQuantity()));
        } else
        {
            ((RelativeLayout)findViewById(i.game_duel_mode_coin_content)).setVisibility(4);
        }
        ((TextView)findViewById(i.game_duel_mode_share_groupName)).setText(a.getName());
        if (((DuelPlayerDTO)a.getDuelPlayers().get(0)).isMe())
        {
            StringBuilder stringbuilder = new StringBuilder();
            Resources resources = getContext().getResources();
            int j1 = b.k();
            Object aobj[] = new Object[1];
            aobj[0] = a.getName();
            d = stringbuilder.append(resources.getQuantityString(j1, 1, aobj)).append(" - ").append(getContext().getString(o.landing_url)).toString();
            ((TextView)findViewById(i.game_duel_mode_share_winText)).setText(getContext().getString(o.you_won));
            ((ImageView)findViewById(i.game_duel_mode_share_image)).setImageResource(b.d());
            return;
        } else
        {
            StringBuilder stringbuilder1 = new StringBuilder();
            Resources resources1 = getContext().getResources();
            int k1 = b.l();
            Object aobj1[] = new Object[1];
            aobj1[0] = a.getName();
            d = stringbuilder1.append(resources1.getQuantityString(k1, 1, aobj1)).append(" - ").append(getContext().getString(o.landing_url)).toString();
            ((TextView)findViewById(i.game_duel_mode_share_winText)).setText(getContext().getString(o.you_lost));
            ((RelativeLayout)findViewById(i.game_duel_mode_coin_content)).setVisibility(4);
            ((ImageView)findViewById(i.game_duel_mode_share_image)).setImageResource(b.e());
            return;
        }
    }

    public String getShareText()
    {
        return d;
    }
}
