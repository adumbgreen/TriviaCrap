// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.tools.i.a;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            g, h, i, f

public class e extends b
{

    private static final int e[];
    com.etermax.preguntados.c.a.b a;
    d b;
    ArrayList c;
    private Map d;

    public e()
    {
    }

    static Object a(e e1)
    {
        return e1.mCallbacks;
    }

    static void a(e e1, List list)
    {
        e1.a(list);
    }

    private void a(List list)
    {
        View view = getView();
        d = new HashMap();
        for (int j = 0; j < list.size() && j < e.length; j++)
        {
            d.put(list.get(j), Integer.valueOf(e[j]));
        }

        java.util.Map.Entry entry;
        for (Iterator iterator = d.entrySet().iterator(); iterator.hasNext(); view.findViewById(((Integer)entry.getValue()).intValue()).setOnClickListener(new com.etermax.preguntados.ui.questionsfactory.suggestquestion.g(this, (QuestionCategory)entry.getKey())))
        {
            entry = (java.util.Map.Entry)iterator.next();
            ((ImageView)view.findViewById(((Integer)entry.getValue()).intValue()).findViewById(i.suggest_question_select_category_image)).setImageResource(a.d((QuestionCategory)entry.getKey()).c());
            ((TextView)view.findViewById(((Integer)entry.getValue()).intValue()).findViewById(i.suggest_question_select_category_name)).setText(getString(a.a((QuestionCategory)entry.getKey()).getNameResource()));
        }

    }

    public static Fragment b()
    {
        return com.etermax.preguntados.ui.questionsfactory.suggestquestion.h.d().a();
    }

    static Object b(e e1)
    {
        return e1.mCallbacks;
    }

    private void d()
    {
        (new a(getString(o.loading)) {

            final e a;

            public Object a()
            {
                return b();
            }

            public void a(e e1, UserSuggestionConfigDTO usersuggestionconfigdto)
            {
                super.a(e1, usersuggestionconfigdto);
                ((com.etermax.preguntados.ui.questionsfactory.suggestquestion.f)com.etermax.preguntados.ui.questionsfactory.suggestquestion.e.a(a)).a(usersuggestionconfigdto);
                a.c = usersuggestionconfigdto.getCategories();
                com.etermax.preguntados.ui.questionsfactory.suggestquestion.e.a(a, a.c);
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (UserSuggestionConfigDTO)obj1);
            }

            public UserSuggestionConfigDTO b()
            {
                return a.b.m();
            }

            
            {
                a = e.this;
                super(s);
            }
        }).a(this);
    }

    public com.etermax.preguntados.ui.questionsfactory.suggestquestion.f a()
    {
        return new com.etermax.preguntados.ui.questionsfactory.suggestquestion.f() {

            final e a;

            public void a(UserSuggestionConfigDTO usersuggestionconfigdto)
            {
            }

            public void a(QuestionCategory questioncategory)
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    void c()
    {
        if (c == null)
        {
            d();
            return;
        } else
        {
            a(c);
            return;
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.suggest_question_select_category_fragment, viewgroup, false);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(o.suggest);
        return view;
    }

    static 
    {
        int ai[] = new int[6];
        ai[0] = i.suggest_question_select_category_less_1;
        ai[1] = i.suggest_question_select_category_less_2;
        ai[2] = i.suggest_question_select_category_less_3;
        ai[3] = i.suggest_question_select_category_other_1;
        ai[4] = i.suggest_question_select_category_other_2;
        ai[5] = i.suggest_question_select_category_other_3;
        e = ai;
    }
}
