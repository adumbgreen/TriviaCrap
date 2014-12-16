// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.widget.Button;
import com.etermax.q;
import com.etermax.tools.c;
import java.util.Locale;

public class CustomFontButton extends Button
{

    private boolean a;
    private int b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;

    public CustomFontButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public CustomFontButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context, attributeset);
    }

    private int a(int i, Context context)
    {
        return (int)TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.TextViewFont);
        String s = typedarray.getString(0);
        a = typedarray.getBoolean(3, true);
        c = typedarray.getResourceId(6, 0);
        d = typedarray.getResourceId(7, 0);
        if (c != 0)
        {
            a = false;
            setBackgroundResource(c);
        }
        if (a)
        {
            b = a(3, getContext());
            setPadding(getPaddingLeft(), 0, getPaddingRight(), b);
        }
        if (s != null)
        {
            a(context, s);
        }
        e = typedarray.getBoolean(1, false);
        f = typedarray.getBoolean(8, false);
        setText(getText());
        typedarray.recycle();
    }

    public void a(int i)
    {
        if (i > 0)
        {
            float f1 = 320F;
            Paint paint = new Paint();
            paint.set(getPaint());
            int j = i - getPaddingLeft() - getPaddingRight();
            paint.setTypeface(getTypeface());
            if (paint.measureText(getText().toString()) > (float)j)
            {
                float f2 = 2.0F;
                while (f1 - f2 > 0.5F) 
                {
                    float f3 = (f1 + f2) / 2.0F;
                    paint.setTextSize(f3);
                    paint.setTypeface(getTypeface());
                    if (paint.measureText(getText().toString()) < (float)j)
                    {
                        f2 = f3;
                        f3 = f1;
                    }
                    f1 = f3;
                }
                setTextSize(0, f2);
                return;
            }
        }
    }

    public void a(int i, int j)
    {
        c = i;
        d = j;
        setBackgroundResource(i);
    }

    public boolean a(Context context, String s)
    {
        setTypeface(com.etermax.tools.c.a(context, s));
        return true;
    }

    protected void drawableStateChanged()
    {
label0:
        {
            super.drawableStateChanged();
            if (a)
            {
                if (!isPressed())
                {
                    break label0;
                }
                setPadding(getPaddingLeft(), b, getPaddingRight(), 0);
            }
            return;
        }
        setPadding(getPaddingLeft(), 0, getPaddingRight(), b);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (f && i != k)
        {
            a(i);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = super.onTouchEvent(motionevent);
        if (d != 0 && c != 0)
        {
            if (motionevent.getAction() == 0)
            {
                setBackgroundResource(d);
            } else
            if (motionevent.getAction() == 1 || motionevent.getAction() == 3 || motionevent.getAction() == 4)
            {
                setBackgroundResource(c);
                return flag;
            }
        }
        return flag;
    }

    public void setText(CharSequence charsequence, android.widget.TextView.BufferType buffertype)
    {
        if (e)
        {
            charsequence = charsequence.toString().toUpperCase(Locale.getDefault());
        }
        super.setText(charsequence, buffertype);
    }
}
