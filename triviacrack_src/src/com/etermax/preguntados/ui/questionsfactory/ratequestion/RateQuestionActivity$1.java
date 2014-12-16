// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionRatingDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            RateQuestionActivity, a

class b extends a
{

    final QuestionRatingDTO a;
    final com.etermax.preguntados.ui.questionsfactory.ratequestion.a b;
    final RateQuestionActivity c;

    public Object a()
    {
        return b();
    }

    public void a(RateQuestionActivity ratequestionactivity, Exception exception)
    {
        super.a(ratequestionactivity, exception);
        b.c();
    }

    protected void a(RateQuestionActivity ratequestionactivity, Void void1)
    {
        super.a(ratequestionactivity, void1);
        b.b();
    }

    public volatile void a(Object obj, Exception exception)
    {
        a((RateQuestionActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((RateQuestionActivity)obj, (Void)obj1);
    }

    public Void b()
    {
        c.a.a(a);
        return null;
    }

    (RateQuestionActivity ratequestionactivity, String s, QuestionRatingDTO questionratingdto, com.etermax.preguntados.ui.questionsfactory.ratequestion.a a1)
    {
        c = ratequestionactivity;
        a = questionratingdto;
        b = a1;
        super(s);
    }
}
