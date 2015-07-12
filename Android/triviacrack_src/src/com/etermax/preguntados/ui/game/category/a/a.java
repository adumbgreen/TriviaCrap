// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.a;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.resources.RandomImageView;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.EventDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.preguntados.datasource.dto.PregUserDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.datasource.dto.enums.EndedReason;
import com.etermax.preguntados.datasource.dto.enums.GameEvent;
import com.etermax.preguntados.sharing.f;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.ui.profile.ProfileActivity;
import com.etermax.tools.navigation.b;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category.a:
//            c, d, b

public class a extends b
{

    GameDTO a;
    boolean b;
    com.etermax.gamescommon.login.datasource.a c;
    com.etermax.preguntados.g.a d;
    m e;
    ViewSwitcher f;
    ViewSwitcher g;
    RandomImageView h;
    TextView i;
    TextView j;
    com.etermax.gamescommon.dashboard.b k;

    public a()
    {
    }

    static Context a(a a1)
    {
        return a1.getApplicationContext();
    }

    public static Fragment a(GameDTO gamedto, boolean flag)
    {
        return com.etermax.preguntados.ui.game.category.a.c.g().a(gamedto).a(flag).a();
    }

    private android.view.View.OnClickListener a(k k1)
    {
        return new android.view.View.OnClickListener(k1) {

            final k a;
            final a b;

            public void onClick(View view)
            {
                android.content.Intent intent = ProfileActivity.a(a.a(b), a.getId().longValue(), an.h.toString());
                b.startActivity(intent);
            }

            
            {
                b = a.this;
                a = k1;
                super();
            }
        };
    }

    private int g()
    {
label0:
        {
            if (a.getEvents() == null)
            {
                break label0;
            }
            Iterator iterator = a.getEvents().iterator();
            EventDTO eventdto;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                eventdto = (EventDTO)iterator.next();
            } while (eventdto.getType() != GameEvent.GAME_ENDED);
            return eventdto.getCoinsReward();
        }
        return 0;
    }

    public com.etermax.preguntados.ui.game.category.a.b a()
    {
        return new com.etermax.preguntados.ui.game.category.a.b() {

            final a a;

            public void a(int l)
            {
            }

            public void i()
            {
            }

            public void m(GameDTO gamedto)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void b()
    {
        int l;
        int i1;
        int j1;
        int k1;
        String s;
        String s1;
        String s2;
        if (a.getMyPlayerInfo().getCrowns() != null)
        {
            l = a.getMyPlayerInfo().getCrowns().size();
        } else
        {
            l = 0;
        }
        if (a.getOpponentPlayerInfo().getCrowns() != null)
        {
            i1 = a.getOpponentPlayerInfo().getCrowns().size();
        } else
        {
            i1 = 0;
        }
        j1 = g();
        k = new com.etermax.gamescommon.dashboard.b();
        k.a(f, c.j(), c.g());
        k.a(g, a.getOpponent());
        if (a.getUserLevelDataDTO() != null)
        {
            String s4;
            if (a.getUserLevelDataDTO().getLevel() > 999)
            {
                s4 = "+99";
            } else
            {
                s4 = String.valueOf(a.getUserLevelDataDTO().getLevel());
            }
            i.setText(s4);
            i.setVisibility(0);
        }
        if (!a.isActive() && a.getRound_number() == 1 && a.getEnded_reason() != EndedReason.NORMAL)
        {
            k1 = com.etermax.preguntados.g.a.r;
            s = getString(o.game_over);
            h.setPrefix("characters_lost_");
        } else
        if (a.isWin())
        {
            k1 = com.etermax.preguntados.g.a.q;
            s = getString(o.you_won);
            h.setPrefix("characters_won_");
        } else
        {
            k1 = com.etermax.preguntados.g.a.r;
            s = getString(o.you_lost);
            h.setPrefix("characters_lost_");
        }
        h.a();
        s1 = (new StringBuilder()).append(String.valueOf(l)).append("-").append(String.valueOf(i1)).toString();
        d.a(k1);
        UserLevelDataDTO userleveldatadto;
        String s3;
        if (b)
        {
            s2 = getString(o.tie_break);
        } else
        {
            s2 = s1;
        }
        ((TextView)getView().findViewById(i.game_end_result_title)).setText(s);
        ((TextView)getView().findViewById(i.game_end_result_score)).setText(s2);
        ((TextView)getView().findViewById(i.game_end_result_coins)).setText(String.valueOf(j1));
        ((TextView)getView().findViewById(i.gameEndPlayer1Text)).setText(c.k());
        if (!a.isRandomOpponent()) goto _L2; else goto _L1
_L1:
        getView().findViewById(i.game_end_accept_button).setVisibility(4);
        ((TextView)getView().findViewById(i.gameEndPlayer2Text)).setText(getView().getResources().getString(o.button_random_opponent));
_L4:
        getView().findViewById(i.gameEndPlayer2Image).setOnClickListener(a(a.getOpponent()));
        return;
_L2:
        ((TextView)getView().findViewById(i.gameEndPlayer2Text)).setText(a.getOpponent().getName());
        userleveldatadto = ((PregUserDTO)a.getOpponent()).getLevelData();
        if (userleveldatadto != null)
        {
            if (a.getUserLevelDataDTO().getLevel() > 999)
            {
                s3 = "+99";
            } else
            {
                s3 = String.valueOf(userleveldatadto.getLevel());
            }
            j.setText(s3);
            j.setVisibility(0);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    void c()
    {
        ((com.etermax.preguntados.ui.game.category.a.b)mCallbacks).i();
    }

    void d()
    {
        ((com.etermax.preguntados.ui.game.category.a.b)mCallbacks).m(a);
    }

    void e()
    {
        com.etermax.preguntados.sharing.e e1 = com.etermax.preguntados.sharing.f.a(getApplicationContext(), a, Boolean.valueOf(b));
        e.a(e1);
    }

    void f()
    {
        int l = 0;
        int i1;
        for (i1 = -1; l < a.getEvents().size() && i1 == -1; l++)
        {
            if (a.getEvents() != null && ((EventDTO)a.getEvents().get(l)).getType() == GameEvent.GAME_ENDED)
            {
                i1 = ((EventDTO)a.getEvents().get(l)).getCoinsReward();
            }
        }

        ((com.etermax.preguntados.ui.game.category.a.b)mCallbacks).a(i1);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(com.etermax.k.game_end_fragment, viewgroup, false);
    }
}
