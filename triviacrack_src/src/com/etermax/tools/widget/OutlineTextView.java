// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.etermax.q;

// Referenced classes of package com.etermax.tools.widget:
//            CustomFontTextView

public class OutlineTextView extends CustomFontTextView
{

    private TextPaint a;
    private TextPaint b;
    private int c;
    private int d;
    private int e;
    private float f;
    private float g;
    private boolean h;
    private float i;
    private float j;
    private float k;
    private int l;

    public OutlineTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = 15;
        d = 0xff000000;
        e = 0xff000000;
        f = 1.0F;
        g = 0.0F;
        h = true;
        i = 0.0F;
        j = 0.0F;
        k = 0.0F;
        l = 0xff000000;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.OutlineTextView);
        c = typedarray.getDimensionPixelSize(1, 3);
        d = typedarray.getColor(0, -1);
        e = getTextColor(context, typedarray, e);
        a();
    }

    public OutlineTextView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = 15;
        d = 0xff000000;
        e = 0xff000000;
        f = 1.0F;
        g = 0.0F;
        h = true;
        i = 0.0F;
        j = 0.0F;
        k = 0.0F;
        l = 0xff000000;
        a();
    }

    private void a()
    {
        a = new TextPaint();
        a.setAntiAlias(true);
        a.setTextSize(getTextSize());
        a.setColor(getTextColors().getDefaultColor());
        a.setStyle(android.graphics.Paint.Style.FILL);
        a.setTypeface(getTypeface());
        b = new TextPaint();
        b.setAntiAlias(true);
        b.setTextSize(getTextSize());
        b.setColor(d);
        b.setStyle(android.graphics.Paint.Style.STROKE);
        b.setTypeface(getTypeface());
        b.setStrokeWidth(c);
        b.setShadowLayer(k, i, j, l);
    }

    public void a(int i1, int j1)
    {
        c = i1;
        d = j1;
        requestLayout();
        invalidate();
        a();
    }

    protected void onDraw(Canvas canvas)
    {
        (new StaticLayout(getText(), b, getWidth(), android.text.Layout.Alignment.ALIGN_CENTER, f, g, h)).draw(canvas);
        (new StaticLayout(getText(), a, getWidth(), android.text.Layout.Alignment.ALIGN_CENTER, f, g, h)).draw(canvas);
    }

    public void setShadowLayer(float f1, float f2, float f3, int i1)
    {
        k = f1;
        i = f2;
        j = f3;
        l = i1;
        requestLayout();
        invalidate();
        a();
    }

    public void setText(String s)
    {
        super.setText(s);
        requestLayout();
        invalidate();
    }

    public void setTextColor(int i1)
    {
        super.setTextColor(i1);
        e = i1;
        invalidate();
        a();
    }

    public void setTextSize(float f1)
    {
        super.setTextSize(f1);
        requestLayout();
        invalidate();
        a();
    }

    public void setTypeface(Typeface typeface)
    {
        super.setTypeface(typeface);
        requestLayout();
        invalidate();
        a();
    }

    public void setTypeface(Typeface typeface, int i1)
    {
        super.setTypeface(typeface, i1);
        requestLayout();
        invalidate();
        a();
    }
}
