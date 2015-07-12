// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.content.Context;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.etermax.a.b;
import com.etermax.i;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            j

class b
    implements android.widget.View.OnEditorActionListener
{

    final int a;
    final View b;
    final j c;

    public boolean onEditorAction(TextView textview, int k, KeyEvent keyevent)
    {
        if (k == 5 || k == 0 && keyevent.getAction() == 0)
        {
            if (a != c.a.getAnswers().size())
            {
                ScrollView scrollview = (ScrollView)b.findViewById(i.statistics_question_edit_scroll);
                View view = b.findViewById(c.getResources().getIdentifier((new StringBuilder()).append("statistics_question_answer_container_").append(1 + a).toString(), "id", j.c(c).getPackageName()));
                View view1 = b.findViewById(c.getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(1 + a).toString(), "id", j.d(c).getPackageName()));
                scrollview.smoothScrollTo(0, view.getTop());
                view1.requestFocus();
            } else
            {
                com.etermax.a.b.b(j.e(c));
            }
        }
        return true;
    }

    (j j1, int k, View view)
    {
        c = j1;
        a = k;
        b = view;
        super();
    }
}
