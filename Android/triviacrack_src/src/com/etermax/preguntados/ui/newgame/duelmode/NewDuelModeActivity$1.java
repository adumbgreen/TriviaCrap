// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.game.duelmode.DuelModeActivity;
import com.etermax.tools.i.a;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            NewDuelModeActivity

class a extends a
{

    final GameRequestDTO a;
    final NewDuelModeActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(NewDuelModeActivity newduelmodeactivity, GameDTO gamedto)
    {
        super.a(newduelmodeactivity, gamedto);
        b.f.b();
        com.etermax.preguntados.ui.newgame.duelmode.NewDuelModeActivity.a(b, -1 + gamedto.getDuelPlayers().size(), b.g.n());
        if (gamedto.getGameType() != null && gamedto.getGameType() == GameType.DUEL_GAME)
        {
            newduelmodeactivity.startActivity(DuelModeActivity.a(newduelmodeactivity, gamedto));
        }
        b.finish();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((NewDuelModeActivity)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return b.e.a(a);
    }

    (NewDuelModeActivity newduelmodeactivity, String s, GameRequestDTO gamerequestdto)
    {
        b = newduelmodeactivity;
        a = gamerequestdto;
        super(s);
    }
}
