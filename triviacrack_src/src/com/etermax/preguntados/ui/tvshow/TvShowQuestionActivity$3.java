// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import com.etermax.preguntados.datasource.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.ShowDTO;
import com.etermax.preguntados.datasource.dto.TvShowQuestionDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            TvShowQuestionActivity

class a extends a
{

    final TvShowQuestionActivity a;

    public Object a()
    {
        return a.b.a(a.c.e(), a.b.j().getId());
    }

    protected void a(TvShowQuestionActivity tvshowquestionactivity, TvShowQuestionDTO tvshowquestiondto)
    {
        super.a(tvshowquestionactivity, tvshowquestiondto);
        if (tvshowquestiondto.getId() == a.h())
        {
            com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.a(a);
            return;
        } else
        {
            com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.a(a, tvshowquestiondto);
            return;
        }
    }

    protected void a(TvShowQuestionActivity tvshowquestionactivity, Exception exception)
    {
        b(false);
        if (exception instanceof b)
        {
            com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.a(a, (b)exception);
        } else
        {
            a.f();
        }
        super.a(tvshowquestionactivity, exception);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((TvShowQuestionActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((TvShowQuestionActivity)obj, (TvShowQuestionDTO)obj1);
    }

    (TvShowQuestionActivity tvshowquestionactivity)
    {
        a = tvshowquestionactivity;
        super();
    }
}
