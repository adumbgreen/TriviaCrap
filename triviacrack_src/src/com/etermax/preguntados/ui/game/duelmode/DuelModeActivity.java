// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.shop.b;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import com.etermax.preguntados.ui.game.a.a;
import com.etermax.preguntados.ui.game.a.c;
import com.etermax.preguntados.ui.game.question.BaseQuestionActivity;
import com.etermax.preguntados.ui.game.question.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            g, DuelModeActivity_, a

public class DuelModeActivity extends BaseQuestionActivity
    implements b, com.etermax.tools.widget.b.b
{

    com.etermax.preguntados.ui.game.duelmode.g a;
    com.etermax.preguntados.c.a.b b;

    public DuelModeActivity()
    {
    }

    public static Intent a(Context context, GameDTO gamedto)
    {
        com.etermax.preguntados.ui.game.duelmode.g g1 = com.etermax.preguntados.ui.game.duelmode.g.a;
        return com.etermax.preguntados.ui.game.duelmode.DuelModeActivity_.a(context).a(gamedto).a(g1).a();
    }

    private String f()
    {
        if (c.isRandomGame())
        {
            return getString(o.random_challenge);
        } else
        {
            return c.getName();
        }
    }

    protected Fragment a()
    {
        QuestionDTO questiondto = (QuestionDTO)c.getDuelQuestions().get(j.x().c());
        if (!j.x().f())
        {
            j.x().a(questiondto.getId(), questiondto.getCategory());
            return com.etermax.preguntados.ui.game.question.c.a(j.x().a(), GameType.DUEL_GAME, a, c.getDuelQuestions().size(), SpinType.DUEL, f(), b.a(questiondto.getCategory()).getHeaderColorResource(), questiondto, 0, j.x().e());
        } else
        {
            return k.a(GameType.DUEL_GAME, a, c.getDuelQuestions().size(), f(), b.a(questiondto.getCategory()).getHeaderColorResource(), (QuestionDTO)c.getDuelQuestions().get(j.x().c()), Integer.valueOf(j.x().d()), j.x().e());
        }
    }

    public void a(Bundle bundle)
    {
    }

    public void a(QuestionDTO questiondto, Integer integer, Vote vote, ArrayList arraylist)
    {
        j.x().a(vote);
        j.x().j();
        if (j.x().l())
        {
            j.x().k();
            QuestionDTO questiondto1 = (QuestionDTO)c.getDuelQuestions().get(j.x().c());
            j.x().a(questiondto1.getId(), questiondto1.getCategory());
            j.y();
            a(com.etermax.preguntados.ui.game.question.c.a(j.x().a(), GameType.DUEL_GAME, a, c.getDuelQuestions().size(), SpinType.DUEL, f(), b.a(questiondto1.getCategory()).getHeaderColorResource(), questiondto1, 0, j.x().e()), false);
            return;
        } else
        {
            j.y();
            a(j.x().g());
            return;
        }
    }

    public void a(QuestionDTO questiondto, Integer integer, ArrayList arraylist, PowerUp powerup)
    {
        j.x().a(arraylist);
        j.t();
        j.y();
        a(k.a(GameType.DUEL_GAME, a, c.getDuelQuestions().size(), f(), b.a(questiondto.getCategory()).getHeaderColorResource(), questiondto, integer, arraylist), false);
    }

    public void a(ArrayList arraylist, long l, PowerUp powerup)
    {
    }

    void b()
    {
        l.a(c);
    }

    public void c()
    {
        ((QuestionDTO)c.getDuelQuestions().get(j.x().c())).setMediaType(QuestionType.NORMAL);
        a(a());
    }

    public void onAccept(Bundle bundle)
    {
        AnswerListDTO answerlistdto = new AnswerListDTO();
        ArrayList arraylist = new ArrayList();
        AnswerDTO answerdto;
        for (Iterator iterator = c.getDuelQuestions().iterator(); iterator.hasNext(); arraylist.add(answerdto))
        {
            QuestionDTO questiondto = (QuestionDTO)iterator.next();
            answerdto = new AnswerDTO();
            answerdto.setId(questiondto.getId());
            answerdto.setCategory(questiondto.getCategory());
            answerdto.setAnswer(-1);
        }

        answerlistdto.setAnswers(arraylist);
        answerlistdto.setFinishTime(Long.valueOf(1000 * (g.s().getQuestionTime() * c.getDuelQuestions().size())));
        a(answerlistdto);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 10)
        {
            QuestionDTO questiondto = (QuestionDTO)c.getDuelQuestions().get(this.j.x().c());
            a(k.a(GameType.DUEL_GAME, a, c.getDuelQuestions().size(), f(), b.a(questiondto.getCategory()).getHeaderColorResource(), questiondto, Integer.valueOf(this.j.x().d()), this.j.x().e()), false);
            return;
        } else
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    public void onBackPressed()
    {
        com.etermax.tools.widget.b.a.a(getString(o.attention), getString(o.leave_duel), getString(o.accept), getString(o.cancel)).show(getSupportFragmentManager(), "leave_duel_dialog");
    }
}
