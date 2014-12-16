// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.view.animation.Animation;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            k, l

class c
    implements android.view.animation.ation.AnimationListener
{

    final int a;
    final int b;
    final GameDTO c;
    final k d;

    public void onAnimationEnd(Animation animation)
    {
        if (a == -1 + b)
        {
            ((l)k.a(d)).a(c);
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    O(k k1, int i, int j, GameDTO gamedto)
    {
        d = k1;
        a = i;
        b = j;
        c = gamedto;
        super();
    }
}
