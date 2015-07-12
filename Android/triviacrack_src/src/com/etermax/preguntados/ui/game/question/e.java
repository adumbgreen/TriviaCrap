// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.os.CountDownTimer;
import android.os.Handler;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.g.a;
import com.etermax.preguntados.ui.a.c;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            c, d

class e extends CountDownTimer
{

    final com.etermax.preguntados.ui.game.question.c a;
    private int b;
    private TextView c;
    private ProgressBar d;
    private TextView e;
    private View f;
    private List g;

    public e(com.etermax.preguntados.ui.game.question.c c1, long l, long l1, int j)
    {
        a = c1;
        super(l, l1);
        c = (TextView)a.getView().findViewById(i.remaining_time_text_view);
        d = (ProgressBar)a.getView().findViewById(i.countdown_bar);
        e = (TextView)a.getView().findViewById(i.question_duel_textview);
        b = j;
        f = c1.getView().findViewById(i.remaining_time_text_view);
        g = new ArrayList();
        g.add(c1.getView().findViewById(i.power_up_button_extra_time).findViewById(i.power_up_image));
        g.add(c1.getView().findViewById(i.power_up_button_bomb).findViewById(i.power_up_image));
        g.add(c1.getView().findViewById(i.power_up_button_double_chance).findViewById(i.power_up_image));
        if (c1.o != SpinType.DUEL && c1.o != SpinType.FINAL_DUEL)
        {
            g.add(c1.getView().findViewById(i.power_up_button_swap_question).findViewById(i.power_up_image));
        }
    }

    static List a(e e1)
    {
        return e1.g;
    }

    public void onFinish()
    {
        ((d)com.etermax.preguntados.ui.game.question.c.f(a)).d();
        a.d.a(a.i);
        c.setText("0'");
        d.setProgress(0);
        a.c.b(0L);
        com.etermax.preguntados.ui.game.question.c.a(a, i.answer_time_up_textview, Integer.valueOf(-1));
    }

    public void onTick(long l)
    {
        int j = (int)Math.ceil((double)l / 1000D);
        if (b != j)
        {
            b = j;
            if (j <= 10)
            {
                a.d.a(a.h);
                f.startAnimation(com.etermax.preguntados.ui.a.c.a());
                if (a.s.size() == 0 && j <= 10)
                {
                    ((View)g.get(0)).startAnimation(com.etermax.preguntados.ui.a.c.a());
                }
            } else
            if (j % 5 == 0)
            {
                int k = a.s.size();
                int i1 = 0;
                if (k == 0)
                {
                    while (i1 < g.size()) 
                    {
                        com.etermax.preguntados.ui.game.question.c.e(a).postDelayed(new Runnable(i1) {

                            final int a;
                            final e b;

                            public void run()
                            {
                                android.view.animation.Animation animation = com.etermax.preguntados.ui.a.c.a(500L);
                                ((View)com.etermax.preguntados.ui.game.question.e.a(b).get(a)).startAnimation(animation);
                            }

            
            {
                b = e.this;
                a = j;
                super();
            }
                        }, i1 * 300);
                        i1++;
                    }
                }
            }
        }
        c.setText((new StringBuilder()).append(String.valueOf(j)).append("'").toString());
        d.setProgress((int)l);
        a.c.b(l);
        if (a.l != null && a.l == GameType.DUEL_GAME && a.c.x() != null)
        {
            e.setText(com.etermax.preguntados.ui.game.question.c.a(a, a.c.x().h() + a.c.a()));
            return;
        } else
        {
            e.setVisibility(8);
            return;
        }
    }
}
