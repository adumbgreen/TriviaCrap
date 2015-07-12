// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.support.v4.app.FragmentManager;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            c, TvShowQuestionActivity, g

class a
    implements c
{

    final TvShowQuestionActivity a;

    public void a()
    {
        android.support.v4.app.Fragment fragment = a.getSupportFragmentManager().findFragmentByTag("fragment_participation");
        TvShowQuestionActivity.a(a, fragment);
        g g1 = (g)a.getSupportFragmentManager().findFragmentByTag("fragment_tv_question");
        if (g1 != null)
        {
            g1.e();
        }
        long l = System.currentTimeMillis() - a.d;
        long l1;
        if (l > (long)(1000 * a.e))
        {
            l1 = 0L;
        } else
        {
            l1 = (long)(1000 * a.e) - l;
        }
        a.a(l1);
    }

    (TvShowQuestionActivity tvshowquestionactivity)
    {
        a = tvshowquestionactivity;
        super();
    }
}
