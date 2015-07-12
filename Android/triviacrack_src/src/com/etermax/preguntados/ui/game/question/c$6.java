// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.view.animation.Animation;
import com.etermax.preguntados.datasource.dto.QuestionDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            c, d

class b
    implements android.view.animation.ation.AnimationListener
{

    final QuestionDTO a;
    final Integer b;
    final c c;

    public void onAnimationEnd(Animation animation)
    {
        ((d)com.etermax.preguntados.ui.game.question.c.d(c)).a(a, b, c.s, c.u);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    onDTO(c c1, QuestionDTO questiondto, Integer integer)
    {
        c = c1;
        a = questiondto;
        b = integer;
        super();
    }
}
