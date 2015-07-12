// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.FactoryQuestionDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            j, k

class a extends a
{

    final FactoryQuestionDTO a;
    final j b;

    public Object a()
    {
        return b();
    }

    public void a(j j1, Void void1)
    {
        super.a(j1, void1);
        ((k)j.g(b)).n();
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((j)obj, (Void)obj1);
    }

    public Void b()
    {
        b.d.a(a);
        return null;
    }

    (j j1, String s, FactoryQuestionDTO factoryquestiondto)
    {
        b = j1;
        a = factoryquestiondto;
        super(s);
    }
}
