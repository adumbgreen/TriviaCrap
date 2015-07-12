// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widgetv2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
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
    private int e;
    private boolean f;
    private boolean g;
    private final int h;
    private final int i;

    public CustomFontButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        i = getPaddingBottom();
        h = getPaddingTop();
        a(context, attributeset);
    }

    public CustomFontButton(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        i = getPaddingBottom();
        h = getPaddingTop();
        a(context, attributeset);
    }

    private void a()
    {
label0:
        {
            if (a)
            {
                if (!isPressed())
                {
                    break label0;
                }
                setPadding(getPaddingLeft(), (h + d) - e, getPaddingRight(), i + e);
            }
            return;
        }
        setPadding(getPaddingLeft(), h, getPaddingRight(), i + d);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.TextViewFont);
        String s = typedarray.getString(0);
        a = typedarray.getBoolean(3, true);
        d = typedarray.getDimensionPixelSize(4, 0);
        e = typedarray.getDimensionPixelSize(5, 0);
        b = typedarray.getResourceId(6, 0);
        c = typedarray.getResourceId(7, 0);
        if (b != 0)
        {
            a = false;
            setBackgroundResource(b);
        }
        if (s != null)
        {
            a(context, s);
        }
        f = typedarray.getBoolean(1, false);
        g = typedarray.getBoolean(8, false);
        setText(getText());
        typedarray.recycle();
        a();
    }

    public void a(int j)
    {
        if (j > 0)
        {
            float f1 = 320F;
            Paint paint = new Paint();
            paint.set(getPaint());
            int k = j - getPaddingLeft() - getPaddingRight();
            paint.setTypeface(getTypeface());
            if (paint.measureText(getText().toString()) > (float)k)
            {
                float f2 = 2.0F;
                while (f1 - f2 > 0.5F) 
                {
                    float f3 = (f1 + f2) / 2.0F;
                    paint.setTextSize(f3);
                    paint.setTypeface(getTypeface());
                    if (paint.measureText(getText().toString()) < (float)k)
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

    public boolean a(Context context, String s)
    {
        setTypeface(com.etermax.tools.c.a(context, s));
        return true;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        a();
    }

    protected void onSizeChanged(int j, int k, int l, int i1)
    {
        super.onSizeChanged(j, k, l, i1);
        if (g && j != l)
        {
            a(j);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = super.onTouchEvent(motionevent);
        if (c != 0 && b != 0)
        {
            if (motionevent.getAction() == 0)
            {
                setBackgroundResource(c);
            } else
            if (motionevent.getAction() == 1 || motionevent.getAction() == 3 || motionevent.getAction() == 4)
            {
                setBackgroundResource(b);
                return flag;
            }
        }
        return flag;
    }

    public void setText(CharSequence charsequence, android.widget.TextView.BufferType buffertype)
    {
        if (f)
        {
            charsequence = charsequence.toString().toUpperCase(Locale.getDefault());
        }
        super.setText(charsequence, buffertype);
    }
}
