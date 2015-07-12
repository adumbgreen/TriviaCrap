// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import com.etermax.q;
import com.etermax.tools.c;
import java.util.Locale;

public class CustomFontCheckedTextView extends CheckedTextView
{

    private int a;
    private boolean b;
    private boolean c;

    public CustomFontCheckedTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public CustomFontCheckedTextView(Context context, AttributeSet attributeset, int i)
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
    }

    public void setTextColor(int i)
    {
        super.setTextColor(i);
    }
}
