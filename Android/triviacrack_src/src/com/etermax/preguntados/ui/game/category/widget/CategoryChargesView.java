// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.etermax.f;
import com.etermax.g;
import com.etermax.h;

// Referenced classes of package com.etermax.preguntados.ui.game.category.widget:
//            a

public class CategoryChargesView extends ImageView
{

    private a a;
    private Paint b;
    private Paint c;
    private RectF d;
    private float e;
    private Handler f;
    private int g;
    private int h[];
    private int i;
    private int j[];
    private int k;
    private int l;
    private Runnable m;

    public CategoryChargesView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        m = new Runnable() {

            final CategoryChargesView a;

            public void run()
            {
                if (CategoryChargesView.a(a) < CategoryChargesView.b(a))
                {
                    CategoryChargesView.a(a, CategoryChargesView.c(a));
                    a.invalidate();
                    CategoryChargesView.e(a).postDelayed(CategoryChargesView.d(a), 15L);
                    return;
                } else
                {
                    com.etermax.preguntados.ui.game.category.widget.CategoryChargesView.g(a).a(com.etermax.preguntados.ui.game.category.widget.CategoryChargesView.f(a));
                    return;
                }
            }

            
            {
                a = CategoryChargesView.this;
                super();
            }
        };
        b();
    }

    static int a(CategoryChargesView categorychargesview)
    {
        return categorychargesview.i;
    }

    static int a(CategoryChargesView categorychargesview, int i1)
    {
        int j1 = i1 + categorychargesview.i;
        categorychargesview.i = j1;
        return j1;
    }

    static int b(CategoryChargesView categorychargesview)
    {
        return categorychargesview.g;
    }

    private void b()
    {
        f = new Handler();
        h = (new int[] {
            0, 52, 128, 180
        });
        j = (new int[] {
            0, 4, 8, 12
        });
        float f1 = getContext().getResources().getDimension(g.charges_padding);
        float f2 = getContext().getResources().getDimension(g.charges_stroke_width);
        b = new Paint();
        b.setColor(getResources().getColor(f.yellow_crown));
        b.setStrokeWidth(f2);
        b.setStyle(android.graphics.Paint.Style.STROKE);
        b.setFlags(1);
        c = new Paint();
        c.setColor(getResources().getColor(f.chargesBackground));
        c.setStrokeWidth(f2);
        c.setStyle(android.graphics.Paint.Style.STROKE);
        c.setFlags(1);
        e = f1;
    }

    static int c(CategoryChargesView categorychargesview)
    {
        return categorychargesview.k;
    }

    static Runnable d(CategoryChargesView categorychargesview)
    {
        return categorychargesview.m;
    }

    static Handler e(CategoryChargesView categorychargesview)
    {
        return categorychargesview.f;
    }

    static int f(CategoryChargesView categorychargesview)
    {
        return categorychargesview.l;
    }

    static a g(CategoryChargesView categorychargesview)
    {
        return categorychargesview.a;
    }

    public void a()
    {
        f.removeCallbacks(m);
    }

    protected void onDraw(Canvas canvas)
    {
        if (d == null)
        {
            float f1 = getWidth();
            d = new RectF(e, e, f1 - e, f1 - e);
        }
        canvas.drawArc(d, 180F, 180F, false, c);
        canvas.drawArc(d, 180F, i, false, b);
        super.onDraw(canvas);
    }

    public void setChargeAnimationListener(a a1)
    {
        a = a1;
    }

    public void setCharges(int i1)
    {
        i = h[l];
        k = j[i1] - j[l];
        l = i1;
        g = h[i1];
        if (i1 == -1 + h.length)
        {
            setImageResource(h.crown_progress_color);
        }
        f.postDelayed(m, 15L);
    }
}
