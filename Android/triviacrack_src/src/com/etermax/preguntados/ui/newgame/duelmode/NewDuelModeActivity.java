// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.language.Language;
import com.etermax.o;
import com.etermax.preguntados.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.game.duelmode.DuelModeActivity;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.tools.f.a;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            c, g, k, NewDuelModeActivity_, 
//            a, b, f, j

public class NewDuelModeActivity extends BaseFragmentActivity
    implements c, com.etermax.preguntados.ui.newgame.duelmode.g, k
{

    String a;
    Language b;
    ArrayList c;
    g d;
    d e;
    com.etermax.gamescommon.c.a f;
    com.etermax.gamescommon.login.datasource.a g;
    a h;

    public NewDuelModeActivity()
    {
    }

    public static Intent a(Context context, String s, Language language, ArrayList arraylist, g g1)
    {
        return com.etermax.preguntados.ui.newgame.duelmode.NewDuelModeActivity_.a(context).a(s).a(language).a(arraylist).a(g1).a();
    }

    private void a(int i, Nationality nationality)
    {
        b b1 = new b();
        b1.a("normal");
        b1.a(i);
        b1.b(nationality.name());
        h.a(b1);
    }

    private void a(GameRequestDTO gamerequestdto)
    {
        (new com.etermax.tools.i.a(getString(o.loading), gamerequestdto) {

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

            
            {
                b = NewDuelModeActivity.this;
                a = gamerequestdto;
                super(s);
            }
        }).a(this);
    }

    static void a(NewDuelModeActivity newduelmodeactivity, int i, Nationality nationality)
    {
        newduelmodeactivity.a(i, nationality);
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.newgame.duelmode.b.a(a, d);
    }

    public void a(String s)
    {
        a = s;
        a(com.etermax.preguntados.ui.newgame.duelmode.f.a(a, c), true, "fragment_duel_players");
    }

    public void a(ArrayList arraylist, ArrayList arraylist1)
    {
        a(com.etermax.preguntados.ui.newgame.duelmode.j.a(a, arraylist, arraylist1), true);
    }

    public void a(List list)
    {
        a(new GameRequestDTO(GameType.DUEL_GAME, a, b, list));
    }

    public void b()
    {
        onBackPressed();
    }

    public void c()
    {
        finish();
    }
}
