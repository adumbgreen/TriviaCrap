// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.QuestionRatingDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import com.etermax.preguntados.e.a;
import com.etermax.preguntados.ui.a.c;
import com.etermax.preguntados.ui.questionsfactory.e;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.widget.CustomFontButton;
import com.etermax.tools.widget.OutlineTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            a, d, e, c

public class b extends com.etermax.tools.navigation.b
    implements a, com.etermax.preguntados.ui.questionsfactory.ratequestion.a
{

    private static final int s[];
    d a;
    com.etermax.preguntados.g.a b;
    com.etermax.preguntados.c.a.b c;
    com.etermax.gamescommon.login.datasource.a d;
    com.etermax.preguntados.e.c e;
    UserSuggestionConfigDTO f;
    boolean g;
    QuestionDTO h;
    Language i;
    Country j;
    QuestionRatingDTO k;
    ViewSwitcher l;
    View m;
    private List n;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b o;
    private List p;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b q;
    private com.etermax.preguntados.ui.dashboard.widget.g r;

    public b()
    {
    }

    static Context a(b b1)
    {
        return b1.getApplicationContext();
    }

    public static Fragment a(UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        return com.etermax.preguntados.ui.questionsfactory.ratequestion.d.l().a(usersuggestionconfigdto).a();
    }

    private android.view.View.OnClickListener a(int i1)
    {
        return new android.view.View.OnClickListener(i1) {

            final int a;
            final b b;

            public void onClick(View view)
            {
                b.g = true;
                com.etermax.preguntados.ui.questionsfactory.ratequestion.b.g(b);
                int j1;
                int k1;
                if (a == b.h.getCorrectAnswer())
                {
                    j1 = i.answer_correct_textview;
                    k1 = com.etermax.preguntados.g.a.c;
                } else
                {
                    j1 = i.answer_incorrect_textview;
                    k1 = com.etermax.preguntados.g.a.d;
                    com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(b, a);
                }
                b.b(b, b.h.getCorrectAnswer());
                b.b.a(k1);
                com.etermax.preguntados.ui.questionsfactory.ratequestion.b.c(b, j1);
            }

            
            {
                b = b.this;
                a = i1;
                super();
            }
        };
    }

    private void a(View view)
    {
        ((TextView)view.findViewById(i.rate_question_answer_subtitle)).setText(getString(o.rate_question));
        ((ViewSwitcher)view.findViewById(i.rate_question_buttons_switcher)).showNext();
        View view1 = getView().findViewById(i.question_authors);
        (new com.etermax.preguntados.ui.game.question.b()).a(this, view1, h.getAuthor(), h.getTranslator());
        view.findViewById(i.vote_buttons_container).setVisibility(0);
        for (int i1 = 0; i1 < s.length; i1++)
        {
            View view2 = view.findViewById(s[i1]);
            Animation animation = com.etermax.preguntados.ui.a.c.j();
            animation.setStartOffset(i1 * 150);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final b a;

                public void onAnimationEnd(Animation animation1)
                {
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                a = b.this;
                super();
            }
            });
            view2.startAnimation(animation);
        }

    }

    private void a(View view, int i1)
    {
        Button button = (Button)view.findViewById(i.answer_button);
        Animation animation = com.etermax.preguntados.ui.a.c.f();
        animation.setStartOffset(i1 * 150);
        animation.setAnimationListener(new android.view.animation.Animation.AnimationListener(button) {

            final Button a;
            final b b;

            public void onAnimationEnd(Animation animation1)
            {
                a.setEnabled(true);
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
                com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(b, a);
                a.setEnabled(false);
            }

            
            {
                b = b.this;
                a = button;
                super();
            }
        });
        view.startAnimation(animation);
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

    private void a(QuestionDTO questiondto)
    {
        View view = getView();
        if (!e.b(h)) goto _L2; else goto _L1
_L1:
        class _cls3
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

        com.etermax.preguntados.ui.questionsfactory.ratequestion._cls3.a[h.getQuestionType().ordinal()];
        JVM INSTR tableswitch 1 4: default 64
    //                   1 208
    //                   2 64
    //                   3 64
    //                   4 64;
           goto _L3 _L4 _L3 _L3 _L3
_L3:
        ((ImageView)view.findViewById(i.category_icon)).setImageResource(c.b(h.getCategory()));
        ((TextView)view.findViewById(i.category_name)).setText(getString(c.a(h.getCategory()).getNameResource()));
        view.findViewById(i.category_name).setBackgroundColor(getResources().getColor(c.a(h.getCategory()).getHeaderColorResource()));
        l.setDisplayedChild(1);
        ((TextView)view.findViewById(i.questionTextView)).setText(h.getText());
        ViewSwitcher viewswitcher;
        if (g)
        {
            a(view);
        } else
        {
            b.a(com.etermax.preguntados.g.a.f);
            ViewGroup viewgroup = (ViewGroup)view.findViewById(i.answers_container);
            viewgroup.removeAllViews();
            int i1 = 0;
            while (i1 < h.getAnswers().size()) 
            {
                View view1 = getActivity().getLayoutInflater().inflate(k.game_question_answer_button_layout, viewgroup, false);
                Button button = (Button)view1.findViewById(i.answer_button);
                view1.setTag((new StringBuilder()).append("answer_button_container_").append(i1).toString());
                button.setText((CharSequence)h.getAnswers().get(i1));
                button.setTag((new StringBuilder()).append("answer_button_").append(i1).toString());
                button.setOnClickListener(a(i1));
                viewgroup.addView(view1);
                a(view1, i1);
                i1++;
            }
        }
        m();
        return;
_L4:
        b(e.a(h.getId(), h.getCategory()));
          goto _L3
_L2:
        viewswitcher = (ViewSwitcher)view.findViewById(i.question_image_switcher);
        viewswitcher.setDisplayedChild(0);
        viewswitcher.setVisibility(0);
        e.a(h, this);
          goto _L3
    }

    static void a(b b1, int i1)
    {
        b1.c(i1);
    }

    static void a(b b1, View view)
    {
        b1.a(view);
    }

    static void a(b b1, Button button)
    {
        b1.a(button);
    }

    static void a(b b1, QuestionDTO questiondto)
    {
        b1.a(questiondto);
    }

    static void a(b b1, boolean flag)
    {
        b1.a(flag);
    }

    private void a(boolean flag)
    {
        l.setDisplayedChild(0);
        r.b(m);
        if (flag)
        {
            m.setVisibility(8);
            getView().findViewById(i.rate_question_no_questions_message).setVisibility(0);
            return;
        } else
        {
            getView().findViewById(i.rate_question_no_questions_message).setVisibility(8);
            return;
        }
    }

    private void b(int i1)
    {
        CustomFontButton customfontbutton = (CustomFontButton)getView().findViewWithTag((new StringBuilder()).append("answer_button_").append(i1).toString());
        customfontbutton.a(h.button_green_background, h.button_green_background_pressed);
        customfontbutton.setTextColor(getResources().getColor(f.white));
    }

    private void b(Bitmap bitmap)
    {
        View view = getView();
        ((ImageView)view.findViewById(i.question_image)).setImageBitmap(bitmap);
        ViewSwitcher viewswitcher = (ViewSwitcher)view.findViewById(i.question_image_switcher);
        viewswitcher.setDisplayedChild(1);
        viewswitcher.setVisibility(0);
    }

    static void b(b b1)
    {
        b1.m();
    }

    static void b(b b1, int i1)
    {
        b1.b(i1);
    }

    private void b(boolean flag)
    {
        View view = getView();
        for (int i1 = 0; i1 < s.length; i1++)
        {
            view.findViewById(s[i1]).setEnabled(flag);
        }

    }

    static Context c(b b1)
    {
        return b1.getApplicationContext();
    }

    private void c(int i1)
    {
        CustomFontButton customfontbutton = (CustomFontButton)getView().findViewWithTag((new StringBuilder()).append("answer_button_").append(i1).toString());
        customfontbutton.a(h.button_red_background, h.button_red_background_pressed);
        customfontbutton.setTextColor(getResources().getColor(f.white));
    }

    static void c(b b1, int i1)
    {
        b1.d(i1);
    }

    private void d(int i1)
    {
        OutlineTextView outlinetextview = (OutlineTextView)getView().findViewById(i1);
        outlinetextview.a(3, getResources().getColor(f.white));
        outlinetextview.setShadowLayer(1.0F, 2.0F, 4F, getResources().getColor(f.gray));
        Animation animation = com.etermax.preguntados.ui.a.c.g();
        animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final b a;

            public void onAnimationEnd(Animation animation1)
            {
                com.etermax.preguntados.ui.questionsfactory.ratequestion.b.h(a);
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
            }

            
            {
                a = b.this;
                super();
            }
        });
        outlinetextview.setVisibility(0);
        getView().findViewById(i.game_question_result_textview_container).startAnimation(animation);
    }

    static void d(b b1)
    {
        b1.l();
    }

    static Context e(b b1)
    {
        return b1.getApplicationContext();
    }

    static Context f(b b1)
    {
        return b1.getApplicationContext();
    }

    static void g(b b1)
    {
        b1.s();
    }

    static void h(b b1)
    {
        b1.t();
    }

    static Object i(b b1)
    {
        return b1.mCallbacks;
    }

    private void l()
    {
        r();
        (new com.etermax.tools.i.a() {

            final b a;

            public Object a()
            {
                return b();
            }

            protected void a(b b1, QuestionDTO questiondto)
            {
                super.a(b1, questiondto);
                a.h = questiondto;
                com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(a, a.h);
            }

            protected void a(b b1, Exception exception)
            {
                com.etermax.preguntados.datasource.a.b b2 = (com.etermax.preguntados.datasource.a.b)exception;
                if (b2.c() == 416)
                {
                    com.etermax.tools.widget.b.c c1 = com.etermax.preguntados.ui.questionsfactory.widget.a.a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(b1));
                    c1.setTargetFragment(b1, 0);
                    c1.show(b1.getActivity().getSupportFragmentManager(), "");
                    com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(a, true);
                } else
                {
                    super.a(b1, b2);
                }
                b.b(a);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((b)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((b)obj, (QuestionDTO)obj1);
            }

            public QuestionDTO b()
            {
                return a.a.a(a.i, a.j);
            }

            
            {
                a = b.this;
                super();
            }
        }).a(this);
    }

    private void m()
    {
        View view = getView();
        ((ImageView)view.findViewById(i.questions_factory_bar_country_button)).setImageResource(com.etermax.preguntados.h.a.a(j).c());
        LanguageResourceMapper languageresourcemapper = LanguageResourceMapper.getByCode(i);
        if (languageresourcemapper != null)
        {
            ((TextView)view.findViewById(i.questions_factory_bar_language_button)).setText(languageresourcemapper.getNameResource());
        }
        TextView textview = (TextView)view.findViewById(i.questions_factory_bar_category_button);
        textview.setBackgroundColor(getResources().getColor(f.grayDark));
        textview.setTextColor(getResources().getColor(f.grayLight));
        if (h != null)
        {
            textview.setText(getString(c.a(h.getCategory()).getNameResource()));
            return;
        } else
        {
            textview.setText("");
            return;
        }
    }

    private void n()
    {
        if (p == null)
        {
            p = new ArrayList();
        }
        p.clear();
        Country country;
        for (Iterator iterator = ((ArrayList)f.getLanguages().get(i)).iterator(); iterator.hasNext(); p.add(new com.etermax.preguntados.ui.questionsfactory.widget.a.f(country)))
        {
            country = (Country)iterator.next();
        }

        q = new com.etermax.preguntados.ui.questionsfactory.widget.a.b(getActivity(), getString(o.select_region), p, o(), true);
        p.add(0, new com.etermax.preguntados.ui.questionsfactory.widget.a.f(Country.GX));
        q.b();
        q.a();
    }

    private com.etermax.preguntados.ui.questionsfactory.widget.a.c o()
    {
        return new com.etermax.preguntados.ui.questionsfactory.widget.a.c() {

            final b a;

            public void a(com.etermax.preguntados.ui.questionsfactory.widget.a.f f1)
            {
                a.j = f1.b();
                com.etermax.preguntados.ui.questionsfactory.e.a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b.c(a)).a(a.j);
                b.b(a);
                com.etermax.preguntados.ui.questionsfactory.ratequestion.b.d(a);
            }

            public volatile void a(Object obj)
            {
                a((com.etermax.preguntados.ui.questionsfactory.widget.a.f)obj);
            }

            
            {
                a = b.this;
                super();
            }
        };
    }

    private void p()
    {
        if (n == null)
        {
            n = new ArrayList();
            Language language;
            for (Iterator iterator = f.getLanguages().keySet().iterator(); iterator.hasNext(); n.add(new com.etermax.preguntados.ui.questionsfactory.widget.a.g(language)))
            {
                language = (Language)iterator.next();
            }

        }
        if (o == null)
        {
            o = new com.etermax.preguntados.ui.questionsfactory.widget.a.b(getActivity(), getString(o.select_language), n, q(), true);
        }
        o.a();
    }

    private com.etermax.preguntados.ui.questionsfactory.widget.a.c q()
    {
        return new com.etermax.preguntados.ui.questionsfactory.widget.a.c() {

            final b a;

            public void a(com.etermax.preguntados.ui.questionsfactory.widget.a.g g1)
            {
                a.i = g1.b();
                a.j = Country.GX;
                com.etermax.preguntados.ui.questionsfactory.e.a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b.e(a)).b(a.i);
                com.etermax.preguntados.ui.questionsfactory.e.a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b.f(a)).a(a.j);
                b.b(a);
                com.etermax.preguntados.ui.questionsfactory.ratequestion.b.d(a);
            }

            public volatile void a(Object obj)
            {
                a((com.etermax.preguntados.ui.questionsfactory.widget.a.g)obj);
            }

            
            {
                a = b.this;
                super();
            }
        };
    }

    private void r()
    {
        l.setDisplayedChild(0);
        m.setVisibility(0);
        getView().findViewById(i.rate_question_no_questions_message).setVisibility(8);
        r.a(m);
    }

    private void s()
    {
        for (int i1 = 0; i1 < h.getAnswers().size(); i1++)
        {
            getView().findViewWithTag((new StringBuilder()).append("answer_button_").append(i1).toString()).setEnabled(false);
        }

    }

    private void t()
    {
        for (int i1 = 0; i1 < h.getAnswers().size(); i1++)
        {
            View view = getView().findViewWithTag((new StringBuilder()).append("answer_button_container_").append(i1).toString());
            Animation animation = com.etermax.preguntados.ui.a.c.h();
            animation.setStartOffset(i1 * 150);
            if (i1 == -1 + h.getAnswers().size())
            {
                animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                    final b a;

                    public void onAnimationEnd(Animation animation1)
                    {
                        com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(a, a.getView());
                    }

                    public void onAnimationRepeat(Animation animation1)
                    {
                    }

                    public void onAnimationStart(Animation animation1)
                    {
                    }

            
            {
                a = b.this;
                super();
            }
                });
            }
            view.startAnimation(animation);
        }

    }

    public void a()
    {
        e.b();
        e.c();
        ((com.etermax.preguntados.ui.questionsfactory.ratequestion.c)mCallbacks).b();
    }

    public void a(Bitmap bitmap)
    {
        b(bitmap);
    }

    public void b()
    {
        View view = getView().findViewById(i.vote_buttons_container);
        for (int i1 = 0; i1 < s.length; i1++)
        {
            View view1 = view.findViewById(s[i1]);
            Animation animation = com.etermax.preguntados.ui.a.c.k();
            animation.setStartOffset(i1 * 150);
            if (i1 == -1 + s.length)
            {
                animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                    final b a;

                    public void onAnimationEnd(Animation animation1)
                    {
                        ((com.etermax.preguntados.ui.questionsfactory.ratequestion.c)com.etermax.preguntados.ui.questionsfactory.ratequestion.b.i(a)).b();
                    }

                    public void onAnimationRepeat(Animation animation1)
                    {
                    }

                    public void onAnimationStart(Animation animation1)
                    {
                    }

            
            {
                a = b.this;
                super();
            }
                });
            }
            view1.startAnimation(animation);
        }

        e.b();
        e.c();
    }

    public void c()
    {
        b(true);
    }

    public com.etermax.preguntados.ui.questionsfactory.ratequestion.c d()
    {
        return new com.etermax.preguntados.ui.questionsfactory.ratequestion.c() {

            final b a;

            public void a(QuestionDTO questiondto, Language language)
            {
            }

            public void a(QuestionRatingDTO questionratingdto, com.etermax.preguntados.ui.questionsfactory.ratequestion.a a1)
            {
            }

            public void b()
            {
            }

            
            {
                a = b.this;
                super();
            }
        };
    }

    void e()
    {
        if (h == null)
        {
            m();
            l();
        }
    }

    void f()
    {
        if (!g)
        {
            n();
        }
    }

    void g()
    {
        if (!g)
        {
            p();
        }
    }

    public Object getDummyCallbacks()
    {
        return d();
    }

    public void h()
    {
        b(false);
        e.b();
        e.c();
        ((com.etermax.preguntados.ui.questionsfactory.ratequestion.c)mCallbacks).b();
    }

    public void i()
    {
        ((com.etermax.preguntados.ui.questionsfactory.ratequestion.c)mCallbacks).a(h, i);
    }

    public void j()
    {
        b(false);
        QuestionRatingDTO questionratingdto = new QuestionRatingDTO();
        questionratingdto.setQuestionId(h.getId());
        questionratingdto.setLanguage(i);
        questionratingdto.setVote(Vote.NEGATIVE);
        ((com.etermax.preguntados.ui.questionsfactory.ratequestion.c)mCallbacks).a(questionratingdto, this);
    }

    public void k()
    {
        b(false);
        QuestionRatingDTO questionratingdto = new QuestionRatingDTO();
        questionratingdto.setQuestionId(h.getId());
        questionratingdto.setLanguage(i);
        questionratingdto.setVote(Vote.POSITIVE);
        ((com.etermax.preguntados.ui.questionsfactory.ratequestion.c)mCallbacks).a(questionratingdto, this);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle == null)
        {
            i = com.etermax.preguntados.ui.questionsfactory.e.a(getApplicationContext()).b();
            j = com.etermax.preguntados.ui.questionsfactory.e.a(getApplicationContext()).c();
            if (!f.getLanguages().containsKey(i))
            {
                i = Language.EN;
            }
            if (j == null)
            {
                if (d.n() != null)
                {
                    j = com.etermax.preguntados.h.a.a(d.n().name()).a();
                } else
                {
                    j = Country.GX;
                }
            }
            if (!f.getLanguages().containsKey(i) || !((ArrayList)f.getLanguages().get(i)).contains(j))
            {
                j = Country.GX;
            }
        }
        if (r == null)
        {
            r = new com.etermax.preguntados.ui.dashboard.widget.g(getApplicationContext());
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.rate_question_answer_fragment, viewgroup, false);
        ((ImageView)view.findViewById(i.rate_question_skip_image)).setVisibility(0);
        ((TextView)view.findViewById(i.category_name)).setText(o.rate);
        return view;
    }

    static 
    {
        int ai[] = new int[4];
        ai[0] = i.question_authors;
        ai[1] = i.rate_question_vote_button_mistake;
        ai[2] = i.rate_question_vote_button_dislike;
        ai[3] = i.rate_question_vote_button_like;
        s = ai;
    }
}
