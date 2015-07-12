// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.content.res.Resources;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.resources.RandomImageView;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.preguntados.datasource.dto.enums.EndedReason;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView

public class e extends ShareView
{

    TextView a;
    TextView b;
    TextView c;
    TextView d;
    ViewSwitcher e;
    ViewSwitcher f;
    RandomImageView g;
    private GameDTO h;
    private Boolean i;
    private String j;

    public e(Context context, GameDTO gamedto, Boolean boolean1)
    {
        super(context);
        h = gamedto;
        i = boolean1;
    }

    public void a()
    {
        b();
    }

    public void b()
    {
        int l;
        int i1;
        String s;
        String s2;
        String s3;
        if (h.getMyPlayerInfo().getCrowns() != null)
        {
            l = h.getMyPlayerInfo().getCrowns().size();
        } else
        {
            l = 0;
        }
        if (h.getOpponentPlayerInfo().getCrowns() != null)
        {
            i1 = h.getOpponentPlayerInfo().getCrowns().size();
        } else
        {
            i1 = 0;
        }
        this.l.a(e, m.j(), m.g());
        this.l.a(f, h.getOpponent());
        if (h.isRandomOpponent())
        {
            s = getContext().getString(o.button_random_opponent);
        } else
        {
            s = h.getOpponent().getName();
        }
        if (!h.isActive() && h.getRound_number() == 1 && h.getEnded_reason() != EndedReason.NORMAL)
        {
            String s5 = getContext().getString(o.game_over);
            g.setPrefix("characters_lost_");
            j = (new StringBuilder()).append(String.format(getContext().getString(o.user_lost_match), new Object[] {
                s
            })).append(" - ").append(getContext().getString(o.landing_url)).toString();
            s2 = s5;
        } else
        if (h.isWin())
        {
            String s4 = getContext().getString(o.you_won);
            g.setPrefix("characters_won_");
            j = (new StringBuilder()).append(String.format(getContext().getString(o.user_won_match), new Object[] {
                s
            })).append(" - ").append(getContext().getString(o.landing_url)).toString();
            s2 = s4;
        } else
        {
            String s1 = getContext().getString(o.you_lost);
            g.setPrefix("characters_lost_");
            j = (new StringBuilder()).append(String.format(getContext().getString(o.user_lost_match), new Object[] {
                s
            })).append(" - ").append(getContext().getString(o.landing_url)).toString();
            s2 = s1;
        }
        g.a();
        if (!i.booleanValue())
        {
            s3 = (new StringBuilder()).append(String.valueOf(l)).append("-").append(String.valueOf(i1)).toString();
        } else
        {
            s3 = getContext().getString(o.tie_break);
        }
        a.setText(s2);
        b.setText(s3);
        c.setText(m.k());
        if (h.getOpponent().getId().longValue() == 0L)
        {
            d.setText(getContext().getResources().getString(o.button_random_opponent));
            return;
        } else
        {
            d.setText(h.getOpponent().getName());
            return;
        }
    }

    public String getShareText()
    {
        return j;
    }
}
