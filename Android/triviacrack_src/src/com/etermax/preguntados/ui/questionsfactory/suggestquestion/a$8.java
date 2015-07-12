// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.content.Context;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.etermax.a.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a

class c
    implements android.widget.View.OnEditorActionListener
{

    final int a;
    final View b;
    final ScrollView c;
    final a d;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
label0:
        {
            if (i == 5)
            {
                if (a != 4)
                {
                    break label0;
                }
                com.etermax.a.b.b(com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.a(d));
            }
            return false;
        }
        b.findViewById(d.getResources().getIdentifier((new StringBuilder()).append("statistics_question_edit_answer_").append(1 + a).toString(), "id", com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.b(d).getPackageName())).requestFocus();
        c.smoothScrollTo(0, b.findViewById(d.getResources().getIdentifier((new StringBuilder()).append("statistics_question_answer_container_").append(1 + a).toString(), "id", com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.c(d).getPackageName())).getTop());
        return false;
    }

    (a a1, int i, View view, ScrollView scrollview)
    {
        d = a1;
        a = i;
        b = view;
        c = scrollview;
        super();
    }
}
