// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widgetv2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageButton;
import com.etermax.q;

public class CustomImageButton extends ImageButton
{

    private int a;
    private int b;
    private final int c;
    private final int d;

    public CustomImageButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = getPaddingBottom();
        c = getPaddingTop();
        a(context, attributeset);
    }

    public CustomImageButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = getPaddingBottom();
        c = getPaddingTop();
        a(context, attributeset);
    }

    private void a()
    {
        if (isPressed())
        {
            setPadding(getPaddingLeft(), (c + a) - b, getPaddingRight(), d + b);
            return;
        } else
        {
            setPadding(getPaddingLeft(), c, getPaddingRight(), d + a);
            return;
        }
    }

    void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.TextViewFont);
        a = typedarray.getDimensionPixelSize(4, 0);
        b = typedarray.getDimensionPixelSize(5, 0);
        typedarray.recycle();
        a();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        a();
    }
}
