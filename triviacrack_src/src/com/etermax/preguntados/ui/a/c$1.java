// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.a;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package com.etermax.preguntados.ui.a:
//            c

final class <init> extends Animation
{

    final View a;
    final int b;

    protected void applyTransformation(float f, Transformation transformation)
    {
        android.view.Group.LayoutParams layoutparams = a.getLayoutParams();
        int i;
        if (f == 1.0F)
        {
            i = -2;
        } else
        {
            i = (int)(f * (float)b);
        }
        layoutparams.height = i;
        a.requestLayout();
    }

    public boolean willChangeBounds()
    {
        return true;
    }

    tion(View view, int i)
    {
        a = view;
        b = i;
        super();
    }
}
