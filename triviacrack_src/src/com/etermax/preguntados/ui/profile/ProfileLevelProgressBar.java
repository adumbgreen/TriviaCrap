// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ProfileLevelProgressBar extends RelativeLayout
{

    View a;
    ProgressBar b;
    TextView c;
    private long d;

    public ProfileLevelProgressBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = 1000L;
    }

    public ProfileLevelProgressBar(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = 1000L;
    }

    public void a(int i, int j)
    {
        float f = 1000F / (float)j;
        b.setMax(1000);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 1.0F, 1, 0.0F, 1, 1.0F, i, f) {

            final int a;
            final float b;
            final ProfileLevelProgressBar c;

            protected void applyTransformation(float f1, Transformation transformation)
            {
                super.applyTransformation(f1, transformation);
                float f2 = f1 * (float)a * b;
                String s = String.valueOf((int)(100F * (f2 / 1000F)));
                c.c.setText(s);
                c.b.setProgress((int)f2);
            }

            
            {
                c = ProfileLevelProgressBar.this;
                a = i1;
                b = f4;
                super(i, f, j, f1, k, f2, l, f3);
            }
        };
        translateanimation.setDuration(d);
        translateanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        a.startAnimation(translateanimation);
    }

    public void setDuration(long l)
    {
        d = l;
    }
}
