// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.etermax.q;

public class CustomLinearButton extends LinearLayout
{

    protected Drawable a;
    protected Drawable b;
    private boolean c;
    private int d;
    private boolean e;

    public CustomLinearButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.TextViewFont);
        c = typedarray.getBoolean(3, true);
        a = typedarray.getDrawable(6);
        b = typedarray.getDrawable(7);
        e = typedarray.getBoolean(9, false);
        if (a != null)
        {
            c = false;
            setBackgroundDrawable(a);
        }
        if (c)
        {
            d = a(3, getContext());
            setPadding(getPaddingLeft(), 0, getPaddingRight(), d);
        }
        typedarray.recycle();
    }

    public int a(int i, Context context)
    {
        return (int)TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    protected void drawableStateChanged()
    {
label0:
        {
            super.drawableStateChanged();
            if (c)
            {
                if (!isPressed() && !isSelected())
                {
                    break label0;
                }
                setPadding(getPaddingLeft(), d, getPaddingRight(), 0);
            }
            return;
        }
        setPadding(getPaddingLeft(), 0, getPaddingRight(), d);
    }

    protected void onMeasure(int i, int j)
    {
        if (e)
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
        if (b != null && a != null)
        {
            if (motionevent.getAction() == 0)
            {
                setBackgroundDrawable(b);
            } else
            if (motionevent.getAction() == 1 || motionevent.getAction() == 3 || motionevent.getAction() == 4)
            {
                setBackgroundDrawable(a);
                return flag;
            }
        }
        return flag;
    }

    public void setIs3D(boolean flag)
    {
        c = flag;
    }
}
