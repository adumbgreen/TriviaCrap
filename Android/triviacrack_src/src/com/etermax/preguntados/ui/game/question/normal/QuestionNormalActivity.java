// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.normal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.shop.b;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinDTO;
import com.etermax.preguntados.datasource.dto.SpinQuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import com.etermax.preguntados.ui.d.i;
import com.etermax.preguntados.ui.game.question.BaseQuestionActivity;
import com.etermax.preguntados.ui.game.question.c;
import com.etermax.preguntados.ui.game.question.k;
import com.etermax.tools.widget.b.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question.normal:
//            QuestionNormalActivity_

public class QuestionNormalActivity extends BaseQuestionActivity
    implements b, com.etermax.tools.widget.b.b
{

    i a;
    com.etermax.preguntados.c.a.b b;
    private QuestionDTO q;
    private Integer r;
    private ArrayList s;

    public QuestionNormalActivity()
    {
    }

    public static Intent a(Context context, GameDTO gamedto, int j, int l)
    {
        return (new Intent(context, com/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity_)).putExtra("mGameDTO", gamedto).putExtra("mCoins", j).putExtra("mExtraShots", l);
    }

    public static Intent a(Context context, GameDTO gamedto, int j, int l, PowerUp powerup)
    {
        return (new Intent(context, com/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity_)).putExtra("mGameDTO", gamedto).putExtra("mCoins", j).putExtra("mExtraShots", l).putExtra("mPowerUpFree", powerup);
    }

    private void b()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("dialogAcceptButtonListener", 10);
        com.etermax.tools.widget.b.a.a(getString(o.attention), getString(o.resign_question), getString(o.accept), getString(o.cancel), bundle).show(getSupportFragmentManager(), "leave_question");
    }

    protected Fragment a()
    {
        QuestionDTO questiondto = ((SpinQuestionDTO)a(c, SpinType.NORMAL).getQuestions().get(0)).getQuestion();
        com.etermax.preguntados.datasource.dto.enums.QuestionCategory questioncategory = questiondto.getCategory();
        if (j.u())
        {
            return k.a(getString(b.a(questiondto.getCategory()).getNameResource()), b.a(questiondto.getCategory()).getHeaderColorResource(), questiondto, Integer.valueOf(j.b()), j.c());
        } else
        {
            j.a(c.getId());
            j.c(c.getStatusVersion());
            j.a(SpinType.NORMAL);
            j.a(-1);
            return com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.NORMAL, getString(b.a(questioncategory).getNameResource()), b.a(questioncategory).getHeaderColorResource(), questiondto, d, new ArrayList(), f);
        }
    }

    public void a(Bundle bundle)
    {
    }

    public void a(QuestionDTO questiondto, Integer integer, Vote vote, ArrayList arraylist)
    {
        AnswerListDTO answerlistdto = new AnswerListDTO();
        ArrayList arraylist1 = new ArrayList();
        AnswerDTO answerdto = new AnswerDTO();
        answerdto.setCategory(questiondto.getCategory());
        answerdto.setId(questiondto.getId());
        answerdto.setVote(vote);
        answerdto.setAnswer(integer.intValue());
        if (arraylist != null && arraylist.size() != 0)
        {
            answerdto.setPowerUps(arraylist);
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
            {
                PowerUp powerup = (PowerUp)iterator.next();
                d = d - a(powerup);
            }

        }
        arraylist1.add(answerdto);
        answerlistdto.setType(SpinType.NORMAL);
        answerlistdto.setAnswers(arraylist1);
        a(answerlistdto);
    }

    public void a(QuestionDTO questiondto, Integer integer, ArrayList arraylist, PowerUp powerup)
    {
        j.a(integer.intValue());
        j.a(arraylist);
        j.a(SpinType.NORMAL);
        j.t();
        q = questiondto;
        r = integer;
        s = arraylist;
        a.e(getApplicationContext());
        a(k.a(getString(b.a(questiondto.getCategory()).getNameResource()), b.a(questiondto.getCategory()).getHeaderColorResource(), questiondto, integer, arraylist, powerup), false);
    }

    public void a(ArrayList arraylist, long l, PowerUp powerup)
    {
        SpinDTO spindto = a(c, SpinType.NORMAL);
        com.etermax.preguntados.datasource.dto.enums.QuestionCategory questioncategory = ((SpinQuestionDTO)spindto.getQuestions().get(0)).getPowerup_question().getCategory();
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.NORMAL, getString(b.a(questioncategory).getNameResource()), b.a(questioncategory).getHeaderColorResource(), ((SpinQuestionDTO)spindto.getQuestions().get(0)).getPowerup_question(), l, arraylist, powerup), false);
    }

    public void c()
    {
        SpinDTO spindto = a(c, SpinType.NORMAL);
        com.etermax.preguntados.datasource.dto.enums.QuestionCategory questioncategory = ((SpinQuestionDTO)spindto.getQuestions().get(0)).getBackupQuestion().getCategory();
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.NORMAL, getString(b.a(questioncategory).getNameResource()), b.a(questioncategory).getHeaderColorResource(), ((SpinQuestionDTO)spindto.getQuestions().get(0)).getBackupQuestion(), d, new ArrayList()), false);
    }

    public void onAccept(Bundle bundle)
    {
        if (bundle == null) goto _L2; else goto _L1
_L1:
        bundle.getInt("dialogAcceptButtonListener");
        JVM INSTR tableswitch 10 10: default 28
    //                   10 29;
           goto _L2 _L3
_L2:
        return;
_L3:
        ArrayList arraylist = j.c();
        j.a(-1);
        j.a(SpinType.NORMAL);
        j.t();
        QuestionDTO questiondto;
        if (arraylist.contains(PowerUp.SWAP_QUESTION))
        {
            questiondto = ((SpinQuestionDTO)a(c, SpinType.NORMAL).getQuestions().get(0)).getPowerup_question();
        } else
        {
            questiondto = ((SpinQuestionDTO)a(c, SpinType.NORMAL).getQuestions().get(0)).getQuestion();
        }
        a(questiondto, Integer.valueOf(-1), ((Vote) (null)), j.c());
        return;
    }

    protected void onActivityResult(int j, int l, Intent intent)
    {
        if (j == 10)
        {
            a(k.a(getString(b.a(q.getCategory()).getNameResource()), b.a(q.getCategory()).getHeaderColorResource(), q, r, s), false);
            return;
        } else
        {
            super.onActivityResult(j, l, intent);
            return;
        }
    }

    public void onBackPressed()
    {
        b();
    }
}
