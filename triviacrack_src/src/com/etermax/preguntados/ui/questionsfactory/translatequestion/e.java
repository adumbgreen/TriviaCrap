// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

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
import android.widget.Toast;
import com.etermax.f;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.i;
import com.etermax.k;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.TranslateQuestionConfigDTO;
import com.etermax.preguntados.datasource.dto.UserTranslationDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.ui.questionsfactory.a.a;
import com.etermax.preguntados.ui.questionsfactory.widget.SuggestQuestionEditText;
import com.etermax.preguntados.ui.questionsfactory.widget.a.g;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            g, h, f

public class e extends b
{

    private static final int j[];
    d a;
    TranslateQuestionConfigDTO b;
    Language c;
    Language d;
    QuestionDTO e;
    private List f;
    private List g;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b h;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.b i;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.c k;
    private com.etermax.preguntados.ui.questionsfactory.widget.a.c l;

    public e()
    {
        k = new com.etermax.preguntados.ui.questionsfactory.widget.a.c() {

            final e a;

            public void a(g g1)
            {
                a.c = g1.b();
                com.etermax.preguntados.ui.questionsfactory.e.a(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.a(a)).c(a.c);
                com.etermax.preguntados.ui.questionsfactory.e.a(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.b(a)).d(a.d);
                com.etermax.preguntados.ui.questionsfactory.translatequestion.e.a(a, a.c, a.d);
                com.etermax.preguntados.ui.questionsfactory.translatequestion.e.c(a);
            }

            public volatile void a(Object obj)
            {
                a((g)obj);
            }

            
            {
                a = e.this;
                super();
            }
        };
        l = new com.etermax.preguntados.ui.questionsfactory.widget.a.c() {

            final e a;

            public void a(g g1)
            {
                if (g1.b() != a.c)
                {
                    a.d = g1.b();
                    com.etermax.preguntados.ui.questionsfactory.e.a(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.d(a)).c(a.c);
                    com.etermax.preguntados.ui.questionsfactory.e.a(e.e(a)).d(a.d);
                    com.etermax.preguntados.ui.questionsfactory.translatequestion.e.a(a, a.c, a.d);
                    com.etermax.preguntados.ui.questionsfactory.translatequestion.e.c(a);
                }
            }

            public volatile void a(Object obj)
            {
                a((g)obj);
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    static int a(e e1, String s, int i1)
    {
        return e1.a(s, i1);
    }

    private int a(String s, int i1)
    {
        return getResources().getIdentifier((new StringBuilder()).append(s).append(i1).toString(), "id", getApplicationContext().getPackageName());
    }

    static Context a(e e1)
    {
        return e1.getApplicationContext();
    }

    public static Fragment a(TranslateQuestionConfigDTO translatequestionconfigdto, Language language, Language language1)
    {
        return com.etermax.preguntados.ui.questionsfactory.translatequestion.g.h().a(translatequestionconfigdto).a(language).b(language1).a();
    }

    private void a(Language language, Language language1)
    {
        (new com.etermax.tools.i.a(getString(o.loading), language, language1) {

            final Language a;
            final Language b;
            final e c;

            public Object a()
            {
                return b();
            }

            public void a(e e1, QuestionDTO questiondto)
            {
                super.a(e1, questiondto);
                c.a(questiondto);
            }

            public void a(e e1, Exception exception)
            {
                if ((exception instanceof com.etermax.preguntados.datasource.a.b) && ((com.etermax.preguntados.datasource.a.b)exception).c() == 416)
                {
                    Toast.makeText(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.f(c), c.getString(o.no_more_questions_translate), 1).show();
                    c.getView().findViewById(i.translation_scroll).setVisibility(4);
                    b(false);
                }
                super.a(e1, exception);
            }

            public volatile void a(Object obj, Exception exception)
            {
                a((e)obj, exception);
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (QuestionDTO)obj1);
            }

            public QuestionDTO b()
            {
                return c.a.a(a, b);
            }

            
            {
                c = e.this;
                a = language;
                b = language1;
                super(s);
            }
        }).a(this);
    }

    static void a(e e1, Language language, Language language1)
    {
        e1.a(language, language1);
    }

    static Context b(e e1)
    {
        return e1.getApplicationContext();
    }

    private void b(QuestionDTO questiondto)
    {
        View view = getView();
        ((TextView)view.findViewById(i.text_original)).setText(questiondto.getText());
        view.findViewById(i.translation_scroll).setVisibility(0);
        for (int i1 = 0; i1 < j.length; i1++)
        {
            ((TextView)view.findViewById(a("text_original_answer_", i1 + 1))).setText((CharSequence)e.getAnswers().get(i1));
        }

    }

    static void c(e e1)
    {
        e1.h();
    }

    static Context d(e e1)
    {
        return e1.getApplicationContext();
    }

    static Context e(e e1)
    {
        return e1.getApplicationContext();
    }

    static Context f(e e1)
    {
        return e1.getApplicationContext();
    }

    static int[] g()
    {
        return j;
    }

    private void h()
    {
        View view = getView();
        ((ImageView)view.findViewById(i.translate_language_from_flag)).setImageResource(com.etermax.preguntados.ui.questionsfactory.a.a.a(c.name()).a());
        ((TextView)view.findViewById(i.translate_language_from_textview)).setText(getString(LanguageResourceMapper.getByCode(c).getNameResource()));
        ((TextView)view.findViewById(i.translate_language_to_textview)).setText(getString(LanguageResourceMapper.getByCode(d).getNameResource()));
        ((ImageView)view.findViewById(i.translate_language_to_flag)).setImageResource(com.etermax.preguntados.ui.questionsfactory.a.a.a(d.name()).a());
    }

    private void i()
    {
        View view = getView();
        SuggestQuestionEditText suggestquestionedittext = (SuggestQuestionEditText)view.findViewById(i.text_translation);
        suggestquestionedittext.getEditableText().clear();
        suggestquestionedittext.a();
        for (int i1 = 0; i1 < j.length; i1++)
        {
            ((EditText)view.findViewById(a("text_translation_answer_", i1 + 1))).getEditableText().clear();
        }

    }

    private void j()
    {
        Resources resources = getResources();
        int i1 = m.characters_limit;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(15);
        c c1 = com.etermax.tools.widget.b.c.b(resources.getQuantityString(i1, 15, aobj), getString(o.accept));
        c1.setTargetFragment(this, 0);
        c1.show(getActivity().getSupportFragmentManager(), "question_min_length");
    }

    public com.etermax.preguntados.ui.questionsfactory.translatequestion.f a()
    {
        return new com.etermax.preguntados.ui.questionsfactory.translatequestion.f() {

            final e a;

            public void a(UserTranslationDTO usertranslationdto, QuestionCategory questioncategory)
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void a(QuestionDTO questiondto)
    {
        e = questiondto;
        b(e);
        i();
    }

    void b()
    {
        if (e == null)
        {
            a(c, d);
            return;
        } else
        {
            b(e);
            return;
        }
    }

    void c()
    {
        h.a();
    }

    void d()
    {
        i.a();
    }

    public void e()
    {
        a(c, d);
    }

    public void f()
    {
        String s;
label0:
        {
            s = ((EditText)getView().findViewById(i.translate_question_translation).findViewById(i.text_translation)).getText().toString();
            if (c != d)
            {
                if (!TextUtils.isEmpty(s) && s.length() >= 15)
                {
                    break label0;
                }
                j();
            }
            return;
        }
        UserTranslationDTO usertranslationdto = new UserTranslationDTO();
        usertranslationdto.setId(e.getId());
        usertranslationdto.setLanguage(d);
        usertranslationdto.setText(com.etermax.preguntados.ui.questionsfactory.e.a(s, d, true));
        ArrayList arraylist = new ArrayList();
        for (int i1 = 0; i1 < j.length; i1++)
        {
            String s1 = ((EditText)getView().findViewById(a("text_translation_answer_", i1 + 1))).getText().toString();
            if (TextUtils.isEmpty(s1))
            {
                s1 = (String)e.getAnswers().get(i1);
            }
            arraylist.add(s1);
        }

        usertranslationdto.setAnswers(arraylist);
        ((com.etermax.preguntados.ui.questionsfactory.translatequestion.f)mCallbacks).a(usertranslationdto, e.getCategory());
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = new ArrayList();
        g = new ArrayList();
        g g1;
        for (Iterator iterator = b.getSourceLanguages().iterator(); iterator.hasNext(); f.add(g1))
        {
            g1 = new g((Language)iterator.next());
        }

        g g2;
        for (Iterator iterator1 = b.getTargetLanguages().iterator(); iterator1.hasNext(); g.add(g2))
        {
            g2 = new g((Language)iterator1.next());
        }

        h = new com.etermax.preguntados.ui.questionsfactory.widget.a.b(getActivity(), getString(o.select_lang), f, k, true);
        i = new com.etermax.preguntados.ui.questionsfactory.widget.a.b(getActivity(), getString(o.select_lang), g, l, true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.translate_question_translation_fragment, viewgroup, false);
        ((TextView)view.findViewById(i.translate_question_ok_button)).setText(getString(o.skip));
        ((TextView)view.findViewById(i.translate_question_ok_button)).setVisibility(0);
        ((ImageView)view.findViewById(i.translate_language_from_flag)).setImageResource(com.etermax.preguntados.ui.questionsfactory.a.a.a(c.name()).a());
        ((TextView)view.findViewById(i.translate_language_from_textview)).setText(getString(LanguageResourceMapper.getByCode(c).getNameResource()));
        ((TextView)view.findViewById(i.translate_language_to_textview)).setText(getString(LanguageResourceMapper.getByCode(d).getNameResource()));
        ((ImageView)view.findViewById(i.translate_language_to_flag)).setImageResource(com.etermax.preguntados.ui.questionsfactory.a.a.a(d.name()).a());
        TextView textview = (TextView)view.findViewById(i.translate_question_translation).findViewById(i.remaining_characters);
        SuggestQuestionEditText suggestquestionedittext = (SuggestQuestionEditText)view.findViewById(i.translate_question_translation).findViewById(i.text_translation);
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(250);
        textview.setText(String.valueOf(250 - suggestquestionedittext.length()));
        suggestquestionedittext.setFilters(ainputfilter);
        suggestquestionedittext.setImeOptions(5);
        suggestquestionedittext.setQuestionLanguage(d);
        suggestquestionedittext.addTextChangedListener(new TextWatcher(textview, suggestquestionedittext) {

            final TextView a;
            final SuggestQuestionEditText b;
            final e c;

            public void afterTextChanged(Editable editable)
            {
                a.setText(String.valueOf(250 - b.length()));
            }

            public void beforeTextChanged(CharSequence charsequence, int j1, int k1, int l1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int j1, int k1, int l1)
            {
            }

            
            {
                c = e.this;
                a = textview;
                b = suggestquestionedittext;
                super();
            }
        });
        suggestquestionedittext.setListener(new com.etermax.preguntados.ui.questionsfactory.widget.b(view) {

            final View a;
            final e b;

            public void a()
            {
                View view1 = a.findViewById(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.a(b, "text_translation_answer_", 1));
                ((ScrollView)a.findViewById(i.translation_scroll)).smoothScrollTo(0, a.findViewById(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.a(b, "translate_questions_answer_", 1)).getTop());
                view1.requestFocus();
            }

            
            {
                b = e.this;
                a = view;
                super();
            }
        });
        suggestquestionedittext.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final e a;

            public void onFocusChange(View view1, boolean flag)
            {
                if (flag)
                {
                    SuggestQuestionEditText suggestquestionedittext1 = (SuggestQuestionEditText)view1;
                    suggestquestionedittext1.setHintTextColor(a.getResources().getColor(f.transparent));
                    suggestquestionedittext1.a();
                    return;
                } else
                {
                    ((EditText)view1).setHintTextColor(a.getResources().getColor(f.grayLighter));
                    return;
                }
            }

            
            {
                a = e.this;
                super();
            }
        });
        view.findViewById(i.clear_button_translation).setOnClickListener(new android.view.View.OnClickListener(suggestquestionedittext) {

            final SuggestQuestionEditText a;
            final e b;

            public void onClick(View view1)
            {
                a.setText("");
                a.a();
            }

            
            {
                b = e.this;
                a = suggestquestionedittext;
                super();
            }
        });
        for (int i1 = 0; i1 < j.length; i1++)
        {
            InputFilter ainputfilter1[] = new InputFilter[1];
            ainputfilter1[0] = new android.text.InputFilter.LengthFilter(42);
            EditText edittext = (EditText)view.findViewById(a("text_translation_answer_", i1 + 1));
            TextView textview1 = (TextView)view.findViewById(a("remaining_characters_answer_", i1 + 1));
            textview1.setText(String.valueOf(42 - edittext.length()));
            edittext.setFilters(ainputfilter1);
            edittext.setImeOptions(5);
            edittext.addTextChangedListener(new TextWatcher(textview1, edittext) {

                final TextView a;
                final EditText b;
                final e c;

                public void afterTextChanged(Editable editable)
                {
                    a.setText(String.valueOf(42 - b.length()));
                }

                public void beforeTextChanged(CharSequence charsequence, int j1, int k1, int l1)
                {
                }

                public void onTextChanged(CharSequence charsequence, int j1, int k1, int l1)
                {
                }

            
            {
                c = e.this;
                a = textview;
                b = edittext;
                super();
            }
            });
            edittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener(i1, view) {

                final int a;
                final View b;
                final e c;

                public boolean onEditorAction(TextView textview2, int j1, KeyEvent keyevent)
                {
                    if (j1 == 0 && keyevent.getAction() == 0)
                    {
                        if (a == -1 + com.etermax.preguntados.ui.questionsfactory.translatequestion.e.g().length)
                        {
                            c.f();
                        } else
                        {
                            View view1 = b.findViewById(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.a(c, "text_translation_answer_", 2 + a));
                            ((ScrollView)b.findViewById(i.translation_scroll)).smoothScrollTo(0, b.findViewById(com.etermax.preguntados.ui.questionsfactory.translatequestion.e.a(c, "translate_questions_answer_", 2 + a)).getTop());
                            view1.requestFocus();
                        }
                    }
                    return true;
                }

            
            {
                c = e.this;
                a = i1;
                b = view;
                super();
            }
            });
            view.findViewById(a("clear_button_translation_answer_", i1 + 1)).setOnClickListener(new android.view.View.OnClickListener(edittext) {

                final EditText a;
                final e b;

                public void onClick(View view1)
                {
                    a.setText("");
                }

            
            {
                b = e.this;
                a = edittext;
                super();
            }
            });
            view.findViewById(a("copy_button_translation_answer_", i1 + 1)).setOnClickListener(new android.view.View.OnClickListener(edittext, i1) {

                final EditText a;
                final int b;
                final e c;

                public void onClick(View view1)
                {
                    a.setText((CharSequence)c.e.getAnswers().get(b));
                }

            
            {
                c = e.this;
                a = edittext;
                b = i1;
                super();
            }
            });
        }

        return view;
    }

    static 
    {
        int ai[] = new int[4];
        ai[0] = i.translate_questions_answer_1;
        ai[1] = i.translate_questions_answer_2;
        ai[2] = i.translate_questions_answer_3;
        ai[3] = i.translate_questions_answer_4;
        j = ai;
    }
}
