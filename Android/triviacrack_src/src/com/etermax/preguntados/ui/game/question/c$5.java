// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.view.animation.Animation;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            c

class a
    implements android.view.animation.ation.AnimationListener
{

    final Integer a;
    final c b;

    public void onAnimationEnd(Animation animation)
    {
        c.a(b, b.r, a);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        c.c(b);
    }

    tener(c c1, Integer integer)
    {
        b = c1;
        a = integer;
        super();
    }
}
