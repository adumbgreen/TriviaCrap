// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import com.etermax.preguntados.sharing.l;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.ui.game.a.a;
import com.etermax.preguntados.ui.game.a.c;
import com.etermax.preguntados.ui.game.duelmode.h;
import com.etermax.preguntados.ui.withoutcoins.g;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            m, n, b, BaseQuestionActivity, 
//            l

public class k extends b
{

    d a;
    com.etermax.preguntados.g.a b;
    a c;
    com.etermax.preguntados.c.a.b d;
    com.etermax.preguntados.e.c e;
    m f;
    g g;
    protected GameType h;
    protected com.etermax.preguntados.ui.game.duelmode.g i;
    protected int j;
    protected QuestionDTO k;
    protected Integer l;
    protected String m;
    protected int n;
    protected ArrayList o;
    protected PowerUp p;
    protected boolean q;
    private ColorDrawable r;
    private ClipDrawable s;
    private com.etermax.preguntados.e.a t;

    public k()
    {
        r = new ColorDrawable(f.white);
        s = new ClipDrawable(r, 5, 1);
        t = new com.etermax.preguntados.e.a() {

            final k a;

            public void a()
            {
            }

            public void a(Bitmap bitmap)
            {
                com.etermax.preguntados.ui.game.question.k.a(a, bitmap);
            }

            
            {
                a = k.this;
                super();
            }
        };
    }

    public static Fragment a(GameType gametype, com.etermax.preguntados.ui.game.duelmode.g g1, int i1, String s1, int j1, QuestionDTO questiondto, Integer integer, ArrayList arraylist)
    {
        return com.etermax.preguntados.ui.game.question.m.i().a(gametype).a(g1).b(i1).a(s1).a(j1).a(questiondto).a(integer).a(arraylist).a();
    }

    public static Fragment a(String s1, int i1, QuestionDTO questiondto, Integer integer, ArrayList arraylist)
    {
        return a(null, null, 0, s1, i1, questiondto, integer, arraylist);
    }

    public static Fragment a(String s1, int i1, QuestionDTO questiondto, Integer integer, ArrayList arraylist, PowerUp powerup)
    {
        return com.etermax.preguntados.ui.game.question.m.i().a(s1).a(i1).a(questiondto).a(integer).a(arraylist).a(powerup).a();
    }

    public static Fragment a(String s1, QuestionDTO questiondto, Integer integer, ArrayList arraylist)
    {
        return a(null, null, 0, s1, f.challenge_color, questiondto, integer, arraylist);
    }

    static Object a(k k1)
    {
        return k1.mCallbacks;
    }

    private String a(long l1)
    {
        String s1 = (new StringBuilder()).append(1 + c.x().c()).append("/").append(j).toString();
        return (new StringBuilder()).append(s1).append(" - ").append(com.etermax.preguntados.h.c.b(l1)).toString();
    }

    private void a(Bitmap bitmap)
    {
        View view = getView();
        ((ImageView)view.findViewById(i.question_image)).setImageBitmap(bitmap);
        ViewSwitcher viewswitcher = (ViewSwitcher)view.findViewById(i.question_image_switcher);
        viewswitcher.setDisplayedChild(1);
        viewswitcher.setVisibility(0);
    }

    private void a(TextView textview)
    {
        if (textview.length() > 200)
        {
            textview.setTextSize(0, (float)(0.90000000000000002D * (double)textview.getTextSize()));
        }
    }

    static void a(k k1, Bitmap bitmap)
    {
        k1.a(bitmap);
    }

