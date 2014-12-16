// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.SuggestedQuestionDTO;
import com.etermax.preguntados.ui.questionsfactory.e;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a, b

class a extends a
{

    final SuggestedQuestionDTO a;
    final com.etermax.preguntados.ui.questionsfactory.suggestquestion.a b;

    public Object a()
    {
        return b();
    }

    protected void a(com.etermax.preguntados.ui.questionsfactory.suggestquestion.a a1, Void void1)
    {
        super.a(a1, void1);
        e.a(com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.e(a1)).a(b.f);
        com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.f(b);
        ((b)com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.g(a1)).b();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.preguntados.ui.questionsfactory.suggestquestion.a)obj, (Void)obj1);
    }

    public Void b()
    {
        b.c.a(a);
        return null;
    }

    (com.etermax.preguntados.ui.questionsfactory.suggestquestion.a a1, String s, SuggestedQuestionDTO suggestedquestiondto)
    {
        b = a1;
        a = suggestedquestiondto;
        super(s);
    }
}
