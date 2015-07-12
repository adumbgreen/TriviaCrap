// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ImageView;

public class HollowView extends ImageView
{

    int a;
    float b;
    int c;
    int d;
    private Bitmap e;

    public HollowView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        b = 0.85F;
        c = 0;
        d = 146;
    }

    public HollowView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 0;
        b = 0.85F;
        c = 0;
        d = 146;
    }

    private void a(double d1, double d2)
    {
        if (e == null)
        {
            e = Bitmap.createBitmap((int)d1, (int)d2, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(e);
            setImageBitmap(e);
            Paint paint = new Paint();
            paint.setColor(a);
            double d3;
            double d4;
            double d5;
            int i;
            int j;
            if (d2 < d1)
            {
                d3 = d2 / 2D;
            } else
            {
                d3 = d1 / 2D;
            }
            d4 = d3 * (double)b;
            d5 = d3 - d4;
            i = d - c;
            j = 0;
            while ((double)j < d1) 
            {
                int k = 0;
                while ((double)k < d2) 
                {
                    double d6 = Math.sqrt(Math.pow(d1 / 2D - (double)j, 2D) + Math.pow(d2 / 2D - (double)k, 2D));
                    int l;
                    if (d6 >= d3)
                    {
                        d6 = d3;
                    }
                    if (d6 < d4)
                    {
                        l = c;
                    } else
                    {
                        l = (int)((double)i * Math.pow((d6 - d4) / d5, 2D) + (double)c);
                    }
                    paint.setAlpha(l);
                    canvas.drawPoint(j, k, paint);
                    k++;
                }
                j++;
            }
        }
    }

    protected void onDraw(Canvas canvas)
    {
        double d1 = getMeasuredWidth();
        double d2 = getMeasuredHeight();
        if (d1 != 0.0D && d2 != 0.0D)
        {
            a(d1, d2);
        }
        super.onDraw(canvas);
    }
}
