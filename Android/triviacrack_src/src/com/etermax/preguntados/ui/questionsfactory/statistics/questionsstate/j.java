// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.FactoryQuestionDTO;
import com.etermax.preguntados.datasource.dto.QuestionsFactoryLimitsDTO;
import com.etermax.preguntados.datasource.dto.TranslationDTO;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.h.a;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.preguntados.ui.questionsfactory.widget.SuggestQuestionEditText;
import com.etermax.preguntados.ui.questionsfactory.widget.a.e;
import com.etermax.preguntados.ui.questionsfactory.widget.a.f;
import com.etermax.preguntados.ui.questionsfactory.widget.a.g;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            l, m, k

public class j extends b
{

    UserFactoryTranslationStatDTO a;
    UserSuggestionConfigDTO b;
    com.etermax.preguntados.c.a.b c;
    d d;
    QuestionCategory e;
    Country f;
    Language g;
    private List h;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b i;
    private List j;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b k;
    private List l;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b m;

    public j()
    {
    }

    static Context a(j j1)
    {
        return j1.getApplicationContext();
    }

    public static Fragment a(UserSuggestionConfigDTO usersuggestionconfigdto, UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        return com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.l.h().a(usersuggestionconfigdto).a(userfactorytranslationstatdto).a();
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

    static Context b(j j1)
    {
        return j1.getApplicationContext();
    }

    static Context c(j j1)
    {
        return j1.getApplicationContext();
    }

    static Context d(j j1)
    {
        return j1.getApplicationContext();
    }

    static Context e(j j1)
    {
        return j1.getApplicationContext();
    }

    static void f(j j1)
    {
        j1.n();
    }

    static Object g(j j1)
    {
        return j1.mCallbacks;
    }

    private void h()
    {
        if (h == null)
        {
            h = new ArrayList();
            h.add(new e(c, c.a(0)));
            h.add(new e(c, c.a(1)));
            h.add(new e(c, c.a(2)));
            h.add(new e(c, c.a(3)));
            h.add(new e(c, c.a(4)));
            h.add(new e(c, c.a(5)));
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

            final j a;

            public void a(e e1)
            {
                a.e = e1.b();
                com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.f(a);
            }

            public volatile void a(Object obj)
            {
                a((e)obj);
            }

            
            {
                a = j.this;
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
            for (Iterator iterator = b.getLanguages().keySet().iterator(); iterator.hasNext(); j.add(new g(language)))
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

            final j a;

            public void a(g g1)
            {
                a.g = g1.b();
                a.f = Country.GX;
                com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.f(a);
            }

            public volatile void a(Object obj)
            {
                a((g)obj);
            }

            
            {
                a = j.this;
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
        for (Iterator iterator = ((ArrayList)b.getLanguages().get(g)).iterator(); iterator.hasNext(); l.add(new f(country)))
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

            final j a;

            public void a(f f1)
            {
                a.f = f1.b();
                com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.f(a);
            }

            public volatile void a(Object obj)
            {
                a((f)obj);
            }

            
            {
                a = j.this;
                super();
            }
        };
    }

    private void n()
    {
        View view = getView();
        com.etermax.preguntados.c.a.g g1 = c.a(e);
        view.findViewById(i.questions_factory_header).setBackgroundColor(getResources().getColor(g1.getHeaderColorResource()));
        ImageView imageview = (ImageView)view.findViewById(i.questions_factory_header_image);
        imageview.setImageResource(c.b(e));
        imageview.setVisibility(0);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(g1.getNameResource());
        ((TextView)view.findViewById(i.questions_factory_header_title)).setTextSize(17F);
        TextView textview = (TextView)view.findViewById(i.questions_factory_ok_button);
        textview.setVisibility(0);
        textview.setText(o.forward);
        textview.setTextSize(12F);
        ((TextView)view.findViewById(i.questions_factory_bar_category_button)).setText(g1.getNameResource());
        ((ImageView)view.findViewById(i.questions_factory_bar_country_button)).setImageResource(com.etermax.preguntados.h.a.a(f).c());
        LanguageResourceMapper languageresourcemapper = LanguageResourceMapper.getByCode(g);
        if (languageresourcemapper != null)
        {
            ((TextView)view.findViewById(i.questions_factory_bar_language_button)).setText(languageresourcemapper.getNameResource());
        }
    }

    private void o()
    {
        boolean flag = true;
        if (p())
        {
            FactoryQuestionDTO factoryquestiondto = new FactoryQuestionDTO();
            factoryquestiondto.setId(a.getId());
            factoryquestiondto.setCategory(e);
            ArrayList arraylist = new ArrayList();
            arraylist.add(f);
            factoryquestiondto.setCountries(arraylist);
            TranslationDTO translationdto = new TranslationDTO();
            translationdto.setId(a.getTranslation_id());
            translationdto.setLanguage(g);
            translationdto.setText(com.etermax.preguntados.ui.questionsfactory.e.a(((EditText)getView().findViewById(i.statistics_question_edit_text)).getText().toString(), g, flag));
            ArrayList arraylist1 = new ArrayList();
            for (; flag <= 4; flag++)
            {
                arraylist1.add(com.etermax.preguntados.ui.questionsfactory.e.a(((EditText)getView().findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(flag).toString(), "id", getApplicationContext().getPackageName()))).getText().toString(), g, false));
            }

            translationdto.setAnswers(arraylist1);
            ArrayList arraylist2 = new ArrayList();
            arraylist2.add(translationdto);
            factoryquestiondto.setTranslations(arraylist2);
            (new com.etermax.tools.i.a(getString(o.loading), factoryquestiondto) {

                final FactoryQuestionDTO a;
                final j b;

                public Object a()
                {
                    return b();
                }

                public void a(j j1, Void void1)
                {
                    super.a(j1, void1);
                    ((com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.k)com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.g(b)).n();
                }

                public volatile void a(Object obj, Object obj1)
                {
                    a((j)obj, (Void)obj1);
                }

                public Void b()
                {
                    b.d.a(a);
                    return null;
                }

            
            {
                b = j.this;
                a = factoryquestiondto;
                super(s);
            }
            }).a(this);
        }
    }

    private boolean p()
    {
        EditText edittext = (EditText)getView().findViewById(i.statistics_question_edit_text);
        if (edittext.getText().length() < b.getConfig().getQuestionMinSize())
        {
            a(b.getConfig().getQuestionMinSize());
            edittext.requestFocus();
            return false;
        }
        for (int i1 = 1; i1 <= 4; i1++)
        {
            EditText edittext1 = (EditText)getView().findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(i1).toString(), "id", getApplicationContext().getPackageName()));
            if (edittext1.length() < b.getConfig().getAnswersMinSize())
            {
                a(b.getConfig().getAnswersMinSize());
                edittext1.requestFocus();
                return false;
            }
        }

