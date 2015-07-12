// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.background;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.etermax.q;

public class BackgroundView extends View
{

    public BackgroundView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public BackgroundView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context, attributeset);
    }

    private void a(Context context, GradientDrawable gradientdrawable)
    {
        gradientdrawable.setGradientRadius((int)(0.69999999999999996D * (double)((WindowManager)context.getSystemService("window")).getDefaultDisplay().getHeight()));
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.BackgroundView);
        Drawable drawable = typedarray.getDrawable(1);
        Drawable drawable1 = typedarray.getDrawable(0);
        boolean flag = typedarray.getBoolean(2, false);
        typedarray.recycle();
        if (drawable != null && (drawable instanceof GradientDrawable) && flag)
        {
            a(context, (GradientDrawable)drawable);
        }
        if (drawable1 != null && (drawable1 instanceof BitmapDrawable))
        {
            ((BitmapDrawable)drawable1).setTileModeXY(android.graphics.Shader.TileMode.REPEAT, android.graphics.Shader.TileMode.REPEAT);
        }
        if (drawable != null && drawable1 != null)
        {
            setBackgroundDrawable(new LayerDrawable(new Drawable[] {
                drawable, drawable1
            }));
        } else
        {
            if (drawable != null)
            {
                setBackgroundDrawable(drawable);
                return;
            }
            if (drawable1 != null)
            {
                setBackgroundDrawable(drawable1);
                return;
            }
        }
    }
}
