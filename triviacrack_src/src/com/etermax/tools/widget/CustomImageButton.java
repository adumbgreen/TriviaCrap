// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageButton;

public class CustomImageButton extends ImageButton
{

    public CustomImageButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public CustomImageButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    public int a(int i, Context context)
    {
        return (int)TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    void a()
    {
        int i = a(6, getContext());
        setPadding(getPaddingLeft(), 0, getPaddingRight(), i);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        int i = a(3, getContext());
        int j = a(6, getContext());
        if (isPressed())
        {
            setPadding(getPaddingLeft(), i, getPaddingRight(), 0);
            return;
        } else
        {
            setPadding(getPaddingLeft(), 0, getPaddingRight(), j);
            return;
        }
    }
}