        return true;
    }

    public com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.k a()
    {
        return new com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.k() {

            final j a;

            public void n()
            {
            }

            
            {
                a = j.this;
                super();
            }
        };
    }

    void b()
    {
        e = a.getCategory();
        f = (Country)a.getCountries().get(0);
        g = a.getLanguage();
    }

    void c()
    {
        if (a.getOrigin() == TranslationOrigin.ORIGINAL)
        {
            h();
        }
    }

    void d()
    {
        if (a.getOrigin() == TranslationOrigin.ORIGINAL)
        {
            l();
        }
    }

    void e()
    {
        if (a.getOrigin() == TranslationOrigin.ORIGINAL)
        {
            j();
        }
    }

    void f()
    {
        o();
    }

    void g()
    {
        n();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.questions_factory_edit_question_fragment, null);
        SuggestQuestionEditText suggestquestionedittext = (SuggestQuestionEditText)view.findViewById(i.statistics_question_edit_text);
        TextView textview = (TextView)view.findViewById(i.statistics_question_remaining_characters);
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(b.getConfig().getQuestionMaxSize());
        suggestquestionedittext.setFilters(ainputfilter);
        suggestquestionedittext.setImeOptions(5);
        suggestquestionedittext.addTextChangedListener(new TextWatcher(textview, suggestquestionedittext) {

            final TextView a;
            final SuggestQuestionEditText b;
            final j c;

            public void afterTextChanged(Editable editable)
            {
                a.setText(String.valueOf(c.b.getConfig().getQuestionMaxSize() - b.length()));
            }

            public void beforeTextChanged(CharSequence charsequence, int j1, int k1, int l1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int j1, int k1, int l1)
            {
            }

            
            {
                c = j.this;
                a = textview;
                b = suggestquestionedittext;
                super();
            }
        });
        suggestquestionedittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener(view) {

            final View a;
            final j b;

            public boolean onEditorAction(TextView textview2, int j1, KeyEvent keyevent)
            {
                if (j1 == 5 || j1 == 0 && keyevent.getAction() == 0)
                {
                    ScrollView scrollview = (ScrollView)a.findViewById(i.statistics_question_edit_scroll);
                    View view2 = a.findViewById(b.getResources().getIdentifier("statistics_question_answer_container_1", "id", com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.a(b).getPackageName()));
                    View view3 = a.findViewById(b.getResources().getIdentifier("statistics_question_edit_answer_1", "id", com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.b(b).getPackageName()));
                    scrollview.smoothScrollTo(0, view2.getTop());
                    view3.requestFocus();
                }
                return true;
            }

            
            {
                b = j.this;
                a = view;
                super();
            }
        });
        if (TextUtils.isEmpty(suggestquestionedittext.getText()))
        {
            suggestquestionedittext.setText(a.getText());
        }
        textview.setText(String.valueOf(b.getConfig().getQuestionMaxSize() - suggestquestionedittext.length()));
        for (int i1 = 1; i1 <= 4; i1++)
        {
            EditText edittext = (EditText)view.findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(i1).toString(), "id", getApplicationContext().getPackageName()));
            TextView textview1 = (TextView)view.findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_remaining_characters_").append(i1).toString(), "id", getApplicationContext().getPackageName()));
            View view1 = view.findViewById(getResources().getIdentifier((new StringBuilder()).append("statistics_question_answer_container_").append(i1).toString(), "id", getApplicationContext().getPackageName()));
            InputFilter ainputfilter1[] = new InputFilter[1];
            ainputfilter1[0] = new android.text.InputFilter.LengthFilter(b.getConfig().getAnswersMaxSize());
            edittext.setFilters(ainputfilter1);
            edittext.addTextChangedListener(new TextWatcher(textview1, edittext) {

                final TextView a;
                final EditText b;
                final j c;

                public void afterTextChanged(Editable editable)
                {
                    a.setText(String.valueOf(c.b.getConfig().getAnswersMaxSize() - b.length()));
                }

                public void beforeTextChanged(CharSequence charsequence, int j1, int k1, int l1)
                {
                }

                public void onTextChanged(CharSequence charsequence, int j1, int k1, int l1)
                {
                }

            
            {
                c = j.this;
                a = textview;
                b = edittext;
                super();
            }
            });
            edittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener(i1, view) {

                final int a;
                final View b;
                final j c;

                public boolean onEditorAction(TextView textview2, int j1, KeyEvent keyevent)
                {
                    if (j1 == 5 || j1 == 0 && keyevent.getAction() == 0)
                    {
                        if (a != c.a.getAnswers().size())
                        {
                            ScrollView scrollview = (ScrollView)b.findViewById(i.statistics_question_edit_scroll);
                            View view2 = b.findViewById(c.getResources().getIdentifier((new StringBuilder()).append("statistics_question_answer_container_").append(1 + a).toString(), "id", com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.c(c).getPackageName()));
                            View view3 = b.findViewById(c.getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(1 + a).toString(), "id", com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.d(c).getPackageName()));
                            scrollview.smoothScrollTo(0, view2.getTop());
                            view3.requestFocus();
                        } else
                        {
                            com.etermax.a.b.b(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.e(c));
                        }
                    }
                    return true;
                }

            
            {
                c = j.this;
                a = i1;
                b = view;
                super();
            }
            });
            if (TextUtils.isEmpty(edittext.getText()))
            {
                edittext.setText((CharSequence)a.getAnswers().get(i1 - 1));
            }
            textview1.setText(String.valueOf(b.getConfig().getAnswersMaxSize() - edittext.length()));
            if (i1 - 1 == a.getCorrectAnswer())
            {
                view1.setBackgroundResource(h.button_green_background);
                edittext.setTextColor(getResources().getColor(com.etermax.f.white));
                textview1.setTextColor(getResources().getColor(com.etermax.f.white));
            }
            if (a.getOrigin() == TranslationOrigin.TRANSLATION)
            {
                view.findViewById(i.questions_factory_bar).setBackgroundColor(getResources().getColor(com.etermax.f.grayDark));
                ((TextView)view.findViewById(i.questions_factory_bar_category_button)).setTextColor(getResources().getColor(com.etermax.f.grayLight));
                ((TextView)view.findViewById(i.questions_factory_bar_language_button)).setTextColor(getResources().getColor(com.etermax.f.grayLight));
            }
        }

        return view;
    }
}
