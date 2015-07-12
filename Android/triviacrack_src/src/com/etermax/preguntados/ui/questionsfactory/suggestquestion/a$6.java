// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.view.View;
import android.widget.ScrollView;
import com.etermax.i;
import com.etermax.preguntados.ui.questionsfactory.widget.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a

class b
    implements b
{

    final View a;
    final ScrollView b;
    final a c;

    public void a()
    {
        a.findViewById(i.statistics_question_edit_answer_1).requestFocus();
        b.smoothScrollTo(0, a.findViewById(i.statistics_question_answer_container_1).getTop());
    }

    (a a1, View view, ScrollView scrollview)
    {
        c = a1;
        a = view;
        b = scrollview;
        super();
    }
}
