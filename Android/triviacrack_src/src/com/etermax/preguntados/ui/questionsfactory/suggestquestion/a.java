// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionsFactoryLimitsDTO;
import com.etermax.preguntados.datasource.dto.SuggestedQuestionDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.ui.questionsfactory.widget.SuggestQuestionEditText;
import com.etermax.preguntados.ui.questionsfactory.widget.a.e;
import com.etermax.preguntados.ui.questionsfactory.widget.a.f;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            c, d, b

public class a extends b
{

    UserSuggestionConfigDTO a;
    QuestionCategory b;
    d c;
    com.etermax.preguntados.c.a.b d;
    com.etermax.gamescommon.login.datasource.a e;
    protected Language f;
    protected Country g;
    private List h;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b i;
    private List j;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b k;
    private List l;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b m;

    public a()
    {
    }

    static Context a(a a1)
    {
        return a1.getApplicationContext();
    }

    public static Fragment a(UserSuggestionConfigDTO usersuggestionconfigdto, QuestionCategory questioncategory)
    {
        return com.etermax.preguntados.ui.questionsfactory.suggestquestion.c.g().a(usersuggestionconfigdto).a(questioncategory).a();
    }

    private void a(int i1)
    {
        Resources resources = getResources();
        int j1 = m.characters_limit;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        c c1 = com.etermax.tools.widget.b.c.b(resources.getQuantityString(j1, i1, aobj), getString(o.accept));
        c1.setTargetFragment(this, 0);
        c1.show(getActivity().getSupportFragmentManager(), "min_length");
    }

