// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.support.v4.app.FragmentActivity;
import com.etermax.preguntados.datasource.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.tools.i.a;
import com.etermax.tools.widget.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            b

class a extends a
{

    final com.etermax.preguntados.ui.questionsfactory.ratequestion.b a;

    public Object a()
    {
        return b();
    }

    protected void a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b b1, QuestionDTO questiondto)
    {
        super.a(b1, questiondto);
        a.h = questiondto;
        com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(a, a.h);
    }

    protected void a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b b1, Exception exception)
    {
        b b2 = (b)exception;
        if (b2.c() == 416)
        {
            c c1 = com.etermax.preguntados.ui.questionsfactory.widget.a.a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(b1));
            c1.setTargetFragment(b1, 0);
            c1.show(b1.getActivity().getSupportFragmentManager(), "");
            com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(a, true);
        } else
        {
            super.a(b1, b2);
        }
        com.etermax.preguntados.ui.questionsfactory.ratequestion.b.b(a);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((com.etermax.preguntados.ui.questionsfactory.ratequestion.b)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.preguntados.ui.questionsfactory.ratequestion.b)obj, (QuestionDTO)obj1);
    }

    public QuestionDTO b()
    {
        return a.a.a(a.i, a.j);
    }

    (com.etermax.preguntados.ui.questionsfactory.ratequestion.b b1)
    {
        a = b1;
        super();
    }
}
