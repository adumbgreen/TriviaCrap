// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.a;

import android.content.Context;
import com.etermax.gamescommon.datasource.j;
import com.etermax.gamescommon.e;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.PowerUpDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.ui.game.duelmode.DuelModeActivity;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.a:
//            c

public class a
{

    d a;
    j b;
    com.etermax.gamescommon.login.datasource.a c;
    e d;
    b e;
    protected c f;
    private Gson g;

    public a()
    {
        g = new Gson();
    }

    private String a(String s1)
    {
        return (new StringBuilder()).append(s1).append("_").append(String.valueOf(c.e())).toString();
    }

    public boolean A()
    {
        GameType gametype = q();
        return gametype != null && gametype.equals(GameType.DUEL_GAME);
    }

    public int B()
    {
        int i1;
        if (f != null)
        {
            Iterator iterator = f.g().getAnswers().iterator();
            i1 = 0;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                List list = ((AnswerDTO)iterator.next()).getPowerUps();
                if (list != null)
                {
                    Iterator iterator1 = list.iterator();
                    while (iterator1.hasNext()) 
                    {
                        i1 += a((PowerUp)iterator1.next());
                    }
                }
            } while (true);
        } else
        {
            i1 = 0;
        }
        return i1;
    }

    protected int a(PowerUp powerup)
    {
        for (Iterator iterator = a.s().getPowerUps().iterator(); iterator.hasNext();)
        {
            PowerUpDTO powerupdto = (PowerUpDTO)iterator.next();
            if (powerupdto.getName() == powerup)
            {
                return powerupdto.getCost();
            }
        }

        return 0;
    }

    public long a()
    {
        long l1 = System.currentTimeMillis();
        long l2 = d.a(a("question_time_key"), 0L);
        if (l2 == 0L)
        {
            return l2;
        } else
        {
            return l1 - l2;
        }
    }

    public void a(int i1)
    {
        d.b(a("answer_key"), i1);
    }

    public void a(long l1)
    {
        d.b(a("is_pending_game_key"), l1);
    }

    public void a(Context context, GameDTO gamedto)
    {
        boolean flag = false;
        if (gamedto != null)
        {
            boolean flag1 = w();
            flag = false;
            if (!flag1)
            {
                boolean flag2 = gamedto.isEnded();
                flag = false;
                if (!flag2)
                {
                    GameType gametype = gamedto.getGameType();
                    GameType gametype1 = f.b();
                    flag = false;
                    if (gametype == gametype1)
                    {
                        int i1 = gamedto.getStatusVersion() != f.i();
                        flag = false;
                        if (i1 == 0)
                        {
                            List list = gamedto.getDuelQuestions();
                            flag = false;
                            if (list != null)
                            {
                                a.a(B());
                                context.startActivity(DuelModeActivity.a(context, gamedto));
                                flag = true;
                            }
                        }
                    }
                }
            }
        }
        if (!flag)
        {
            t();
            s();
        }
    }

    public void a(AnswerListDTO answerlistdto)
    {
        d.b(a("answer_list_key"), g.toJson(answerlistdto));
    }

    public void a(GameDTO gamedto)
    {
        class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[GameType.values().length];
                try
                {
                    a[GameType.DUEL_GAME.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[GameType.NORMAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        switch (_cls2.a[gamedto.getGameType().ordinal()])
        {
        case 2: // '\002'
        default:
            return;

        case 1: // '\001'
            f = new c(gamedto.getId(), GameType.DUEL_GAME, gamedto.getStatusVersion(), gamedto.getDuelQuestions().size());
            break;
        }
        a(f.b());
    }

    public void a(GameType gametype)
    {
        if (gametype == null)
        {
            gametype = GameType.NORMAL;
        }
        d.b(a("pending_game_type_key"), gametype.name());
    }

    public void a(QuestionCategory questioncategory)
    {
        d.b(a("requested_crown_key"), questioncategory.name());
    }

    public void a(SpinType spintype)
    {
        d.b(a("spin_type_key"), spintype.name());
    }

    public void a(ArrayList arraylist)
    {
        d.b(a("power_ups_key"), g.toJson(arraylist));
    }

    public void a(boolean flag)
    {
        d.b(a("is_challenged_key"), flag);
    }

    public int b()
    {
        return (int)d.a(a("answer_key"), -2L);
    }

    public void b(int i1)
    {
        d.b(a("coins_key"), i1);
    }

    public void b(long l1)
    {
        d.b(a("progress_bar_elapsed_time_key"), l1);
    }

    public void b(boolean flag)
    {
        d.b(a("is_tie_break_question_key"), flag);
    }

    public ArrayList c()
    {
        String s1 = d.a(a("power_ups_key"), "[]");
        return (ArrayList)g.fromJson(s1, (new TypeToken() {

            final a a;

            
            {
                a = a.this;
                super();
            }
        }).getType());
    }

    public void c(int i1)
    {
        d.b(a("current_question_key"), i1);
    }

    public void c(long l1)
    {
        d.b(a("status_version_key"), l1);
    }

    public SpinType d()
    {
        String s1 = d.a(a("spin_type_key"), "");
        if (s1.compareTo(SpinType.CROWN.name()) == 0)
        {
            return SpinType.CROWN;
        }
        if (s1.compareTo(SpinType.DUEL.name()) == 0)
        {
            return SpinType.DUEL;
        }
        if (s1.compareTo(SpinType.FINAL_DUEL.name()) == 0)
        {
            return SpinType.FINAL_DUEL;
        }
        if (s1.compareTo(SpinType.NORMAL.name()) == 0)
        {
            return SpinType.NORMAL;
        } else
        {
            return null;
        }
    }

    public void d(int i1)
    {
        d.b(a("correct_answers_key"), i1);
    }

    public QuestionCategory e()
    {
        String s1 = d.a(a("requested_crown_key"), "");
        if (e.a(s1) == null)
        {
            return null;
        } else
        {
            return e.a(s1).getCategory();
        }
    }

    public void e(int i1)
    {
        d.b(a("opponent_correct_answers_count_key"), i1);
    }

    public int f()
    {
        return (int)d.a(a("coins_key"), 0L);
    }

    public void f(int i1)
    {
        d.b(a("progress_bar_max_key"), i1);
    }

    public boolean g()
    {
        return d.a(a("is_challenged_key"), false);
    }

    public AnswerListDTO h()
    {
        String s1 = d.a(a("answer_list_key"), "{}");
        return (AnswerListDTO)g.fromJson(s1, com/etermax/preguntados/datasource/dto/AnswerListDTO);
    }

    public int i()
    {
        return (int)d.a(a("current_question_key"), 0L);
    }

    public int j()
    {
        return (int)d.a(a("correct_answers_key"), 0L);
    }

    public int k()
    {
        return (int)d.a(a("opponent_correct_answers_count_key"), 0L);
    }

    public boolean l()
    {
        return d.a(a("is_tie_break_question_key"), false);
    }

    public int m()
    {
        return (int)d.a(a("is_pending_game_key"), -1L);
    }

    public int n()
    {
        return (int)d.a(a("progress_bar_max_key"), 0L);
    }

    public long o()
    {
        return d.a(a("progress_bar_elapsed_time_key"), 0L);
    }

    public long p()
    {
        return d.a(a("status_version_key"), -1L);
    }

    public GameType q()
    {
        return GameType.getByString(d.a(a("pending_game_type_key"), null));
    }

    public void r()
    {
        d.b(a("question_time_key"), System.currentTimeMillis());
    }

    public void s()
    {
        d.a(a("answer_key"));
        d.a(a("power_ups_key"));
        d.a(a("spin_type_key"));
        d.a(a("requested_crown_key"));
        d.a(a("coins_key"));
        d.a(a("is_challenged_key"));
        d.a(a("answer_list_key"));
        d.a(a("current_question_key"));
        d.a(a("correct_answers_key"));
        d.a(a("opponent_correct_answers_count_key"));
        d.a(a("is_tie_break_question_key"));
        d.a(a("has_answered_question_key"));
        d.a(a("is_pending_game_key"));
        d.a(a("progress_bar_max_key"));
        d.a(a("progress_bar_elapsed_time_key"));
        d.a(a("status_version_key"));
        d.a(a("pending_game_type_key"));
        b.a(a("game_status_key"));
        f = null;
    }

    public void t()
    {
        d.a(a("question_time_key"));
    }

    public boolean u()
    {
        return m() != -1;
    }

    public void v()
    {
        f = (c)b.a(a("game_status_key"), com/etermax/preguntados/ui/game/a/c);
    }

    public boolean w()
    {
        boolean flag;
label0:
        {
            if (f != null)
            {
                GameType gametype = f.b();
                flag = false;
                if (gametype != null)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public c x()
    {
        return f;
    }

    public void y()
    {
        b.a(a("game_status_key"), f);
    }

    public void z()
    {
        Long long1 = Long.valueOf(a());
        if (long1.longValue() > (long)(1000 * a.s().getQuestionTime()))
        {
            long1 = Long.valueOf(1000 * a.s().getQuestionTime());
        }
        f.a(long1);
    }
}
