// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.content.res.Resources;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.h;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.TvShowQuestionDTO;
import com.etermax.preguntados.ui.a.c;
import com.etermax.preguntados.ui.widget.AnswerButtonView;
import com.etermax.preguntados.ui.widget.a;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.OutlineTextView;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            j, k, i, h

public class g extends b
    implements a, com.etermax.preguntados.ui.widget.b
{

    com.etermax.preguntados.g.a a;
    com.etermax.preguntados.c.a.b b;
    protected TvShowQuestionDTO c;
    protected View d;
    protected ImageView e;
    protected TextView f;
    protected View g;
    protected TextView h;
    protected View i;
    protected AnswerButtonView j[];
    protected AnswerButtonView k;
    protected AnswerButtonView l;
    protected AnswerButtonView m;
    protected AnswerButtonView n;
    protected long o;
    protected boolean p;
    protected boolean q;
    protected i r;
    protected ProgressBar s;
    protected TextView t;
    protected View u;
    protected OutlineTextView v;

    public g()
    {
        o = -1L;
        p = false;
        q = false;
    }

    public static g a(TvShowQuestionDTO tvshowquestiondto)
    {
        return com.etermax.preguntados.ui.tvshow.j.f().a(tvshowquestiondto).a();
    }

    static void a(g g1)
    {
        g1.h();
    }

    static void a(g g1, boolean flag)
    {
        g1.a(flag);
    }

    private void a(boolean flag)
    {
        for (int i1 = 0; i1 < j.length; i1++)
        {
            j[i1].setEnabled(flag);
        }

    }

    public static g b()
    {
        return a(((TvShowQuestionDTO) (null)));
    }

    static Object b(g g1)
    {
        return g1.mCallbacks;
    }

    private void b(TvShowQuestionDTO tvshowquestiondto)
    {
        a.a(com.etermax.preguntados.g.a.f);
        d.setBackgroundColor(getResources().getColor(b.a(tvshowquestiondto.getCategory()).getHeaderColorResource()));
        e.setImageDrawable(getResources().getDrawable(b.b(tvshowquestiondto.getCategory())));
        f.setText(b.a(tvshowquestiondto.getCategory()).getNameResource());
        g.startAnimation(com.etermax.preguntados.ui.a.c.b());
        h.setText(tvshowquestiondto.getText());
        for (int i1 = 0; i1 < j.length; i1++)
        {
            j[i1].setText(((com.etermax.preguntados.datasource.dto.TvShowQuestionDTO.TvShowAnswerDTO)tvshowquestiondto.getAnswers().get(i1)).getText());
            j[i1].a(i1, true);
            j[i1].a(h.button_primary_background, h.button_primary_background_pressed);
            j[i1].b(h.button_primary_background, h.button_primary_background_pressed);
            j[i1].setAnswerListener(this);
            if (i1 == -1 + j.length)
            {
                j[i1].setButtonAnimationListener(this);
            }
            j[i1].a(i1 * 200);
            j[i1].setVisibility(0);
        }

    }

    private void f()
    {
        g();
        if (c != null && !p)
        {
            if (o == -1L)
            {
                o = System.currentTimeMillis();
            }
            r = new i(this, (long)(1000 * c.getRemainingSeconds()) - (System.currentTimeMillis() - o), 50L);
            r.start();
        }
    }

    private void g()
    {
        if (r != null)
        {
            r.cancel();
        }
    }

    private void h()
    {
        v.a((int)com.etermax.a.b.b(getApplicationContext(), 5), getResources().getColor(f.white));
        v.setShadowLayer(1.0F, 2.0F, 4F, getResources().getColor(f.gray));
        v.setVisibility(0);
        Animation animation = com.etermax.preguntados.ui.a.c.g();
        animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final g a;

            public void onAnimationEnd(Animation animation1)
            {
                ((com.etermax.preguntados.ui.tvshow.h)com.etermax.preguntados.ui.tvshow.g.b(a)).d();
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
            }

            
            {
                a = g.this;
                super();
            }
        });
        u.startAnimation(animation);
    }

    public com.etermax.preguntados.ui.tvshow.h a()
    {
        return new com.etermax.preguntados.ui.tvshow.h() {

            final g a;

            public void a(AnswerDTO answerdto, long l1, int i1)
            {
            }

            public void c()
            {
            }

            public void d()
            {
            }

            
            {
                a = g.this;
                super();
            }
        };
    }

    public void a(int i1)
    {
        a(false);
        r.cancel();
        p = true;
        AnswerDTO answerdto = new AnswerDTO();
        answerdto.setId(c.getId());
        answerdto.setAnswer(i1);
        ((com.etermax.preguntados.ui.tvshow.h)mCallbacks).a(answerdto, o, c.getRemainingSeconds());
    }

    void c()
    {
        AnswerButtonView aanswerbuttonview[] = new AnswerButtonView[4];
        aanswerbuttonview[0] = k;
        aanswerbuttonview[1] = l;
        aanswerbuttonview[2] = m;
        aanswerbuttonview[3] = n;
        j = aanswerbuttonview;
        a(false);
        s.setVisibility(4);
        if (c != null)
        {
            s.setProgressDrawable(getResources().getDrawable(h.question_progressbar));
            s.setMax(1000 * c.getTotalSeconds());
            s.setProgress(1000 * c.getRemainingSeconds());
            s.setVisibility(0);
            b(c);
        }
    }

    public void d()
    {
        if (!p)
        {
            a(true);
        }
    }

    public void e()
    {
        if (!q)
        {
            com.etermax.preguntados.ui.a.c.a(i, 1000L);
            q = true;
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onPause()
    {
        g();
        super.onPause();
    }

    public void onResume()
    {
        f();
        if (c == null)
        {
            ((com.etermax.preguntados.ui.tvshow.h)mCallbacks).c();
        }
        super.onResume();
    }
}
