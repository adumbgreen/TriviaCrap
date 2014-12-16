// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import com.etermax.q;

public class CustomTriangle extends View
{

    Paint a;
    Path b;
    Point c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    public CustomTriangle(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        h = 0;
        i = 1;
        j = 2;
        k = 3;
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        a = new Paint();
        c = new Point();
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.CustomTriangle);
        e = typedarray.getColor(1, 0);
        d = typedarray.getInt(0, 0);
        typedarray.recycle();
    }

    public Path getEquilateralTriangle()
    {
        Point point;
        Point point1;
        Path path;
        if (d == h)
        {
            c.x = 0;
            c.y = f;
            point1 = new Point(c.x + g, c.y);
            point = new Point(c.x + g / 2, c.y - f);
        } else
        if (d == i)
        {
            c.x = 0;
            c.y = 0;
            point1 = new Point(c.x, c.y + f);
            point = new Point(c.x + g, c.y + f / 2);
        } else
        if (d == j)
        {
            c.x = 0;
            c.y = 0;
            point1 = new Point(c.x + g, c.y);
            point = new Point(c.x + g / 2, c.y + f);
        } else
        if (d == k)
        {
            c.x = g;
            c.y = 0;
            point1 = new Point(c.x, c.y + f);
            point = new Point(c.x - g, c.y + f / 2);
        } else
        {
            point = null;
            point1 = null;
        }
        path = new Path();
        path.moveTo(c.x, c.y);
        path.lineTo(point1.x, point1.y);
        path.lineTo(point.x, point.y);
        return path;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        a.setStyle(android.graphics.Paint.Style.FILL);
        a.setColor(e);
        b = getEquilateralTriangle();
        canvas.drawPath(b, a);
    }

    protected void onSizeChanged(int l, int i1, int j1, int k1)
    {
        f = i1;
        g = l;
    }
}
