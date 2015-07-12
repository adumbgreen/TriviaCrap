// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.view.View;
import com.etermax.i;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.ui.questionsfactory.widget.SuggestQuestionEditText;
import com.etermax.preguntados.ui.questionsfactory.widget.a.c;
import com.etermax.preguntados.ui.questionsfactory.widget.a.g;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a

class a
    implements c
{

    final a a;

    public void a(g g1)
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
        a((g)obj);
    }

    nEditText(a a1)
    {
        a = a1;
        super();
    }
}
