// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.b.v;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.h.a.b;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.language.Language;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.preguntados.ui.game.duelmode.DuelModeActivity;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.preguntados.ui.newgame.duelmode.NewDuelModeActivity;
import com.etermax.tools.f.a;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            c, h, NewGameActivity_, b, 
//            g, a

public class NewGameActivity extends BaseFragmentActivity
    implements b, com.etermax.preguntados.ui.newgame.b.b, c, h, com.etermax.tools.widget.b.b
{

    int a;
    int b;
    d c;
    com.etermax.tools.social.a.b d;
    a e;
    com.etermax.preguntados.g.a f;
    com.etermax.gamescommon.c.a g;
    com.etermax.gamescommon.login.datasource.a h;
    e i;
    com.etermax.gamescommon.datasource.e j;
    private GameDTO k;

    public NewGameActivity()
    {
    }

    public static Intent a(Context context, int l, int i1)
    {
        return (new Intent(context, com/etermax/preguntados/ui/newgame/NewGameActivity_)).putExtra("mCoins", l).putExtra("mExtraShots", i1);
    }

    private void a(int l, Nationality nationality)
    {
        com.etermax.preguntados.a.b b1 = new com.etermax.preguntados.a.b();
        b1.a("aleatorio");
        b1.a(l);
        b1.b(nationality.name());
        e.a(b1);
    }

    private void a(long l, BaseAdapter baseadapter, j j1)
    {
        j1.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITING);
        baseadapter.notifyDataSetChanged();
        (new com.etermax.tools.i.a(l, j1, baseadapter) {

            final long a;
            final j b;
            final BaseAdapter c;
            final NewGameActivity d;

            public Object a()
            {
                return b();
            }

            protected void a(NewGameActivity newgameactivity, Exception exception)
            {
                super.a(newgameactivity, exception);
                b.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.NOT_INVITED);
                c.notifyDataSetChanged();
            }

            protected void a(NewGameActivity newgameactivity, Void void1)
            {
                super.a(newgameactivity, void1);
                b.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITED);
                c.notifyDataSetChanged();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((NewGameActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((NewGameActivity)obj, (Void)obj1);
            }

            public Void b()
            {
                d.j.a(Long.valueOf(a));
                return null;
            }

            
            {
                d = NewGameActivity.this;
                a = l;
                b = j1;
                c = baseadapter;
                super();
            }
        }).a(this);
    }

    private void a(Language language, String s)
    {
        v v1 = new v();
        v1.a(language);
        v1.a(s);
        e.a(v1);
    }

    private void a(GameRequestDTO gamerequestdto)
    {
        (new com.etermax.tools.i.a(getString(o.loading), gamerequestdto) {

            final GameRequestDTO a;
            final NewGameActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(NewGameActivity newgameactivity, GameDTO gamedto)
            {
                super.a(newgameactivity, gamedto);
                b.g.b();
                if (gamedto.getGameType() == null || gamedto.getGameType() == GameType.NORMAL)
                {
                    newgameactivity.startActivity(CategoryActivity.a(newgameactivity, gamedto, b.a, b.b, false));
                }
                b.finish();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((NewGameActivity)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return b.c.a(a);
            }

            
            {
                b = NewGameActivity.this;
                a = gamerequestdto;
                super(s);
            }
        }).a(this);
    }

    private ArrayList c()
    {
        String s = i.a("last_participants", null);
        return (ArrayList)(new Gson()).fromJson(s, (new TypeToken() {

            final NewGameActivity a;

            
            {
                a = NewGameActivity.this;
                super();
            }
        }).getType());
    }

    private void d()
    {
        com.etermax.tools.widget.b.a.a(getString(o.attention), getString(o.leave_duel), getString(o.accept), getString(o.cancel)).show(getSupportFragmentManager(), "reject_duel_dialog");
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.newgame.b.g();
    }

    public void a(Bundle bundle)
    {
    }

    public void a(BaseAdapter baseadapter, j j1)
    {
        a(j1.getId().longValue(), baseadapter, j1);
    }

    public void a(com.etermax.gamescommon.h.a.e e1, Language language, j j1)
    {
        a(new GameRequestDTO(GameType.NORMAL, language, j1));
    }

    public void a(Language language)
    {
        f.a(com.etermax.preguntados.g.a.A);
        a(language, "random");
        a(new GameRequestDTO(GameType.NORMAL, language));
    }

    public void a(GameDTO gamedto)
    {
        if (gamedto.isEnded())
        {
            finish();
        } else
        if (gamedto.getGameType() != null && gamedto.getGameType() == GameType.DUEL_GAME)
        {
            k = gamedto;
            b(getSupportFragmentManager().findFragmentByTag("waiting_duel_game_fragment"));
            a(((Fragment) (com.etermax.preguntados.ui.newgame.b.a.a(gamedto))), "confirm_new_random_duel_fragment", false);
            return;
        }
    }

    public void b()
    {
        finish();
    }

    public void b(Language language)
    {
        a(com.etermax.preguntados.ui.newgame.a.a.a(language), true);
    }

    public void b(GameDTO gamedto)
    {
        a(-1 + gamedto.getDuelPlayers().size(), h.n());
        startActivity(DuelModeActivity.a(getApplicationContext(), gamedto));
        finish();
    }

    public void c(Language language)
    {
        startActivity(NewDuelModeActivity.a(this, null, language, c(), g.a));
        finish();
    }

    public void d(Language language)
    {
        a(com.etermax.preguntados.ui.newgame.g.a(language), "waiting_duel_game_fragment", false);
    }

    public void onAccept(Bundle bundle)
    {
        AnswerListDTO answerlistdto = new AnswerListDTO();
        ArrayList arraylist = new ArrayList();
        AnswerDTO answerdto;
        for (Iterator iterator = k.getDuelQuestions().iterator(); iterator.hasNext(); arraylist.add(answerdto))
        {
            QuestionDTO questiondto = (QuestionDTO)iterator.next();
            answerdto = new AnswerDTO();
            answerdto.setId(questiondto.getId());
            answerdto.setCategory(questiondto.getCategory());
            answerdto.setAnswer(-1);
        }

        answerlistdto.setAnswers(arraylist);
        answerlistdto.setFinishTime(Long.valueOf(1000 * (c.s().getQuestionTime() * k.getDuelQuestions().size())));
        (new com.etermax.preguntados.ui.newgame.a(this, getString(o.loading), k, answerlistdto)).a(this);
    }

    protected void onActivityResult(int l, int i1, Intent intent)
    {
        d.a(this, l, i1, intent);
        super.onActivityResult(l, i1, intent);
    }

    public void onBackPressed()
    {
        if (k != null)
        {
            d();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }
}
