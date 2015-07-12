// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;


// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            TvShowQuestionActivity

class a
    implements Runnable
{

    final TvShowQuestionActivity a;

    public void run()
    {
        if (!a.isFinishing())
        {
            TvShowQuestionActivity.c(a);
        }
    }

    (TvShowQuestionActivity tvshowquestionactivity)
    {
        a = tvshowquestionactivity;
        super();
    }
}
