// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.crown;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import com.etermax.f;
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
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import com.etermax.preguntados.ui.d.i;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.preguntados.ui.game.question.BaseQuestionActivity;
import com.etermax.preguntados.ui.game.question.c;
import com.etermax.preguntados.ui.game.question.k;
import com.etermax.tools.widget.b.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question.crown:
//            b, QuestionCrownActivity_, a

public class QuestionCrownActivity extends BaseQuestionActivity
    implements b, com.etermax.preguntados.ui.game.question.crown.b, com.etermax.tools.widget.b.b
{

    private static int v;
    QuestionCategory a;
    i b;
    com.etermax.preguntados.c.a.b q;
    private boolean r;
    private QuestionDTO s;
    private Integer t;
    private ArrayList u;

    public QuestionCrownActivity()
    {
        r = false;
    }

    public static Intent a(Context context, GameDTO gamedto, int j, int l)
    {
        return (new Intent(context, com/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_)).putExtra("mGameDTO", gamedto).putExtra("mCoins", j).putExtra("mExtraShots", l);
    }

    public static Intent a(Context context, GameDTO gamedto, int j, int l, PowerUp powerup)
    {
        return (new Intent(context, com/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_)).putExtra("mGameDTO", gamedto).putExtra("mCoins", j).putExtra("mExtraShots", l).putExtra("mPowerUpFree", powerup);
    }

    private QuestionDTO a(SpinDTO spindto, QuestionCategory questioncategory)
    {
        for (int j = 0; j < spindto.getQuestions().size(); j++)
        {
            if (((SpinQuestionDTO)spindto.getQuestions().get(j)).getQuestion().getCategory() == questioncategory)
            {
                return ((SpinQuestionDTO)spindto.getQuestions().get(j)).getQuestion();
            }
        }

        return null;
    }

    private void b()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("dialogAcceptButtonListener", 10);
        com.etermax.tools.widget.b.a.a(getString(o.attention), getString(o.resign_question), getString(o.accept), getString(o.cancel), bundle).show(getSupportFragmentManager(), "leave_question");
    }

    protected Fragment a()
    {
        if (j.u())
        {
            a = j.e();
            QuestionDTO questiondto = a(a(c, SpinType.CROWN), a);
            if (questiondto == null)
            {
                com.etermax.a.a.c("CrownActivity", "Estado inconsistente");
                j.t();
                j.s();
                startActivity(CategoryActivity.a(getApplicationContext(), c, d, e, true));
                finish();
            }
            return k.a(getString(q.a(questiondto.getCategory()).getNameResource()), v, questiondto, Integer.valueOf(j.b()), j.c(), null);
        } else
        {
            r = true;
            return com.etermax.preguntados.ui.game.question.crown.a.a(c);
        }
    }

    public void a(Bundle bundle)
    {
    }

    public void a(GameDTO gamedto, QuestionCategory questioncategory)
    {
        QuestionDTO questiondto = a(a(c, SpinType.CROWN), questioncategory);
        a = questioncategory;
        r = false;
        j.a(c.getId());
        j.c(gamedto.getStatusVersion());
        j.a(SpinType.CROWN);
        j.a(-1);
        j.a(questioncategory);
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.CROWN, getString(q.a(questiondto.getCategory()).getNameResource()), v, questiondto, d, new ArrayList(), f), false);
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
        if (c.getAvailableCrowns().size() == 6 && questiondto.getCorrectAnswer() == integer.intValue())
        {
            b.a(getApplicationContext());
        }
        arraylist1.add(answerdto);
        answerlistdto.setType(SpinType.CROWN);
        answerlistdto.setRequestedCrown(a);
        answerlistdto.setAnswers(arraylist1);
        a(answerlistdto);
    }

    public void a(QuestionDTO questiondto, Integer integer, ArrayList arraylist, PowerUp powerup)
    {
        j.a(integer.intValue());
        j.a(arraylist);
        j.a(SpinType.CROWN);
        j.t();
        s = questiondto;
        t = integer;
        u = arraylist;
        b.e(getApplicationContext());
        a(k.a(getString(q.a(questiondto.getCategory()).getNameResource()), v, questiondto, integer, arraylist, powerup), false);
    }

    public void a(ArrayList arraylist, long l, PowerUp powerup)
    {
        SpinDTO spindto = a(c, SpinType.CROWN);
        QuestionDTO questiondto = null;
        int j = -1 + spindto.getQuestions().size();
        boolean flag = false;
        while (j >= 0 && !flag) 
        {
            boolean flag1;
            if (((SpinQuestionDTO)spindto.getQuestions().get(j)).getQuestion().getCategory() == a)
            {
                questiondto = ((SpinQuestionDTO)spindto.getQuestions().get(j)).getPowerup_question();
                flag1 = true;
            } else
            {
                flag1 = flag;
            }
            j--;
            flag = flag1;
        }
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.CROWN, getString(q.a(questiondto.getCategory()).getNameResource()), v, questiondto, l, arraylist, powerup), false);
    }

    public void b(GameDTO gamedto)
    {
        if (b.b(getApplicationContext()))
        {
            startActivity(CategoryActivity.a(this, gamedto, d, e, false, true, a));
            finish();
            return;
        } else
        {
            super.b(gamedto);
            return;
        }
    }

    public void c()
    {
        SpinDTO spindto = a(c, SpinType.CROWN);
        QuestionDTO questiondto = null;
        int j = 0;
        boolean flag = false;
        while (j < spindto.getQuestions().size() && !flag) 
        {
            QuestionDTO questiondto1 = ((SpinQuestionDTO)spindto.getQuestions().get(j)).getBackupQuestion();
            boolean flag1;
            if (questiondto1 != null && questiondto1.getCategory() == a)
            {
                questiondto = ((SpinQuestionDTO)spindto.getQuestions().get(j)).getBackupQuestion();
                flag1 = true;
            } else
            {
                flag1 = flag;
            }
            j++;
            flag = flag1;
        }
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.CROWN, getString(q.a(questiondto.getCategory()).getNameResource()), v, questiondto, d, new ArrayList()), false);
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
        ArrayList arraylist = this.j.c();
        this.j.a(-1);
        this.j.a(a);
        this.j.a(SpinType.CROWN);
        this.j.t();
        SpinDTO spindto = a(c, SpinType.CROWN);
        int j = 0;
        boolean flag = false;
        SpinQuestionDTO spinquestiondto = null;
        while (j < spindto.getQuestions().size() && !flag) 
        {
            SpinQuestionDTO spinquestiondto1;
            QuestionDTO questiondto;
            boolean flag1;
            SpinQuestionDTO spinquestiondto2;
            if (((SpinQuestionDTO)spindto.getQuestions().get(j)).getQuestion().getCategory() == a)
            {
                spinquestiondto2 = (SpinQuestionDTO)spindto.getQuestions().get(j);
                flag1 = true;
            } else
            {
                flag1 = flag;
                spinquestiondto2 = spinquestiondto;
            }
            j++;
            spinquestiondto = spinquestiondto2;
            flag = flag1;
        }
        if (!flag)
        {
            spinquestiondto1 = (SpinQuestionDTO)spindto.getQuestions().get(0);
        } else
        {
            spinquestiondto1 = spinquestiondto;
        }
        if (arraylist.contains(PowerUp.SWAP_QUESTION))
        {
            questiondto = spinquestiondto1.getPowerup_question();
        } else
        {
            questiondto = spinquestiondto1.getQuestion();
        }
        a(questiondto, Integer.valueOf(-1), ((Vote) (null)), this.j.c());
        return;
    }

    protected void onActivityResult(int j, int l, Intent intent)
    {
        if (j == 10)
        {
            a(k.a(getString(q.a(s.getCategory()).getNameResource()), q.a(s.getCategory()).getHeaderColorResource(), s, t, u), false);
            return;
        } else
        {
            super.onActivityResult(j, l, intent);
            return;
        }
    }

    public void onBackPressed()
    {
        if (!r)
        {
            b();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    static 
    {
        v = f.crown_header;
    }
}