    private void a(SuggestedQuestionDTO suggestedquestiondto)
    {
        (new com.etermax.tools.i.a(getString(o.loading), suggestedquestiondto) {

            final SuggestedQuestionDTO a;
            final a b;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                com.etermax.preguntados.ui.questionsfactory.e.a(com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.e(a1)).a(b.f);
                com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.f(b);
                ((com.etermax.preguntados.ui.questionsfactory.suggestquestion.b)com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.g(a1)).b();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                b.c.a(a);
                return null;
            }

            
            {
                b = a.this;
                a = suggestedquestiondto;
                super(s);
            }
        }).a(this);
    }

    static Context b(a a1)
    {
        return a1.getApplicationContext();
    }

    static Context c(a a1)
    {
        return a1.getApplicationContext();
    }

    static void d(a a1)
    {
        a1.g();
    }

    static Context e(a a1)
    {
        return a1.getApplicationContext();
    }

    static void f(a a1)
    {
        a1.o();
    }

    static Object g(a a1)
    {
        return a1.mCallbacks;
    }

    private void g()
    {
        View view = getView();
        g g1 = d.a(b);
        view.findViewById(i.questions_factory_header).setBackgroundColor(getResources().getColor(g1.getHeaderColorResource()));
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(g1.getNameResource());
        TextView textview = (TextView)view.findViewById(i.questions_factory_ok_button);
        textview.setText(o.send);
        textview.setVisibility(0);
        ImageView imageview = (ImageView)view.findViewById(i.questions_factory_header_image);
        imageview.setImageResource(d.b(b));
        imageview.setVisibility(0);
        ((TextView)view.findViewById(i.questions_factory_bar_category_button)).setText(g1.getNameResource());
        ((ImageView)view.findViewById(i.questions_factory_bar_country_button)).setImageResource(com.etermax.preguntados.h.a.a(g).c());
        LanguageResourceMapper languageresourcemapper = LanguageResourceMapper.getByCode(f);
        if (languageresourcemapper != null)
        {
            ((TextView)view.findViewById(i.questions_factory_bar_language_button)).setText(languageresourcemapper.getNameResource());
        }
    }

    private void h()
    {
        if (h == null)
        {
            h = new ArrayList();
            h.add(new e(d, d.a(0)));
            h.add(new e(d, d.a(1)));
            h.add(new e(d, d.a(2)));
            h.add(new e(d, d.a(3)));
            h.add(new e(d, d.a(4)));
            h.add(new e(d, d.a(5)));
        }
        if (i == null)
        {
            i = new com.etermax.preguntados.ui.questionsfactory.widget.a.b(getActivity(), getString(o.select_category), h, i(), true);
        }
        i.a();
    }

    private com.etermax.preguntados.ui.questionsfactory.widget.a.c i()
    {
        return new com.etermax.preguntados.ui.questionsfactory.widget.a.c() {

            final a a;

            public void a(e e1)
            {
                a.b = e1.b();
                com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.d(a);
            }

            public volatile void a(Object obj)
            {
                a((e)obj);
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    private void j()
    {
        if (j == null)
        {
            j = new ArrayList();
            Language language;
            for (Iterator iterator = a.getLanguages().keySet().iterator(); iterator.hasNext(); j.add(new com.etermax.preguntados.ui.questionsfactory.widget.a.g(language)))
            {
                language = (Language)iterator.next();
            }

        }
        if (k == null)
        {
            k = new com.etermax.preguntados.ui.questionsfactory.widget.a.b(getActivity(), getString(o.select_language), j, k(), true);
        }
        k.a();
    }

    private com.etermax.preguntados.ui.questionsfactory.widget.a.c k()
    {
        return new com.etermax.preguntados.ui.questionsfactory.widget.a.c() {

            final a a;

            public void a(com.etermax.preguntados.ui.questionsfactory.widget.a.g g1)
            {
                a.f = g1.b();
                a.g = Country.GX;
                View view = a.getView();
                if (view != null)
                {
                    SuggestQuestionEditText suggestquestionedittext = (SuggestQuestionEditText)view.findViewById(i.statistics_question_edit_text);
                    suggestquestionedittext.setQuestionLanguage(a.f);
                    suggestquestionedittext.b();
                }
                com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.d(a);
            }

            public volatile void a(Object obj)
            {
                a((com.etermax.preguntados.ui.questionsfactory.widget.a.g)obj);
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    private void l()
    {
        if (l == null)
        {
            l = new ArrayList();
        }
        l.clear();
        Country country;
        for (Iterator iterator = ((ArrayList)a.getLanguages().get(f)).iterator(); iterator.hasNext(); l.add(new f(country)))
        {
            country = (Country)iterator.next();
        }

        m = new com.etermax.preguntados.ui.questionsfactory.widget.a.b(getActivity(), getString(o.select_region), l, m(), true);
        l.add(0, new f(Country.GX));
        m.b();
        m.a();
    }

    private com.etermax.preguntados.ui.questionsfactory.widget.a.c m()
    {
        return new com.etermax.preguntados.ui.questionsfactory.widget.a.c() {

            final a a;

            public void a(f f1)
            {
                a.g = f1.b();
                com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.d(a);
            }

            public volatile void a(Object obj)
            {
                a((f)obj);
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    private boolean n()
    {
        EditText edittext = (EditText)getView().findViewById(i.statistics_question_edit_text);
        if (edittext.getText().length() < a.getConfig().getQuestionMinSize())
        {
            a(a.getConfig().getQuestionMinSize());
            edittext.requestFocus();
            return false;
        }
        for (int i1 = 1; i1 <= 4; i1++)
        {
            EditText edittext1 = (EditText)getView().findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(i1).toString(), "id", getApplicationContext().getPackageName()));
            if (edittext1.length() < a.getConfig().getAnswersMinSize())
            {
                a(a.getConfig().getAnswersMinSize());
                edittext1.requestFocus();
                return false;
            }
        }

        return true;
    }

    private void o()
    {
        Toast.makeText(getApplicationContext(), (new StringBuilder()).append(getString(o.thanks)).append(" ").append(getString(o.question_sent)).toString(), 1).show();
    }

    public com.etermax.preguntados.ui.questionsfactory.suggestquestion.b a()
    {
        return new com.etermax.preguntados.ui.questionsfactory.suggestquestion.b() {

            final a a;

            public void b()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    void b()
    {
        g();
    }

    void c()
    {
        h();
    }

    void d()
    {
        l();
    }

    void e()
    {
        j();
    }

    public void f()
    {
        if (n())
        {
            EditText edittext = (EditText)getView().findViewById(i.statistics_question_edit_text);
            SuggestedQuestionDTO suggestedquestiondto = new SuggestedQuestionDTO();
            suggestedquestiondto.setCategory(b);
            suggestedquestiondto.setCountry(g);
            suggestedquestiondto.setLanguage(f);
            suggestedquestiondto.setQuestion(com.etermax.preguntados.ui.questionsfactory.e.a(edittext.getText().toString(), f, true));
            ArrayList arraylist = new ArrayList();
            for (int i1 = 2; i1 <= 4; i1++)
            {
                arraylist.add(com.etermax.preguntados.ui.questionsfactory.e.a(((EditText)getView().findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(i1).toString(), "id", getApplicationContext().getPackageName()))).getText().toString(), f, false));
            }

            int j1 = (int)((1024D * Math.random()) % 4D);
            suggestedquestiondto.setCorrectAnswer(j1);
            arraylist.add(j1, com.etermax.preguntados.ui.questionsfactory.e.a(((EditText)getView().findViewById(getResources().getIdentifier("statistics_question_edit_answer_1", "id", getApplicationContext().getPackageName()))).getText().toString(), f, false));
            suggestedquestiondto.setAnswers(arraylist);
            a(suggestedquestiondto);
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle == null)
        {
            f = com.etermax.preguntados.ui.questionsfactory.e.a(getApplicationContext()).a();
            g = Country.GX;
            if (!a.getLanguages().containsKey(f))
            {
                f = Language.EN;
            }
            if (e.n() != null)
            {
                g = com.etermax.preguntados.h.a.a(e.n().name()).a();
            }
            if (!a.getLanguages().containsKey(f) || !((ArrayList)a.getLanguages().get(f)).contains(g))
            {
                g = Country.GX;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view;
        ScrollView scrollview;
        int i1;
        view = layoutinflater.inflate(k.questions_factory_edit_question_fragment, null, false);
        scrollview = (ScrollView)view.findViewById(i.statistics_question_edit_scroll);
        SuggestQuestionEditText suggestquestionedittext = (SuggestQuestionEditText)view.findViewById(i.statistics_question_edit_text);
        TextView textview = (TextView)view.findViewById(i.statistics_question_remaining_characters);
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(a.getConfig().getQuestionMaxSize());
        textview.setText(String.valueOf(a.getConfig().getQuestionMaxSize() - suggestquestionedittext.length()));
        suggestquestionedittext.setFilters(ainputfilter);
        suggestquestionedittext.setCursorLocked(true);
        suggestquestionedittext.setQuestionLanguage(f);
        suggestquestionedittext.setHint(o.tap_write_question);
        suggestquestionedittext.addTextChangedListener(new TextWatcher(textview, suggestquestionedittext) {

            final TextView a;
            final SuggestQuestionEditText b;
            final a c;

            public void afterTextChanged(Editable editable)
            {
                a.setText(String.valueOf(c.a.getConfig().getQuestionMaxSize() - b.length()));
            }

            public void beforeTextChanged(CharSequence charsequence, int l1, int i2, int j2)
            {
            }

            public void onTextChanged(CharSequence charsequence, int l1, int i2, int j2)
            {
            }

            
            {
                c = a.this;
                a = textview;
                b = suggestquestionedittext;
                super();
            }
        });
        suggestquestionedittext.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener(suggestquestionedittext) {

            final SuggestQuestionEditText a;
            final a b;

            public void onFocusChange(View view1, boolean flag)
            {
                if (flag)
                {
                    a.setHintTextColor(b.getResources().getColor(com.etermax.f.transparent));
                    a.a();
                    return;
                } else
                {
                    a.setHintTextColor(b.getResources().getColor(com.etermax.f.grayLighter));
                    return;
                }
            }

            
            {
                b = a.this;
                a = suggestquestionedittext;
                super();
            }
        });
        suggestquestionedittext.setListener(new com.etermax.preguntados.ui.questionsfactory.widget.b(view, scrollview) {

            final View a;
            final ScrollView b;
            final a c;

            public void a()
            {
                a.findViewById(i.statistics_question_edit_answer_1).requestFocus();
                b.smoothScrollTo(0, a.findViewById(i.statistics_question_answer_container_1).getTop());
            }

            
            {
                c = a.this;
                a = view;
                b = scrollview;
                super();
            }
        });
        i1 = 1;
_L7:
        EditText edittext;
        TextView textview1;
        int j1;
        int k1;
        if (i1 > 4)
        {
            break MISSING_BLOCK_LABEL_580;
        }
        edittext = (EditText)view.findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(i1).toString(), "id", getApplicationContext().getPackageName()));
        textview1 = (TextView)view.findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_remaining_characters_").append(i1).toString(), "id", getActivity().getPackageName()));
        InputFilter ainputfilter1[] = new InputFilter[1];
        ainputfilter1[0] = new android.text.InputFilter.LengthFilter(a.getConfig().getAnswersMaxSize());
        textview1.setText(String.valueOf(a.getConfig().getAnswersMaxSize() - edittext.length()));
        edittext.setFilters(ainputfilter1);
        j1 = -1;
        k1 = com.etermax.f.grayLighter;
        i1;
        JVM INSTR tableswitch 1 4: default 384
    //                   1 464
    //                   2 556
    //                   3 564
    //                   4 572;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_572;
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break; /* Loop/switch isn't completed */
_L8:
        edittext.setHint(j1);
        edittext.setHintTextColor(getResources().getColor(k1));
        edittext.addTextChangedListener(new TextWatcher(textview1, edittext) {

            final TextView a;
            final EditText b;
            final a c;

            public void afterTextChanged(Editable editable)
            {
                a.setText(String.valueOf(c.a.getConfig().getAnswersMaxSize() - b.length()));
            }

            public void beforeTextChanged(CharSequence charsequence, int l1, int i2, int j2)
            {
            }

            public void onTextChanged(CharSequence charsequence, int l1, int i2, int j2)
            {
            }

            
            {
                c = a.this;
                a = textview;
                b = edittext;
                super();
            }
        });
        edittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener(i1, view, scrollview) {

            final int a;
            final View b;
            final ScrollView c;
            final a d;

            public boolean onEditorAction(TextView textview2, int l1, KeyEvent keyevent)
            {
label0:
                {
                    if (l1 == 5)
                    {
                        if (a != 4)
                        {
                            break label0;
                        }
                        com.etermax.a.b.b(a.a(d));
                    }
                    return false;
                }
                b.findViewById(d.getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(1 + a).toString(), "id", com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.b(d).getPackageName())).requestFocus();
                c.smoothScrollTo(0, b.findViewById(d.getResources().getIdentifier((new StringBuilder()).append("statistics_question_answer_container_").append(1 + a).toString(), "id", com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.c(d).getPackageName())).getTop());
                return false;
            }

            
            {
                d = a.this;
                a = i1;
                b = view;
                c = scrollview;
                super();
            }
        });
        edittext.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener(edittext, k1) {

            final EditText a;
            final int b;
            final a c;

            public void onFocusChange(View view1, boolean flag)
            {
                if (flag)
                {
                    a.setHintTextColor(c.getResources().getColor(com.etermax.f.transparent));
                    return;
                } else
                {
                    a.setHintTextColor(c.getResources().getColor(b));
                    return;
                }
            }

            
            {
                c = a.this;
                a = edittext;
                b = i1;
                super();
            }
        });
        i1++;
        if (true) goto _L7; else goto _L6
_L6:
        view.findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_answer_container_").append(i1).toString(), "id", getApplicationContext().getPackageName())).setBackgroundResource(h.button_green_background);
        edittext.setTextColor(getResources().getColor(com.etermax.f.white));
        textview1.setTextColor(getResources().getColor(com.etermax.f.white));
        j1 = o.correct_answer;
        k1 = com.etermax.f.white;
          goto _L8
_L3:
        j1 = o.wrong_answer_01;
          goto _L8
_L4:
        j1 = o.wrong_answer_02;
          goto _L8
        j1 = o.wrong_answer_03;
          goto _L8
        return view;
    }
}
