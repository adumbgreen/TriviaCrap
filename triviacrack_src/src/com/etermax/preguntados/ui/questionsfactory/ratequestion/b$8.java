// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.view.View;
import com.etermax.i;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.g.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            b

class a
    implements android.view..OnClickListener
{

    final int a;
    final b b;

    public void onClick(View view)
    {
        b.g = true;
        com.etermax.preguntados.ui.questionsfactory.ratequestion.b.g(b);
        int j;
        int k;
        if (a == b.h.getCorrectAnswer())
        {
            j = i.answer_correct_textview;
            k = a.c;
        } else
        {
            j = i.answer_incorrect_textview;
            k = a.d;
            com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(b, a);
        }
        com.etermax.preguntados.ui.questionsfactory.ratequestion.b.b(b, b.h.getCorrectAnswer());
        b.b.a(k);
        com.etermax.preguntados.ui.questionsfactory.ratequestion.b.c(b, j);
    }

    (b b1, int j)
    {
        b = b1;
        a = j;
        super();
    }
}
