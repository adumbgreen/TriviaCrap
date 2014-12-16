// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.etermax.gamescommon.dashboard.c;
import com.etermax.i;
import com.etermax.q;
import com.etermax.tools.widget.RoundedRelativeLayout;

public class LoadingDefaultUserAvatar extends FrameLayout
    implements c
{

    protected ProgressBar a;
    protected RoundedRelativeLayout b;
    protected c c;
    private float d;
    private float e;
    private int f;
    private RectF g;

    public LoadingDefaultUserAvatar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = 0.0F;
        e = 0.0F;
        f = 0;
        g = new RectF();
        a(attributeset);
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, q.RoundedView);
        d = typedarray.getFloat(1, 0.0F);
        e = typedarray.getDimension(2, 0.0F);
        f = typedarray.getColor(3, 0);
        typedarray.recycle();
    }

    public void a()
    {
        a.setVisibility(8);
        c.a();
    }

    public void a(String s)
    {
        a.setVisibility(8);
        c.a(s);
    }

    protected void b()
    {
        android.view.View view = findViewById(i.defaultAvatar);
        if (!(view instanceof c))
        {
            throw new RuntimeException("common_user_default_avatar.xml debe contener una vista con id 'defaultAvatar' que implemente la interfaz IDefaultIcon.");
        } else
        {
            c = (c)view;
            b.setRadiusPercentage(d);
            return;
        }
    }

    public void b(String s)
    {
        a.setVisibility(0);
        c.b(s);
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        int j = getWidth();
        int k = getHeight();
        float f1;
        if (0.0F == 0.0F && d != 0.0F)
        {
            f1 = ((float)Math.min(j, k) * d) / 100F;
        } else
        {
            f1 = 0.0F;
        }
        if (e > 0.0F)
        {
            g.set(e / 2.0F, e / 2.0F, (float)j - e / 2.0F, (float)k - e / 2.0F);
        } else
        {
            g.set(0.0F, 0.0F, j, k);
        }
        if (e > 0.0F)
        {
            Paint paint = new Paint(1);
            paint.setStrokeWidth(e);
            paint.setColor(f);
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            canvas.drawRoundRect(new RectF(e / 2.0F, e / 2.0F, (float)j - e / 2.0F, (float)k - e / 2.0F), f1, f1, paint);
        }
    }
}
