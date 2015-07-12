// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.a.a.e;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.PowerUpDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.ui.game.a.a;
import com.etermax.preguntados.ui.withoutcoins.g;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.CustomFontButton;
import com.etermax.tools.widget.OutlineTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            f, g, d, e

public class c extends b
{

    static Map v;
    private ColorDrawable A;
    private ClipDrawable B;
    private com.etermax.preguntados.e.a C;
    com.etermax.gamescommon.login.datasource.a a;
    d b;
    a c;
    com.etermax.preguntados.g.a d;
    com.etermax.tools.f.a e;
    com.etermax.preguntados.ui.d.i f;
    com.etermax.preguntados.c.a.b g;
    com.etermax.gamescommon.e h;
    com.etermax.preguntados.e.c i;
    g j;
    long k;
    GameType l;
    com.etermax.preguntados.ui.game.duelmode.g m;
    int n;
    SpinType o;
    String p;
    int q;
    QuestionDTO r;
    ArrayList s;
    long t;
    PowerUp u;
    private Handler w;
    private boolean x;
    private boolean y;
    private CountDownTimer z;

    public c()
    {
        A = new ColorDrawable(f.white);
        B = new ClipDrawable(A, 5, 1);
        C = new com.etermax.preguntados.e.a() {

            final c a;

            public void a()
            {
                com.etermax.preguntados.ui.game.question.c.a(a);
                if (a.r.getQuestionType().name().compareTo(QuestionType.IMAGE.name()) == 0)
                {
                    com.etermax.preguntados.ui.game.question.c.a(a, a.r.getCategory().name());
                }
                ((com.etermax.preguntados.ui.game.question.d)com.etermax.preguntados.ui.game.question.c.b(a)).c();
            }

            public void a(Bitmap bitmap)
            {
                com.etermax.preguntados.ui.game.question.c.a(a);
                a.d();
                a.c.r();
                a.a(a.c.a());
            }

            
            {
                a = c.this;
                super();
            }
        };
    }

    public static Fragment a(long l1, GameType gametype, com.etermax.preguntados.ui.game.duelmode.g g1, int i1, SpinType spintype, String s1, int j1, 
            QuestionDTO questiondto, int k1, ArrayList arraylist)
    {
        return com.etermax.preguntados.ui.game.question.f.i().b(l1).a(gametype).a(g1).a(i1).a(spintype).a(s1).b(j1).a(questiondto).a(arraylist).a();
    }

    public static Fragment a(long l1, SpinType spintype, String s1, int i1, QuestionDTO questiondto, int j1, ArrayList arraylist)
    {
        return a(l1, null, null, 0, spintype, s1, i1, questiondto, j1, arraylist);
    }

    public static Fragment a(long l1, SpinType spintype, String s1, int i1, QuestionDTO questiondto, int j1, ArrayList arraylist, 
            PowerUp powerup)
    {
        return com.etermax.preguntados.ui.game.question.f.i().b(l1).a(spintype).a(s1).b(i1).a(questiondto).a(arraylist).a(powerup).a();
    }

    public static Fragment a(long l1, SpinType spintype, String s1, int i1, QuestionDTO questiondto, long l2, 
            ArrayList arraylist, PowerUp powerup)
    {
        return com.etermax.preguntados.ui.game.question.f.i().b(l1).a(spintype).a(s1).b(i1).a(questiondto).a(l2).a(arraylist).a(powerup).a();
    }

    public static Fragment a(long l1, SpinType spintype, String s1, QuestionDTO questiondto, int i1, ArrayList arraylist)
    {
        return a(l1, spintype, s1, f.challenge_header, questiondto, i1, arraylist);
    }

