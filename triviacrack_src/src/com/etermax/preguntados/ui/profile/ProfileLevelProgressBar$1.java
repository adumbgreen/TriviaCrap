// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.ProgressBar;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileLevelProgressBar

class b extends TranslateAnimation
{

    final int a;
    final float b;
    final ProfileLevelProgressBar c;

    protected void applyTransformation(float f, Transformation transformation)
    {
        super.applyTransformation(f, transformation);
        float f1 = f * (float)a * b;
        String s = String.valueOf((int)(100F * (f1 / 1000F)));
        c.c.setText(s);
        c.b.setProgress((int)f1);
    }

    (ProfileLevelProgressBar profilelevelprogressbar, int i, float f, int j, float f1, int k, float f2, 
            int l, float f3, int i1, float f4)
    {
        c = profilelevelprogressbar;
        a = i1;
        b = f4;
        super(i, f, j, f1, k, f2, l, f3);
    }
}
