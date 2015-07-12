// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.a;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.gamescommon.k;
import com.etermax.h;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.PlayerStatisticsDTO;
import com.etermax.preguntados.datasource.dto.StatisticsDTO;
import com.etermax.preguntados.datasource.dto.enums.EndedReason;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category.a:
//            g, h, f

public class e extends b
{

    public static SparseArray b;
    GameDTO a;

    public e()
    {
    }

    public static Fragment a(GameDTO gamedto)
    {
        return g.d().a(gamedto).a();
    }

    private void a(PlayerStatisticsDTO playerstatisticsdto)
    {
        ((TextView)getView().findViewById(i.item_challenge).findViewById(i.item_you_count)).setText(String.valueOf(playerstatisticsdto.getChallengesWon()));
        ((TextView)getView().findViewById(i.item_crown).findViewById(i.item_you_count)).setText(String.valueOf(playerstatisticsdto.getCrownsWon()));
        ((TextView)getView().findViewById(i.item_correct_answers).findViewById(i.item_you_count)).setText(String.valueOf(playerstatisticsdto.getCorrectAnswers()));
        ((TextView)getView().findViewById(i.item_incorrect_answers).findViewById(i.item_you_count)).setText(String.valueOf(playerstatisticsdto.getIncorrectAnswers()));
        ((TextView)getView().findViewById(i.item_questions_answered).findViewById(i.item_you_count)).setText(String.valueOf(playerstatisticsdto.getQuestionsAnswered()));
    }

    private void b(PlayerStatisticsDTO playerstatisticsdto)
    {
        ((TextView)getView().findViewById(i.item_challenge).findViewById(i.item_opponent_count)).setText(String.valueOf(playerstatisticsdto.getChallengesWon()));
        ((TextView)getView().findViewById(i.item_crown).findViewById(i.item_opponent_count)).setText(String.valueOf(playerstatisticsdto.getCrownsWon()));
        ((TextView)getView().findViewById(i.item_correct_answers).findViewById(i.item_opponent_count)).setText(String.valueOf(playerstatisticsdto.getCorrectAnswers()));
        ((TextView)getView().findViewById(i.item_incorrect_answers).findViewById(i.item_opponent_count)).setText(String.valueOf(playerstatisticsdto.getIncorrectAnswers()));
        ((TextView)getView().findViewById(i.item_questions_answered).findViewById(i.item_opponent_count)).setText(String.valueOf(playerstatisticsdto.getQuestionsAnswered()));
    }

    public com.etermax.preguntados.ui.game.category.a.f a()
    {
        return new com.etermax.preguntados.ui.game.category.a.f() {

            final e a;

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void b()
    {
        String s;
        String s1;
        for (int j = 0; j < b.size(); j++)
        {
            int l = b.keyAt(j);
            View view = getView().findViewById(l);
            List list = (List)b.get(l);
            ((ImageView)view.findViewById(i.item_image)).setImageResource(((Integer)list.get(0)).intValue());
            ((TextView)view.findViewById(i.item_description)).setText(getString(((Integer)list.get(1)).intValue()));
        }

        class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[EndedReason.values().length];
                try
                {
                    a[EndedReason.EXPIRED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[EndedReason.FINAL_DUEL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[EndedReason.NORMAL.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[EndedReason.REJECTED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[EndedReason.RESIGNED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        if (a.getMyPlayerNumber() == 1)
        {
            a(a.getStatistics().getPlayerOneStatistics());
            b(a.getStatistics().getPlayerTwoStatistics());
        } else
        {
            a(a.getStatistics().getPlayerTwoStatistics());
            b(a.getStatistics().getPlayerOneStatistics());
        }
        if (a.isWin())
        {
            ((ImageView)getView().findViewById(i.game_end_match_scores_character)).setImageResource(h.character_spin_won);
        } else
        {
            ((ImageView)getView().findViewById(i.game_end_match_scores_character)).setImageResource(h.character_spin_loss);
        }
        if (a.getOpponent().getId().longValue() == 0L)
        {
            s = getString(o.button_random_opponent);
        } else
        {
            s = a.getOpponent().getName();
        }
        _cls2.a[a.getEnded_reason().ordinal()];
        JVM INSTR tableswitch 1 5: default 256
    //                   1 347
    //                   2 387
    //                   3 398
    //                   4 430
    //                   5 470;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        s1 = "";
_L8:
        ((TextView)getView().findViewById(i.game_end_match_scores_description)).setText(s1);
        return;
_L2:
        if (a.isWin())
        {
            s1 = getString(o.notification_user_no_time, new Object[] {
                s
            });
        } else
        {
            s1 = getString(o.notification_you_no_time);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        s1 = getString(o.tie_break);
        continue; /* Loop/switch isn't completed */
_L4:
        if (a.isWin())
        {
            s1 = getString(o.you_won_the_game);
        } else
        {
            s1 = getString(o.you_lost_the_game);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (a.isWin())
        {
            s1 = getString(o.notification_user_reject, new Object[] {
                s
            });
        } else
        {
            s1 = getString(o.rejected_you);
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (a.isWin())
        {
            s1 = getString(o.notification_user_resign, new Object[] {
                s
            });
        } else
        {
            s1 = getString(o.chat_you_resign);
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void c()
    {
        getActivity().onBackPressed();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(com.etermax.k.game_end_match_scores_fragment, viewgroup, false);
    }

    static 
    {
        b = new SparseArray();
        SparseArray sparsearray = b;
        int j = i.item_challenge;
        Integer ainteger[] = new Integer[3];
        ainteger[0] = Integer.valueOf(h.challenge_score);
        ainteger[1] = Integer.valueOf(o.trivia_challenge_plural);
        ainteger[2] = Integer.valueOf(f.challenge_color);
        sparsearray.put(j, new ArrayList(Arrays.asList(ainteger)));
        SparseArray sparsearray1 = b;
        int l = i.item_crown;
        Integer ainteger1[] = new Integer[3];
        ainteger1[0] = Integer.valueOf(h.crown_score);
        ainteger1[1] = Integer.valueOf(o.crown_plural);
        ainteger1[2] = Integer.valueOf(f.crown_color);
        sparsearray1.put(l, new ArrayList(Arrays.asList(ainteger1)));
        SparseArray sparsearray2 = b;
        int i1 = i.item_correct_answers;
        Integer ainteger2[] = new Integer[3];
        ainteger2[0] = Integer.valueOf(h.answer_score);
        ainteger2[1] = Integer.valueOf(o.answers_correct);
        ainteger2[2] = Integer.valueOf(f.greenLight);
        sparsearray2.put(i1, new ArrayList(Arrays.asList(ainteger2)));
        SparseArray sparsearray3 = b;
        int j1 = i.item_incorrect_answers;
        Integer ainteger3[] = new Integer[3];
        ainteger3[0] = Integer.valueOf(h.x_score);
        ainteger3[1] = Integer.valueOf(o.answers_incorrect);
        ainteger3[2] = Integer.valueOf(f.redLight);
        sparsearray3.put(j1, new ArrayList(Arrays.asList(ainteger3)));
        SparseArray sparsearray4 = b;
        int k1 = i.item_questions_answered;
        Integer ainteger4[] = new Integer[3];
        ainteger4[0] = Integer.valueOf(h.questions_score);
        ainteger4[1] = Integer.valueOf(o.questions_total);
        ainteger4[2] = Integer.valueOf(f.orangeLight);
        sparsearray4.put(k1, new ArrayList(Arrays.asList(ainteger4)));
    }
}
