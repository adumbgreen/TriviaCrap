// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            k

class a
    implements android.view.animation.ation.AnimationListener
{

    final View a;
    final k b;

    public void onAnimationEnd(Animation animation)
    {
        b.a(a, true);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    tener(k k1, View view)
    {
        b = k1;
        a = view;
        super();
    }
}
