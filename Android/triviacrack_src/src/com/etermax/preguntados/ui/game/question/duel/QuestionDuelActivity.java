// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.duel;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.k;
import com.etermax.o;
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
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.preguntados.ui.game.question.BaseQuestionActivity;
import com.etermax.preguntados.ui.game.question.h;
import com.etermax.tools.widget.b.a;
import com.etermax.tools.widget.b.b;
import com.etermax.tools.widget.b.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question.duel:
//            b, QuestionDuelActivity_, a

public class QuestionDuelActivity extends BaseQuestionActivity
    implements com.etermax.preguntados.ui.game.question.duel.b, b
{

    boolean a;
    SpinType b;
    private AnswerListDTO q;
    private List r;
    private int s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean z;

    public QuestionDuelActivity()
    {
    }

    public static Intent a(Context context, GameDTO gamedto, int i, int j, boolean flag, SpinType spintype)
    {
        return (new Intent(context, com/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_)).putExtra("mGameDTO", gamedto).putExtra("mCoins", i).putExtra("mExtraShots", j).putExtra("mIsChallenged", flag).putExtra("mDuelType", spintype);
    }

    private void a(int i)
    {
        Bundle bundle = new Bundle();
        switch (i)
        {
        default:
            return;

        case 3: // '\003'
            bundle.putInt("dialogAcceptButtonListener", 3);
            int j = o.trivia_challenge_waiting_title;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(t);
            String s1 = getString(j, aobj);
            int l = o.trivia_challenge_waiting_txt;
            Object aobj1[] = new Object[1];
            aobj1[0] = c.getOpponent().getName();
            c c2 = com.etermax.tools.widget.b.c.c(s1, getString(l, aobj1), getString(o.accept), bundle);
            c2.setCancelable(false);
            c2.show(getSupportFragmentManager(), "duel_wait_opponent");
            return;

        case 5: // '\005'
            bundle.putInt("dialogAcceptButtonListener", 5);
            c c1 = com.etermax.tools.widget.b.c.a(getString(o.trivia_challenge_result_tie), getString(o.accept), bundle);
            c1.setCancelable(false);
            c1.show(getSupportFragmentManager(), "duel_tie_break_question");
            return;

        case 9: // '\t'
            bundle.putInt("dialogAcceptButtonListener", 9);
            break;
        }
        a a1 = com.etermax.tools.widget.b.a.a(getString(o.attention), getString(o.leave_duel), getString(o.accept), getString(o.cancel), bundle);
        a1.setCancelable(false);
        a1.show(getSupportFragmentManager(), "leave_duel");
    }

    private void a(QuestionDTO questiondto, int i, ArrayList arraylist)
    {
        int j = 1;
        AnswerDTO answerdto;
        if (!v)
        {
            if (i != -1)
            {
                int i1 = t;
                Iterator iterator;
                PowerUp powerup;
                int l;
                int j1;
                if (questiondto.getCorrectAnswer() == i)
                {
                    j1 = j;
                } else
                {
                    j1 = 0;
                }
                t = j1 + i1;
            }
            if (a && questiondto.getOpponentAnswer() != -1)
            {
                l = u;
                if (questiondto.getOpponentAnswer() != questiondto.getCorrectAnswer())
                {
                    j = 0;
                }
                u = l + j;
            }
        }
        answerdto = new AnswerDTO();
        answerdto.setCategory(questiondto.getCategory());
        answerdto.setId(questiondto.getId());
        answerdto.setAnswer(i);
        if (arraylist != null && arraylist.size() != 0)
        {
            answerdto.setPowerUps(arraylist);
            for (iterator = arraylist.iterator(); iterator.hasNext();)
            {
                powerup = (PowerUp)iterator.next();
                d = d - a(powerup);
            }

        }
        if (r.size() < 7)
        {
            r.add(answerdto);
        }
        this.j.b(d);
        this.j.a(i);
        this.j.a(q);
        this.j.c(s);
        this.j.d(t);
        this.j.e(u);
        this.j.b(v);
        this.j.a(b);
    }

    private void a(SpinDTO spindto)
    {
        v = true;
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), spindto.getTieBreakQuestion(), d, new ArrayList()), false);
    }

    private boolean f()
    {
        SpinDTO spindto = a(c, b);
        return s == -1 + spindto.getQuestions().size();
    }

    protected Fragment a()
    {
        SpinDTO spindto = a(c, b);
        z = true;
        if (j.u())
        {
            j.t();
            s = j.i();
            t = j.j();
            u = j.k();
            v = j.l();
            q = j.h();
            r = q.getAnswers();
            if (r == null)
            {
                r = new ArrayList();
            }
            if (r.size() == s)
            {
                a(((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), -1, j.c());
            }
            return com.etermax.preguntados.ui.game.question.k.a(getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), Integer.valueOf(j.b()), j.c());
        }
        if (b == SpinType.FINAL_DUEL)
        {
            if (c.getMyPlayerNumber() == 1)
            {
                return com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), d, new ArrayList());
            } else
            {
                return h.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), d, new ArrayList(), c.getOpponent().getFacebookId(), c.getOpponent().getName());
            }
        }
        if (a)
        {
            return h.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), d, new ArrayList(), c.getOpponent().getFacebookId(), c.getOpponent().getName());
        } else
        {
            z = false;
            return com.etermax.preguntados.ui.game.question.duel.a.a(c, d, e);
        }
    }

    public void a(Bundle bundle)
    {
    }

    public void a(GameDTO gamedto)
    {
        if (b == SpinType.DUEL && !a || b == SpinType.FINAL_DUEL && gamedto.getMyPlayerNumber() == 1)
        {
            if (!w)
            {
                a(3);
                return;
            } else
            {
                x = true;
                return;
            }
        } else
        {
            super.a(gamedto);
            return;
        }
    }

    public void a(QuestionDTO questiondto, Integer integer, Vote vote, ArrayList arraylist)
    {
        SpinDTO spindto = a(c, b);
        if (r.size() > 0)
        {
            ((AnswerDTO)r.get(-1 + r.size())).setVote(vote);
        }
        if (v)
        {
            a(q);
            return;
        }
        if (f())
        {
            if (b == SpinType.FINAL_DUEL)
            {
                a(q);
                return;
            }
            if (!a)
            {
                a(q);
                return;
            }
            if (u == t && !v)
            {
                a(5);
                return;
            } else
            {
                a(q);
                return;
            }
        }
        s = 1 + s;
        j.c(s);
        if (a || c.getMyPlayerNumber() == 2 && b == SpinType.FINAL_DUEL)
        {
            a(h.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), d, new ArrayList(), c.getOpponent().getFacebookId(), c.getOpponent().getName()), false);
            return;
        } else
        {
            a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), d, new ArrayList()), false);
            return;
        }
    }

    public void a(QuestionDTO questiondto, Integer integer, ArrayList arraylist, PowerUp powerup)
    {
        a(questiondto, integer.intValue(), arraylist);
        j.t();
        a(com.etermax.preguntados.ui.game.question.k.a(getString(o.trivia_challenge), questiondto, integer, arraylist), false);
    }

    public void a(QuestionCategory questioncategory, QuestionCategory questioncategory1)
    {
        SpinDTO spindto = a(c, b);
        z = true;
        if (!a)
        {
            q.setOfferedCrown(questioncategory);
            q.setRequestedCrown(questioncategory1);
        }
        j.a(c.getId());
        j.c(c.getStatusVersion());
        j.a(q);
        j.a(b);
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), d, new ArrayList()), false);
    }

    public void a(ArrayList arraylist, long l, PowerUp powerup)
    {
    }

    public void b()
    {
        SpinDTO spindto = a(c, b);
        if (!v)
        {
            a(((SpinQuestionDTO)spindto.getQuestions().get(s)).getQuestion(), -1, this.j.c());
        }
        for (int i = 0; i < r.size(); i++)
        {
            ((AnswerDTO)r.get(i)).setAnswer(-1);
        }

        int j = r.size();
        while (j < spindto.getQuestions().size()) 
        {
            QuestionDTO questiondto1 = ((SpinQuestionDTO)spindto.getQuestions().get(j)).getQuestion();
            AnswerDTO answerdto1 = new AnswerDTO();
            answerdto1.setCategory(questiondto1.getCategory());
            answerdto1.setId(questiondto1.getId());
            answerdto1.setAnswer(-1);
            if (r.size() < 7)
            {
                r.add(answerdto1);
            }
            if (a && questiondto1.getOpponentAnswer() != -1)
            {
                int l = u;
                int i1;
                if (questiondto1.getOpponentAnswer() == questiondto1.getCorrectAnswer())
                {
                    i1 = 1;
                } else
                {
                    i1 = 0;
                }
                u = i1 + l;
            }
            j++;
        }
        if (a && u == 0 || v)
        {
            QuestionDTO questiondto = spindto.getTieBreakQuestion();
            AnswerDTO answerdto = new AnswerDTO();
            answerdto.setCategory(questiondto.getCategory());
            answerdto.setId(questiondto.getId());
            answerdto.setAnswer(-1);
            r.add(answerdto);
        }
        a(q);
    }

    public void b(GameDTO gamedto)
    {
        super.c(gamedto);
    }

    public void c()
    {
        SpinDTO spindto = a(c, b);
        a(com.etermax.preguntados.ui.game.question.c.a(c.getId(), SpinType.DUEL, getString(o.trivia_challenge), ((SpinQuestionDTO)spindto.getQuestions().get(s)).getBackupQuestion(), d, new ArrayList()), false);
    }

    public void onAccept(Bundle bundle)
    {
        if (bundle == null) goto _L2; else goto _L1
_L1:
        bundle.getInt("dialogAcceptButtonListener");
        JVM INSTR lookupswitch 3: default 44
    //                   3: 45
    //                   5: 50
    //                   9: 67;
           goto _L2 _L3 _L4 _L5
_L2:
        return;
_L3:
        finish();
        return;
_L4:
        a(a(c, b));
        return;
_L5:
        b();
        return;
    }

    public void onBackPressed()
    {
        if (z)
        {
            a(9);
            return;
        } else
        {
            startActivity(CategoryActivity.a(this, c, d, e, true));
            finish();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        j.a(a);
        if (z || a)
        {
            j.a(c.getId());
            j.c(c.getStatusVersion());
        }
        if (j.u())
        {
            z = true;
            j.t();
            q = j.h();
            r = q.getAnswers();
            if (r == null)
            {
                r = new ArrayList();
            }
            q.setType(b);
            q.setAnswers(r);
            s = j.i();
            t = j.j();
            u = j.k();
            v = j.l();
            return;
        } else
        {
            q = new AnswerListDTO();
            r = new ArrayList();
            q.setType(b);
            q.setAnswers(r);
            s = 0;
            t = 0;
            u = 0;
            v = false;
            return;
        }
    }

    protected void onPause()
    {
        w = true;
        super.onPause();
    }

    protected void onResume()
    {
        if (x)
        {
            a(3);
            x = false;
        }
        w = false;
        super.onResume();
    }
}
