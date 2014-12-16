// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.view.animation.RotateAnimation;
import android.view.animation.Transformation;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            CategoryWheelView, b

class a extends RotateAnimation
{

    final float a;
    final CategoryWheelView b;

    protected void applyTransformation(float f, Transformation transformation)
    {
        float f1 = 0.0F + f * (a - 0.0F);
        if (Math.abs((25.71428F + f1) % 51.42857F) < 3F && Math.abs(f1 - CategoryWheelView.c(b)) > 46.42857F)
        {
            CategoryWheelView.b(b).a(CategoryWheelView.a(b));
            CategoryWheelView.a(b, f1);
        }
        super.applyTransformation(f, transformation);
    }

    (CategoryWheelView categorywheelview, float f, float f1, int i, float f2, int j, float f3, 
            float f4)
    {
        b = categorywheelview;
        a = f4;
        super(f, f1, i, f2, j, f3);
    }
}
