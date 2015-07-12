// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            TvShowQuestionActivity

class b extends a
{

    final int a;
    final AnswerDTO b;
    final TvShowQuestionActivity c;

    public Object a()
    {
        c.b.a(c.c.e(), a, b);
        return null;
    }

    protected void a(TvShowQuestionActivity tvshowquestionactivity, Exception exception)
    {
        b(false);
        super.a(tvshowquestionactivity, exception);
        TvShowQuestionActivity.b(tvshowquestionactivity);
    }

    protected void a(TvShowQuestionActivity tvshowquestionactivity, Void void1)
    {
        super.a(tvshowquestionactivity, void1);
        c.b(b.getId());
        TvShowQuestionActivity.b(tvshowquestionactivity);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((TvShowQuestionActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((TvShowQuestionActivity)obj, (Void)obj1);
    }

    (TvShowQuestionActivity tvshowquestionactivity, String s, int i, AnswerDTO answerdto)
    {
        c = tvshowquestionactivity;
        a = i;
        b = answerdto;
        super(s);
    }
}