    private void a(ArrayList arraylist)
    {
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            PowerUp powerup = (PowerUp)iterator.next();
            if (powerup == p)
            {
                arraylist.remove(powerup);
            }
        } while (true);
    }

    private void i()
    {
        if (!e.b(k)) goto _L2; else goto _L1
_L1:
        class _cls5
        {

            static final int a[];

            static 
            {
                a = new int[QuestionType.values().length];
                try
                {
                    a[QuestionType.IMAGE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[QuestionType.NORMAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[QuestionType.SOUND.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[QuestionType.VIDEO.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        com.etermax.preguntados.ui.game.question._cls5.a[k.getQuestionType().ordinal()];
        JVM INSTR tableswitch 1 4: default 60
    //                   1 401
    //                   2 60
    //                   3 60
    //                   4 60;
           goto _L3 _L4 _L3 _L3 _L3
_L3:
        if (n != 0)
        {
            ((RelativeLayout)getView().findViewById(i.question_header)).setBackgroundColor(getResources().getColor(n));
        }
        TextView textview = (TextView)getView().findViewById(i.questionTextView);
        textview.setText(k.getText());
        a(textview);
        ((TextView)getView().findViewById(i.question_header_text_view)).setText(m);
        ((Button)getView().findViewById(i.button_continue)).setText(o.continue_);
        TextView textview1 = (TextView)getView().findViewById(i.report_question_textview);
        textview1.setPaintFlags(8 | textview1.getPaintFlags());
        ((ImageView)getView().findViewById(i.category_icon)).setImageResource(com.etermax.preguntados.ui.game.duelmode.h.a(i).a(d, k.getCategory()));
        ProgressBar progressbar = (ProgressBar)getView().findViewById(i.countdown_bar);
        s.setAlpha(150);
        progressbar.setMax(c.n());
        progressbar.setProgressDrawable(s);
        progressbar.setProgress((int)c.o());
        View view;
        if (h != null && h == GameType.DUEL_GAME)
        {
            ((TextView)getView().findViewById(i.question_duel_textview)).setVisibility(0);
            ((TextView)getView().findViewById(i.question_duel_textview)).setText(a(c.x().h()));
        } else
        {
            ((TextView)getView().findViewById(i.question_duel_textview)).setVisibility(8);
        }
        ((ViewSwitcher)getView().findViewById(i.countdown_share_switcher)).setDisplayedChild(1);
        view = getView().findViewById(i.question_authors);
        (new com.etermax.preguntados.ui.game.question.b()).a(this, view, k.getAuthor(), k.getTranslator());
        return;
_L4:
        a(e.a(k.getId(), k.getCategory()));
          goto _L3
_L2:
        e.a(k, t);
          goto _L3
    }

    private void j()
    {
        int ai[] = new int[5];
        ai[0] = i.question_authors;
        ai[1] = i.vote_negative_button_container;
        ai[2] = i.vote_positive_button_container;
        ai[3] = i.button_continue;
        ai[4] = i.report_question_textview;
        for (int i1 = 0; i1 < ai.length; i1++)
        {
            View view = getView().findViewById(ai[i1]);
            a(view, false);
            Animation animation = com.etermax.preguntados.ui.a.c.j();
            animation.setStartOffset(i1 * 100);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener(view) {

                final View a;
                final k b;

                public void onAnimationEnd(Animation animation1)
                {
                    b.a(a, true);
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                b = k.this;
                a = view;
                super();
            }
            });
            view.startAnimation(animation);
        }

    }

    public com.etermax.preguntados.ui.game.question.l a()
    {
        return new com.etermax.preguntados.ui.game.question.l() {

            final k a;

            public void a(GameDTO gamedto)
            {
            }

            public void a(QuestionDTO questiondto)
            {
            }

            public void a(QuestionDTO questiondto, Integer integer, Vote vote, ArrayList arraylist)
            {
            }

            
            {
                a = k.this;
                super();
            }
        };
    }

    public void a(View view, boolean flag)
    {
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            for (int i1 = 0; i1 < viewgroup.getChildCount(); i1++)
            {
                View view1 = viewgroup.getChildAt(i1);
                view1.setClickable(flag);
                if (view1 instanceof ViewGroup)
                {
                    a(view1, flag);
                }
            }

        } else
        {
            view.setClickable(flag);
        }
    }

    public void a(GameDTO gamedto)
    {
        b.a(com.etermax.preguntados.g.a.g);
        Integer ainteger[] = new Integer[4];
        ainteger[0] = Integer.valueOf(i.question_authors);
        ainteger[1] = Integer.valueOf(i.vote_negative_button_container);
        ainteger[2] = Integer.valueOf(i.vote_positive_button_container);
        ainteger[3] = Integer.valueOf(i.button_continue);
        ArrayList arraylist = new ArrayList(Arrays.asList(ainteger));
        if (!q)
        {
            arraylist.add(Integer.valueOf(i.report_question_textview));
        }
        int i1 = arraylist.size();
        for (int j1 = 0; j1 < arraylist.size(); j1++)
        {
            View view = getView().findViewById(((Integer)arraylist.get(j1)).intValue());
            a(view, false);
            Animation animation = com.etermax.preguntados.ui.a.c.k();
            animation.setStartOffset(j1 * 100);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener(j1, i1, gamedto) {

                final int a;
                final int b;
                final GameDTO c;
                final k d;

                public void onAnimationEnd(Animation animation1)
                {
                    if (a == -1 + b)
                    {
                        ((com.etermax.preguntados.ui.game.question.l)com.etermax.preguntados.ui.game.question.k.a(d)).a(c);
                    }
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                d = k.this;
                a = i1;
                b = j1;
                c = gamedto;
                super();
            }
            });
            view.startAnimation(animation);
        }

    }

    protected void b()
    {
        if (getActivity() instanceof BaseQuestionActivity)
        {
            BaseQuestionActivity basequestionactivity = (BaseQuestionActivity)getActivity();
            g.a(basequestionactivity);
        }
        i();
        j();
    }

    protected void c()
    {
        a(o);
        ((com.etermax.preguntados.ui.game.question.l)mCallbacks).a(k, l, null, o);
    }

    protected void d()
    {
        a(o);
        ((com.etermax.preguntados.ui.game.question.l)mCallbacks).a(k, l, Vote.POSITIVE, o);
    }

    protected void e()
    {
        a(o);
        ((com.etermax.preguntados.ui.game.question.l)mCallbacks).a(k, l, Vote.NEGATIVE, o);
    }

    protected void f()
    {
        com.etermax.preguntados.sharing.k k1 = com.etermax.preguntados.sharing.l.a(getApplicationContext(), k, d, i, e);
        f.a(k1);
    }

    public void g()
    {
        ((com.etermax.preguntados.ui.game.question.l)mCallbacks).a(k);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void h()
    {
        getView().findViewById(i.report_question_textview).setVisibility(8);
        q = true;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(com.etermax.k.game_question_vote_fragment_layout, viewgroup, false);
    }
}
