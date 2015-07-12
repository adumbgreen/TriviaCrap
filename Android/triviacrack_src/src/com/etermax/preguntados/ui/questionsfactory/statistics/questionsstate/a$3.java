// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.tools.i.a;
import java.util.Map;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            a

class a extends a
{

    final QuestionCategory a;
    final com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a b;

    public Object a()
    {
        return b();
    }

    public void a(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a a1, Map map)
    {
        super.a(a1, map);
        com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a(a1, map);
        com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.b(a1, a);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a)obj, (Map)obj1);
    }

    public Map b()
    {
        return b.a.a(b.a(), b.b, com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a(b, a), a);
    }

    (com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a a1, QuestionCategory questioncategory)
    {
        b = a1;
        a = questioncategory;
        super();
    }
}
