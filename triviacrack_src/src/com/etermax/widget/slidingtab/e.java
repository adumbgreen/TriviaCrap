// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.slidingtab;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.etermax.widget.slidingtab:
//            f, c

public class e extends LinearLayout
{

    private int a;
    private float b;
    private final Paint c;
    private int d;
    private final Paint e;
    private final int f;
    private final Paint g;
    private final float h;
    private int i;
    private float j;
    private c k;
    private final f l;

    e(Context context, int i1)
    {
        this(context, ((AttributeSet) (null)));
        a = i1;
    }

    e(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 1;
        setWillNotDraw(false);
        float f1 = getResources().getDisplayMetrics().density;
        TypedValue typedvalue = new TypedValue();
        context.getTheme().resolveAttribute(0x1010030, typedvalue, true);
        int i1 = typedvalue.data;
        f = a(i1, (byte)38);
        l = new f();
        l.a(new int[] {
            0xff33b5e5
        });
        f f2 = l;
        int ai[] = new int[1];
        ai[0] = a(i1, (byte)32);
        f2.b(ai);
        b = (int)(2.0F * f1);
        c = new Paint();
        c.setColor(f);
        d = (int)(8F * f1);
        e = new Paint();
        h = 0.5F;
        g = new Paint();
        g.setStrokeWidth((int)(f1 * 1.0F));
    }

    private static int a(int i1, byte byte0)
    {
        return Color.argb(byte0, Color.red(i1), Color.green(i1), Color.blue(i1));
    }

    private static int a(int i1, int j1, float f1)
    {
        float f2 = 1.0F - f1;
        float f3 = f1 * (float)Color.red(i1) + f2 * (float)Color.red(j1);
        float f4 = f1 * (float)Color.green(i1) + f2 * (float)Color.green(j1);
        float f5 = f1 * (float)Color.blue(i1) + f2 * (float)Color.blue(j1);
        return Color.rgb((int)f3, (int)f4, (int)f5);
    }

    void a(int i1, float f1)
    {
        i = i1;
        j = f1;
        invalidate();
    }

    protected void onDraw(Canvas canvas)
    {
        int i1 = getHeight();
        int j1 = getChildCount();
        int k1 = (int)(Math.min(Math.max(0.0F, h), 1.0F) * (float)i1);
        Object obj;
        if (k != null)
        {
            obj = k;
        } else
        {
            obj = l;
        }
        if (j1 > 0)
        {
            View view1 = getChildAt(i);
            int j2 = view1.getLeft();
            int k2 = view1.getRight();
            int l2 = ((c) (obj)).a(i);
            int l1;
            int i2;
            View view;
            int i3;
            int j3;
            if (j > 0.0F && i < -1 + getChildCount())
            {
                int k3 = ((c) (obj)).a(1 + i);
                if (l2 != k3)
                {
                    l2 = a(k3, l2, j);
                }
                View view2 = getChildAt(1 + i);
                int l3 = (int)(j * (float)view2.getLeft() + (1.0F - j) * (float)j2);
                int i4 = (int)(j * (float)view2.getRight() + (1.0F - j) * (float)k2);
                i3 = l3;
                j3 = i4;
            } else
            {
                i3 = j2;
                j3 = k2;
            }
            e.setColor(l2);
            if (a == 0)
            {
                canvas.drawRect(i3, 0.0F, j3, 0 + d, e);
            } else
            {
                canvas.drawRect(i3, i1 - d, j3, i1, e);
            }
        }
        if (a == 0)
        {
            canvas.drawRect(0.0F, 0.0F, getWidth(), 0.0F + b, c);
        } else
        {
            canvas.drawRect(0.0F, (float)i1 - b, getWidth(), i1, c);
        }
        l1 = (i1 - k1) / 2;
        for (i2 = 0; i2 < j1 - 1; i2++)
        {
            view = getChildAt(i2);
            g.setColor(((c) (obj)).b(i2));
            canvas.drawLine(view.getRight(), l1, view.getRight(), l1 + k1, g);
        }

    }

    void setBottomBorderThickness(float f1)
    {
        b = f1 * getResources().getDisplayMetrics().density;
    }

    void setCustomTabColorizer(c c1)
    {
        k = c1;
        invalidate();
    }

    transient void setDividerColors(int ai[])
    {
        k = null;
        l.b(ai);
        invalidate();
    }

    transient void setSelectedIndicatorColors(int ai[])
    {
        k = null;
        l.a(ai);
        invalidate();
    }

    void setSelectedIndicatorThickness(int i1)
    {
        d = (int)(getResources().getDisplayMetrics().density * (float)i1);
    }
}
