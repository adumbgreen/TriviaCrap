// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widgetv2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.etermax.q;

public class CustomLinearButton extends LinearLayout
{

    private boolean a;
    private Drawable b;
    private Drawable c;
    private boolean d;
    private int e;
    private int f;
    private final int g = getPaddingTop();
    private final int h = getPaddingBottom();

    public CustomLinearButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    private void a()
    {
label0:
        {
            if (a)
            {
                if (!isPressed() && !isSelected())
                {
                    break label0;
                }
                setPadding(getPaddingLeft(), (g + e) - f, getPaddingRight(), h + f);
            }
            return;
        }
        setPadding(getPaddingLeft(), g, getPaddingRight(), h + e);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.TextViewFont);
        a = typedarray.getBoolean(3, true);
        b = typedarray.getDrawable(6);
        c = typedarray.getDrawable(7);
        d = typedarray.getBoolean(9, false);
        e = typedarray.getDimensionPixelSize(4, 0);
        f = typedarray.getDimensionPixelSize(5, 0);
        if (b != null)
        {
            a = false;
            setBackgroundDrawable(b);
        }
        typedarray.recycle();
        a();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        a();
    }

    protected void onMeasure(int i, int j)
    {
        if (d)
        {
            int k = android.view.View.MeasureSpec.getSize(i);
            int l = android.view.View.MeasureSpec.getSize(j);
            if (k <= l || l <= 0)
            {
                j = i;
            }
            super.onMeasure(j, j);
            return;
        } else
        {
            super.onMeasure(i, j);
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = super.onTouchEvent(motionevent);
        if (c != null && b != null)
        {
            if (motionevent.getAction() == 0)
            {
                setBackgroundDrawable(c);
            } else
            if (motionevent.getAction() == 1 || motionevent.getAction() == 3 || motionevent.getAction() == 4)
            {
                setBackgroundDrawable(b);
                return flag;
            }
        }
        return flag;
    }

    public void setIs3D(boolean flag)
    {
        a = flag;
    }
}
