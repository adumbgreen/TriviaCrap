// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.view.animation.Animation;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            CategoryWheelView

class a
    implements android.view.animation.Animation.AnimationListener
{

    final CategoryWheelView a;
    private int b;
    private boolean c;

    public a(CategoryWheelView categorywheelview, int i, boolean flag)
    {
        a = categorywheelview;
        super();
        b = i;
        c = flag;
    }

    public void onAnimationEnd(Animation animation)
    {
        CategoryWheelView.a(a, b, c);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
