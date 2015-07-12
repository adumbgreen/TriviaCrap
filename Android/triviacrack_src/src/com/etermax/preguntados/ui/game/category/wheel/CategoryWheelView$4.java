// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.view.animation.LinearInterpolator;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            CategoryWheelView, b

class a extends LinearInterpolator
{

    final CategoryWheelView a;

    public float getInterpolation(float f)
    {
        CategoryWheelView.b(a).a(CategoryWheelView.a(a));
        return f;
    }

    (CategoryWheelView categorywheelview)
    {
        a = categorywheelview;
        super();
    }
}