    private String a(SpinType spintype)
    {
        class _cls7
        {

            static final int a[];
            static final int b[];
            static final int c[];

            static 
            {
                c = new int[SpinType.values().length];
                try
                {
                    c[SpinType.CROWN.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    c[SpinType.DUEL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    c[SpinType.FINAL_DUEL.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    c[SpinType.NORMAL.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                b = new int[PowerUp.values().length];
                try
                {
                    b[PowerUp.EXTRA_TIME.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    b[PowerUp.BOMB.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    b[PowerUp.DOUBLE_CHANCE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    b[PowerUp.SWAP_QUESTION.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                a = new int[QuestionType.values().length];
                try
                {
                    a[QuestionType.IMAGE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[QuestionType.NORMAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[QuestionType.SOUND.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[QuestionType.VIDEO.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror11)
                {
                    return;
                }
            }
        }

        switch (_cls7.c[spintype.ordinal()])
        {
        default:
            return "";

        case 1: // '\001'
            return "crown_question";

        case 2: // '\002'
            return "duel";

        case 3: // '\003'
            return "final_duel";

        case 4: // '\004'
            return "question";
        }
    }

    static String a(c c1, long l1)
    {
        return c1.b(l1);
    }

    private void a(int i1, Integer integer)
    {
        a(i1, integer, true);
    }

    private void a(int i1, Integer integer, boolean flag)
    {
        ((com.etermax.preguntados.ui.game.question.d)mCallbacks).a(integer, s);
        getView().findViewById(i.answer_try_again_textview).setVisibility(4);
        OutlineTextView outlinetextview = (OutlineTextView)getView().findViewById(i1);
        outlinetextview.a((int)com.etermax.a.b.b(getApplicationContext(), 5), getResources().getColor(f.white));
        outlinetextview.setShadowLayer(1.0F, 2.0F, 4F, getResources().getColor(f.gray));
        outlinetextview.setVisibility(0);
        Animation animation = com.etermax.preguntados.ui.a.c.g();
        if (flag)
        {
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener(integer) {

                final Integer a;
                final c b;

                public void onAnimationEnd(Animation animation1)
                {
                    com.etermax.preguntados.ui.game.question.c.a(b, b.r, a);
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                    c.c(b);
                }

            
            {
                b = c.this;
                a = integer;
                super();
            }
            });
        }
        getView().findViewById(i.game_question_result_textview_container).startAnimation(animation);
    }

    private void a(Bitmap bitmap)
    {
        View view = getView();
        ((ImageView)view.findViewById(i.question_image)).setImageBitmap(bitmap);
        ViewSwitcher viewswitcher = (ViewSwitcher)view.findViewById(i.question_image_switcher);
        viewswitcher.setDisplayedChild(1);
        viewswitcher.setVisibility(0);
        a(r.getCategory().name());
    }

    private void a(Button button)
    {
        TextPaint textpaint = button.getPaint();
        Rect rect = new Rect();
        textpaint.getTextBounds(button.getText().toString(), 0, button.getText().length(), rect);
        if (-20 + button.getWidth() < rect.width())
        {
            button.setTextSize(0, button.getTextSize() * ((float)(-20 + button.getWidth()) / (float)rect.width()));
        }
    }

    private void a(TextView textview)
    {
        if (textview.length() > 200)
        {
            textview.setTextSize(0, (float)(0.90000000000000002D * (double)textview.getTextSize()));
        }
    }

    private void a(QuestionDTO questiondto, Integer integer)
    {
        for (int i1 = 0; i1 < questiondto.getAnswers().size(); i1++)
        {
            RelativeLayout relativelayout = (RelativeLayout)getView().findViewWithTag((new StringBuilder()).append("answerButton").append(i1).toString());
            Animation animation = com.etermax.preguntados.ui.a.c.h();
            animation.setStartOffset(i1 * 100);
            if (i1 == -1 + questiondto.getAnswers().size())
            {
                animation.setAnimationListener(new android.view.animation.Animation.AnimationListener(questiondto, integer) {

                    final QuestionDTO a;
                    final Integer b;
                    final c c;

                    public void onAnimationEnd(Animation animation1)
                    {
                        ((com.etermax.preguntados.ui.game.question.d)com.etermax.preguntados.ui.game.question.c.d(c)).a(a, b, c.s, c.u);
                    }

                    public void onAnimationRepeat(Animation animation1)
                    {
                    }

                    public void onAnimationStart(Animation animation1)
                    {
                    }

            
            {
                c = c.this;
                a = questiondto;
                b = integer;
                super();
            }
                });
            }
            relativelayout.startAnimation(animation);
        }

        getView().findViewById(i.power_up_buttons_container).startAnimation(com.etermax.preguntados.ui.a.c.e());
    }

    private void a(PowerUp powerup)
    {
        int i1;
        i1 = 0;
        if (u != null)
        {
            ((ImageView)getView().findViewById(((Integer)((List)v.get(u)).get(2)).intValue())).setVisibility(4);
            ((TextView)getView().findViewById(((Integer)((List)v.get(u)).get(3)).intValue())).setVisibility(4);
        }
        if (s == null || s.size() != 0) goto _L2; else goto _L1
_L1:
        String s1;
        int j1;
        if (d(powerup))
        {
            j1 = 0;
        } else
        {
            j1 = b(powerup);
        }
        if (d(powerup))
        {
            s1 = "free";
        } else
        {
            s1 = "normal";
        }
        if (j1 > b.t())
        {
            break MISSING_BLOCK_LABEL_598;
        }
        b.a(j1);
        s.add(powerup);
        c.a(s);
        a(true);
        com.etermax.preguntados.ui.game.question._cls7.b[powerup.ordinal()];
        JVM INSTR tableswitch 1 4: default 216
    //                   1 234
    //                   2 296
    //                   3 450
    //                   4 524;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        break; /* Loop/switch isn't completed */
_L7:
        break MISSING_BLOCK_LABEL_524;
_L2:
        return;
_L4:
        f.b(getApplicationContext(), 1);
        a("extra_time", a(o), r.getCategory(), s1);
        d.a(com.etermax.preguntados.g.a.m);
        i();
        a(c.a());
        return;
_L5:
        f.b(getApplicationContext(), 0);
        a("bomb", a(o), r.getCategory(), s1);
        d.a(com.etermax.preguntados.g.a.j);
        ArrayList arraylist = new ArrayList();
        for (int k1 = 0; k1 < r.getAnswers().size(); k1++)
        {
            arraylist.add(Integer.valueOf(k1));
        }

        arraylist.remove(r.getCorrectAnswer());
        while (i1 < 2) 
        {
            int l1 = (int)(100D * Math.random()) % arraylist.size();
            b((Integer)arraylist.get(l1));
            arraylist.remove(l1);
            i1++;
        }
        if (true) goto _L2; else goto _L6
_L6:
        f.b(getApplicationContext(), 2);
        a("double", a(o), r.getCategory(), s1);
        d.a(com.etermax.preguntados.g.a.l);
        getView().findViewById(i.power_up_button_double_chance).findViewById(i.power_up_image).startAnimation(com.etermax.preguntados.ui.a.c.d());
        y = true;
        return;
        f.b(getApplicationContext(), 3);
        a("pass", a(o), r.getCategory(), s1);
        d.a(com.etermax.preguntados.g.a.k);
        ((com.etermax.preguntados.ui.game.question.d)mCallbacks).a(s, c.a(), u);
        return;
        a(c(powerup), a(o), r.getCategory());
        j.a(true);
        Toast.makeText(getApplicationContext(), getString(o.not_enough_coins), 0).show();
        return;
    }

    static void a(c c1)
    {
        c1.m();
    }

    static void a(c c1, int i1, Integer integer)
    {
        c1.a(i1, integer);
    }

    static void a(c c1, Button button)
    {
        c1.a(button);
    }

    static void a(c c1, QuestionDTO questiondto, Integer integer)
    {
        c1.a(questiondto, integer);
    }

    static void a(c c1, Integer integer)
    {
        c1.c(integer);
    }

    static void a(c c1, String s1)
    {
        c1.b(s1);
    }

    private void a(String s1)
    {
        com.etermax.preguntados.a.a.f f1 = new com.etermax.preguntados.a.a.f();
        f1.a(s1);
        e.a(f1);
    }

    private void a(String s1, String s2, QuestionCategory questioncategory)
    {
        if (!x)
        {
            com.etermax.preguntados.a.h h1 = new com.etermax.preguntados.a.h();
            h1.a(s1, s2, questioncategory);
            e.a(h1);
        }
        x = true;
    }

    private void a(String s1, String s2, QuestionCategory questioncategory, String s3)
    {
        if (!x)
        {
            com.etermax.preguntados.a.g g1 = new com.etermax.preguntados.a.g();
            g1.a(s1, s2, questioncategory, s3);
            e.a(g1);
        }
        x = true;
    }

    private void a(boolean flag)
    {
        Iterator iterator = v.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            PowerUp powerup = (PowerUp)iterator.next();
            int i1 = ((Integer)((List)v.get(powerup)).get(0)).intValue();
            LinearLayout linearlayout = (LinearLayout)getView().findViewById(i1);
            linearlayout.setClickable(false);
            if (flag)
            {
                linearlayout.setBackgroundColor(getResources().getColor(f.power_up_button_disabled));
                ((ImageView)linearlayout.findViewById(i.power_up_image)).setColorFilter(f.gray, android.graphics.PorterDuff.Mode.SRC_ATOP);
            }
        } while (true);
    }

    private int b(PowerUp powerup)
    {
        for (Iterator iterator = b.s().getPowerUps().iterator(); iterator.hasNext();)
        {
            PowerUpDTO powerupdto = (PowerUpDTO)iterator.next();
            if (powerupdto.getName() == powerup)
            {
                return powerupdto.getCost();
            }
        }

        return 0;
    }

    static Object b(c c1)
    {
        return c1.mCallbacks;
    }

    private String b(long l1)
    {
        String s1 = (new StringBuilder()).append(1 + c.x().c()).append("/").append(n).toString();
        return (new StringBuilder()).append(s1).append(" - ").append(com.etermax.preguntados.h.c.b(l1)).toString();
    }

    private void b(Integer integer)
    {
        if (integer != null)
        {
            RelativeLayout relativelayout = (RelativeLayout)getView().findViewWithTag((new StringBuilder()).append("answerButton").append(integer).toString());
            CustomFontButton customfontbutton = (CustomFontButton)relativelayout.findViewById(i.answer_button);
            customfontbutton.a(h.button_power_up_bomb_answer_background, h.button_power_up_bomb_answer_background);
            customfontbutton.setTextColor(getResources().getColor(f.white));
            customfontbutton.setClickable(false);
            com.etermax.preguntados.ui.a.c.i();
            relativelayout.startAnimation(com.etermax.preguntados.ui.a.c.i());
        }
    }

    private void b(String s1)
    {
        e e1 = new e();
        e1.a(s1);
        e.a(e1);
    }

    private String c(PowerUp powerup)
    {
        switch (com.etermax.preguntados.ui.game.question._cls7.b[powerup.ordinal()])
        {
        default:
            return "";

        case 2: // '\002'
            return "bomb";

        case 3: // '\003'
            return "double";

        case 1: // '\001'
            return "extra_time";

        case 4: // '\004'
            return "pass";
        }
    }

    static void c(c c1)
    {
        c1.k();
    }

    private void c(Integer integer)
    {
        if (integer.intValue() == r.getCorrectAnswer())
        {
            a(integer);
            k();
            d.a(com.etermax.preguntados.g.a.c);
            a(i.answer_correct_textview, integer);
            return;
        }
        if (y)
        {
            a(i.answer_try_again_textview, integer, false);
            d(integer);
            y = false;
        } else
        {
            ((com.etermax.preguntados.ui.game.question.d)mCallbacks).d();
            d(integer);
            a(Integer.valueOf(r.getCorrectAnswer()));
            k();
            a(i.answer_incorrect_textview, integer);
        }
        d.a(com.etermax.preguntados.g.a.d);
    }

    static Object d(c c1)
    {
        return c1.mCallbacks;
    }

    private void d(Integer integer)
    {
        if (integer != null)
        {
            CustomFontButton customfontbutton = (CustomFontButton)((RelativeLayout)getView().findViewWithTag((new StringBuilder()).append("answerButton").append(integer).toString())).findViewById(i.answer_button);
            customfontbutton.a(h.button_red_background, h.button_red_background_pressed);
            customfontbutton.setTextColor(getResources().getColor(f.white));
            customfontbutton.setClickable(false);
        }
    }

    private boolean d(PowerUp powerup)
    {
        return powerup.equals(u);
    }

    static Handler e(c c1)
    {
        return c1.w;
    }

    static Object f(c c1)
    {
        return c1.mCallbacks;
    }

    private void i()
    {
        if (z != null)
        {
            z.cancel();
        }
    }

    private void j()
    {
        LinearLayout linearlayout1;
        for (Iterator iterator = v.keySet().iterator(); iterator.hasNext(); linearlayout1.setBackgroundColor(getResources().getColor(f.power_up_button)))
        {
            PowerUp powerup = (PowerUp)iterator.next();
            int j1 = ((Integer)((List)v.get(powerup)).get(0)).intValue();
            int k1 = ((Integer)((List)v.get(powerup)).get(1)).intValue();
            int l1 = b(powerup);
            linearlayout1 = (LinearLayout)getView().findViewById(j1);
            ((TextView)linearlayout1.findViewById(i.power_up_cost_textview)).setText(String.valueOf(l1));
            ((ImageView)linearlayout1.findViewById(i.power_up_image)).setImageResource(k1);
        }

        Iterator iterator1 = s.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            if ((PowerUp)iterator1.next() == u)
            {
                a(true);
            }
        } while (true);
        if (s != null && s.size() != 0)
        {
            a(true);
        }
        if (o == SpinType.DUEL)
        {
            int i1 = ((Integer)((List)v.get(PowerUp.SWAP_QUESTION)).get(0)).intValue();
            LinearLayout linearlayout = (LinearLayout)getView().findViewById(i1);
            linearlayout.setClickable(false);
            linearlayout.setBackgroundColor(getResources().getColor(f.power_up_button_disabled));
            ((ImageView)linearlayout.findViewById(i.power_up_image)).setColorFilter(f.gray, android.graphics.PorterDuff.Mode.SRC_ATOP);
        }
    }

    private void k()
    {
        i();
        for (int i1 = 0; i1 < r.getAnswers().size(); i1++)
        {
            ((CustomFontButton)((RelativeLayout)getView().findViewWithTag((new StringBuilder()).append("answerButton").append(i1).toString())).findViewById(i.answer_button)).setOnClickListener(null);
        }

        ArrayList arraylist = s;
        boolean flag = false;
        if (arraylist != null)
        {
            int j1 = s.size();
            flag = false;
            if (j1 != 0)
            {
                flag = true;
            }
        }
        a(flag);
    }

    private void l()
    {
        com.etermax.tools.widget.b.f f1 = com.etermax.tools.widget.b.f.a(getString(o.loading));
        f1.setCancelable(false);
        f1.show(getActivity().getSupportFragmentManager(), "question_image_loading_dialog");
    }

    private void m()
    {
        com.etermax.tools.widget.b.f f1 = (com.etermax.tools.widget.b.f)getActivity().getSupportFragmentManager().findFragmentByTag("question_image_loading_dialog");
        if (f1 != null)
        {
            f1.dismissAllowingStateLoss();
        }
    }

    public com.etermax.preguntados.ui.game.question.d a()
    {
        return new com.etermax.preguntados.ui.game.question.d() {

            final c a;

            public void a(QuestionDTO questiondto, Integer integer, ArrayList arraylist, PowerUp powerup)
            {
            }

            public void a(Integer integer, ArrayList arraylist)
            {
            }

            public void a(ArrayList arraylist, long l1, PowerUp powerup)
            {
            }

            public void c()
            {
            }

            public void d()
            {
            }

            
            {
                a = c.this;
                super();
            }
        };
    }

    protected void a(long l1)
    {
        int i1 = b.s().getQuestionTime();
        ProgressBar progressbar = (ProgressBar)getView().findViewById(i.countdown_bar);
        long _tmp = (long)(i1 * 1000);
        progressbar.setMax(i1 * 1000);
        c.f(i1 * 1000);
        long l2;
        if (s.contains(PowerUp.EXTRA_TIME))
        {
            if (15000L > l1)
            {
                l2 = (long)(15000 + i1 * 1000) - l1;
            } else
            {
                l2 = 15000L + ((long)(i1 * 1000) - l1);
            }
            if (l2 > (long)(i1 * 1000))
            {
                progressbar.setMax((int)l2);
                c.f((int)l2);
            }
        } else
        {
            l2 = (long)(i1 * 1000) - l1;
        }
        if (z != null)
        {
            z.cancel();
            z = null;
        }
        z = new com.etermax.preguntados.ui.game.question.e(this, l2, 50L, i1);
        z.start();
    }

    protected void a(Integer integer)
    {
        if (integer != null)
        {
            CustomFontButton customfontbutton = (CustomFontButton)((RelativeLayout)getView().findViewWithTag((new StringBuilder()).append("answerButton").append(integer).toString())).findViewById(i.answer_button);
            customfontbutton.a(h.button_green_background, h.button_green_background_pressed);
            customfontbutton.setTextColor(getResources().getColor(f.white));
        }
    }

    public void b()
    {
        w = new Handler();
    }

    protected void c()
    {
        if (i.b(r))
        {
            d();
        }
    }

    protected void d()
    {
        com.etermax.preguntados.ui.game.question._cls7.a[r.getQuestionType().ordinal()];
        JVM INSTR tableswitch 1 4: default 44
    //                   1 561
    //                   2 44
    //                   3 44
    //                   4 44;
           goto _L1 _L2 _L1 _L1 _L1
_L2:
        a(i.a(r.getId(), r.getCategory()));
_L1:
        if (q != 0)
        {
            ((RelativeLayout)getView().findViewById(i.question_header)).setBackgroundColor(getResources().getColor(q));
        }
        ((TextView)getView().findViewById(i.question_header_text_view)).setText(p);
        String s1;
        TextView textview;
        View view;
        LinearLayout linearlayout;
        LayoutInflater layoutinflater;
        List list;
        if (com.etermax.tools.g.a.a() && h.a("ANSWERS_CHEAT", true))
        {
            s1 = (new StringBuilder()).append(" (").append(r.getCorrectAnswer()).append(")").toString();
        } else
        {
            s1 = "";
        }
        textview = (TextView)getView().findViewById(i.questionTextView);
        textview.setText((new StringBuilder()).append(r.getText()).append(s1).toString());
        a(textview);
        ((RelativeLayout)getView().findViewById(i.question_header)).setVisibility(0);
        ((RelativeLayout)getView().findViewById(i.question_container)).startAnimation(com.etermax.preguntados.ui.a.c.b());
        ((ImageView)getView().findViewById(i.category_icon)).setImageResource(com.etermax.preguntados.ui.game.duelmode.h.a(m).a(g, r.getCategory()));
        if (l != null && l == GameType.DUEL_GAME)
        {
            ((TextView)getView().findViewById(i.question_duel_textview)).setVisibility(0);
            ((TextView)getView().findViewById(i.question_duel_textview)).setText(b(c.x().h()));
        } else
        {
            ((TextView)getView().findViewById(i.question_duel_textview)).setVisibility(8);
        }
        view = getView().findViewById(i.power_up_buttons_container);
        view.setEnabled(false);
        linearlayout = (LinearLayout)getView().findViewById(i.answersContainer);
        layoutinflater = getLayoutInflater(getArguments());
        d.a(com.etermax.preguntados.g.a.f);
        list = r.getAnswers();
        for (int i1 = 0; i1 < list.size(); i1++)
        {
            RelativeLayout relativelayout = (RelativeLayout)layoutinflater.inflate(k.game_question_answer_button_layout, linearlayout, false);
            Button button = (Button)relativelayout.findViewById(i.answer_button);
            relativelayout.setTag((new StringBuilder()).append("answerButton").append(i1).toString());
            button.setText((CharSequence)list.get(i1));
            button.setSingleLine();
            button.setOnClickListener(new android.view.View.OnClickListener(i1) {

                final int a;
                final c b;

                public void onClick(View view1)
                {
                    com.etermax.preguntados.ui.game.question.c.a(b, Integer.valueOf(a));
                }

            
            {
                b = c.this;
                a = i1;
                super();
            }
            });
            linearlayout.addView(relativelayout, i1);
            Animation animation = com.etermax.preguntados.ui.a.c.f();
            animation.setStartOffset(i1 * 200);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener(button, i1, list, view) {

                final Button a;
                final int b;
                final List c;
                final View d;
                final c e;

                public void onAnimationEnd(Animation animation1)
                {
                    a.setEnabled(true);
                    if (b == -1 + c.size())
                    {
                        d.startAnimation(com.etermax.preguntados.ui.a.c.c());
                        d.setEnabled(true);
                        if (e.u != null && e.s.size() == 0)
                        {
                            ImageView imageview = (ImageView)e.getView().findViewById(((Integer)((List)c.v.get(e.u)).get(2)).intValue());
                            imageview.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
                            Matrix matrix = new Matrix();
                            matrix.setRotate(-135F, imageview.getDrawable().getIntrinsicWidth() / 2, imageview.getDrawable().getIntrinsicHeight() / 2);
                            matrix.postScale(1.3F, 1.3F);
                            imageview.setImageMatrix(matrix);
                            imageview.setVisibility(0);
                            ((TextView)e.getView().findViewById(((Integer)((List)c.v.get(e.u)).get(3)).intValue())).setVisibility(0);
                        }
                    }
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                    com.etermax.preguntados.ui.game.question.c.a(e, a);
                    a.setEnabled(false);
                }

            
            {
                e = c.this;
                a = button;
                b = i1;
                c = list;
                d = view;
                super();
            }
            });
            relativelayout.startAnimation(animation);
        }

        j();
        return;
    }

    void e()
    {
        a(PowerUp.EXTRA_TIME);
    }

    void f()
    {
        a(PowerUp.BOMB);
    }

    void g()
    {
        a(PowerUp.DOUBLE_CHANCE);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    void h()
    {
        a(PowerUp.SWAP_QUESTION);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.game_question_fragment_layout, viewgroup, false);
        ((ViewSwitcher)view.findViewById(i.countdown_share_switcher)).setDisplayedChild(0);
        ProgressBar progressbar = (ProgressBar)view.findViewById(i.countdown_bar);
        B.setAlpha(150);
        progressbar.setProgressDrawable(B);
        progressbar.setVisibility(0);
        return view;
    }

    public void onPause()
    {
        super.onPause();
        i();
    }

    public void onResume()
    {
        super.onResume();
        if (i.b(r))
        {
            if (c.a() == 0L)
            {
                c.r();
            }
            a(c.a());
            return;
        }
        if (i.c(r))
        {
            ((com.etermax.preguntados.ui.game.question.d)mCallbacks).c();
            return;
        } else
        {
            l();
            i.b(r, C);
            return;
        }
    }

    static 
    {
        v = new HashMap();
        Map map = v;
        PowerUp powerup = PowerUp.EXTRA_TIME;
        Integer ainteger[] = new Integer[4];
        ainteger[0] = Integer.valueOf(i.power_up_button_extra_time);
        ainteger[1] = Integer.valueOf(h.pu_clock);
        ainteger[2] = Integer.valueOf(i.arrow_start_0);
        ainteger[3] = Integer.valueOf(i.text_free_0);
        map.put(powerup, Arrays.asList(ainteger));
        Map map1 = v;
        PowerUp powerup1 = PowerUp.BOMB;
        Integer ainteger1[] = new Integer[4];
        ainteger1[0] = Integer.valueOf(i.power_up_button_bomb);
        ainteger1[1] = Integer.valueOf(h.pu_bomb);
        ainteger1[2] = Integer.valueOf(i.arrow_start_1);
        ainteger1[3] = Integer.valueOf(i.text_free_1);
        map1.put(powerup1, Arrays.asList(ainteger1));
        Map map2 = v;
        PowerUp powerup2 = PowerUp.DOUBLE_CHANCE;
        Integer ainteger2[] = new Integer[4];
        ainteger2[0] = Integer.valueOf(i.power_up_button_double_chance);
        ainteger2[1] = Integer.valueOf(h.pu_replay);
        ainteger2[2] = Integer.valueOf(i.arrow_start_2);
        ainteger2[3] = Integer.valueOf(i.text_free_2);
        map2.put(powerup2, Arrays.asList(ainteger2));
        Map map3 = v;
        PowerUp powerup3 = PowerUp.SWAP_QUESTION;
        Integer ainteger3[] = new Integer[4];
        ainteger3[0] = Integer.valueOf(i.power_up_button_swap_question);
        ainteger3[1] = Integer.valueOf(h.pu_next);
        ainteger3[2] = Integer.valueOf(i.arrow_start_3);
        ainteger3[3] = Integer.valueOf(i.text_free_3);
        map3.put(powerup3, Arrays.asList(ainteger3));
    }
}
