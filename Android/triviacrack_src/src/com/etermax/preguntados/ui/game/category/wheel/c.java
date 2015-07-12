// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import com.etermax.a.a;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            CategoryWheelView

class c
    implements android.view.animation.Animation.AnimationListener
{

    final CategoryWheelView a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    public c(CategoryWheelView categorywheelview, int i, boolean flag, int j)
    {
        a = categorywheelview;
        super();
        d = i;
        c = 250 / j;
        e = flag;
    }

    public void onAnimationEnd(Animation animation)
    {
        if (CategoryWheelView.e(a) != -1)
        {
            com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView.a(a, CategoryWheelView.e(a), d, e);
            return;
        } else
        {
            com.etermax.a.a.c("CategoryWheelView", "Wheel TimeOut!");
            com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView.a(a, 0, d, e);
            return;
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
        b = 1 + b;
        if (CategoryWheelView.e(a) != -1 && b >= c)
        {
            CategoryWheelView.f(a).cancel();
        }
    }

    public void onAnimationStart(Animation animation)
    {
        b = 0;
    }
}
