// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.etermax.q;
import com.etermax.tools.c;
import java.util.Locale;

public class CustomFontTextView extends TextView
{

    private int a;
    private boolean b;
    private boolean c;
    private float d;

    public CustomFontTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public CustomFontTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.TextViewFont);
        String s = typedarray.getString(0);
        if (s != null)
        {
            a(context, s);
        }
        c = typedarray.getBoolean(8, false);
        a = typedarray.getInteger(2, 0);
        b = typedarray.getBoolean(1, false);
        setText(getText());
        typedarray.recycle();
        d = getTextSize();
    }

    public void a(int i)
    {
        if (i > 0)
        {
            float f = d;
            setTextSize(0, d);
            Paint paint = new Paint();
            paint.set(getPaint());
            int j = i - getPaddingLeft() - getPaddingRight();
            paint.setTypeface(getTypeface());
            if (paint.measureText(getText().toString()) > (float)j)
            {
                float f1 = 2.0F;
                while (f - f1 > 0.5F) 
                {
                    float f2 = (f + f1) / 2.0F;
                    paint.setTextSize(f2);
                    paint.setTypeface(getTypeface());
                    if (paint.measureText(getText().toString()) < (float)j)
                    {
                        f1 = f2;
                        f2 = f;
                    }
                    f = f2;
                }
                setTextSize(0, f1);
                return;
            }
        }
    }

    public boolean a(Context context, String s)
    {
        setTypeface(com.etermax.tools.c.a(context, s));
        return true;
    }

    protected void onDraw(Canvas canvas)
    {
        if (a == 0)
        {
            super.onDraw(canvas);
            return;
        } else
        {
            canvas.save();
            float f = (float)getHeight() / 2.0F;
            float f1 = (float)getWidth() / 2.0F;
            canvas.rotate(a, f1, f);
            super.onDraw(canvas);
            canvas.restore();
            return;
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (c && i != k)
        {
            a(i);
        }
    }

    public void setAngle(int i)
    {
        a = i;
    }

    public void setText(CharSequence charsequence, android.widget.TextView.BufferType buffertype)
    {
        if (b)
        {
            charsequence = charsequence.toString().toUpperCase(Locale.getDefault());
        }
        super.setText(charsequence, buffertype);
        if (c)
        {
            a(getWidth());
        }
    }

    public void setTextColor(int i)
    {
        super.setTextColor(i);
    }
}
