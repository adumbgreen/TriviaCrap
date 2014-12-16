// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.view.animation.Interpolator;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            CategoryWheelView, b

class a
    implements Interpolator
{

    final CategoryWheelView a;

    public float getInterpolation(float f)
    {
        if (f < 0.4F)
        {
            CategoryWheelView.b(a).a(CategoryWheelView.a(a));
        }
        return 1.0F - (1.0F - f) * (1.0F - f) * (1.0F - f);
    }

    (CategoryWheelView categorywheelview)
    {
        a = categorywheelview;
        super();
    }
}
