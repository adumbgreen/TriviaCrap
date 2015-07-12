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
import com.etermax.i;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            j

class a
    implements android.widget.View.OnEditorActionListener
{

    final View a;
    final j b;

    public boolean onEditorAction(TextView textview, int k, KeyEvent keyevent)
    {
        if (k == 5 || k == 0 && keyevent.getAction() == 0)
        {
            ScrollView scrollview = (ScrollView)a.findViewById(i.statistics_question_edit_scroll);
            View view = a.findViewById(b.getResources().getIdentifier("statistics_question_answer_container_1", "id", j.a(b).getPackageName()));
            View view1 = a.findViewById(b.getResources().getIdentifier("statistics_question_edit_answer_1", "id", j.b(b).getPackageName()));
            scrollview.smoothScrollTo(0, view.getTop());
            view1.requestFocus();
        }
        return true;
    }

    (j j1, View view)
    {
        b = j1;
        a = view;
        super();
    }
}
