// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.view.animation.Interpolator;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            CategoryWheelView

class a
    implements Interpolator
{

    final CategoryWheelView a;

    public float getInterpolation(float f)
    {
        return f * f;
    }

    (CategoryWheelView categorywheelview)
    {
        a = categorywheelview;
        super();
    }
}
