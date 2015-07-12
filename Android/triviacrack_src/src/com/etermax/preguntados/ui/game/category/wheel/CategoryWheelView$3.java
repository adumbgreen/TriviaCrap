// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.view.animation.Animation;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            CategoryWheelView, b

class a
    implements android.view.animation.istener
{

    final CategoryWheelView a;

    public void onAnimationEnd(Animation animation)
    {
        if (CategoryWheelView.b(a) != null)
        {
            CategoryWheelView.b(a).a(CategoryWheelView.d(a));
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    (CategoryWheelView categorywheelview)
    {
        a = categorywheelview;
        super();
    }
}
