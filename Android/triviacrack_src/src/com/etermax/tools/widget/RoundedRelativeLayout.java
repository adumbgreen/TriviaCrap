// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.widget.RelativeLayout;
import com.etermax.q;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class RoundedRelativeLayout extends RelativeLayout
{

    private static Map f;
    private float a;
    private float b;
    private float c;
    private int d;
    private RectF e;

    public RoundedRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0.0F;
        b = 0.0F;
        c = 0.0F;
        d = 0;
        e = new RectF();
        a(attributeset);
    }

    public RoundedRelativeLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 0.0F;
        b = 0.0F;
        c = 0.0F;
        d = 0;
        e = new RectF();
        a(attributeset);
    }

    private Pair a(int i, int j)
    {
        String s = (new StringBuilder()).append("").append(i).append(",").append(j).toString();
        Pair pair = (Pair)f.get(s);
        if (pair == null)
        {
            Bitmap bitmap;
            Canvas canvas;
            Pair pair1;
            try
            {
                bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
                canvas = new Canvas(bitmap);
            }
            catch (OutOfMemoryError outofmemoryerror)
            {
                b();
                bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
                canvas = new Canvas(bitmap);
            }
            pair1 = new Pair(bitmap, canvas);
            if (f.size() > 10)
            {
                b();
            }
            f.put(s, pair1);
            pair = pair1;
        }
        return pair;
    }

    private void a(AttributeSet attributeset)
    {
        if (attributeset != null)
        {
            TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, q.RoundedView);
            a = typedarray.getDimension(0, 0.0F);
            b = typedarray.getFloat(1, 0.0F);
            c = typedarray.getDimension(2, 0.0F);
            d = typedarray.getColor(3, 0);
            typedarray.recycle();
        }
        a();
        if (f == null)
        {
            f = new HashMap();
        }
    }

    private void b()
    {
        Iterator iterator = f.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Pair pair = (Pair)iterator.next();
            if (pair.first != null && !((Bitmap)pair.first).isRecycled())
            {
                ((Bitmap)pair.first).recycle();
            }
        } while (true);
        f.clear();
    }

    public void a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            setLayerType(1, null);
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        int i = canvas.save();
        int j = getWidth();
        int k = getHeight();
        if (a == 0.0F && b != 0.0F)
        {
            a = ((float)Math.min(j, k) * b) / 100F;
        }
        Pair pair;
        BitmapShader bitmapshader;
        Paint paint;
        if (c > 0.0F)
        {
            e.set(c / 2.0F, c / 2.0F, (float)j - c / 2.0F, (float)k - c / 2.0F);
        } else
        {
            e.set(0.0F, 0.0F, j, k);
        }
        pair = a(j, k);
        super.dispatchDraw((Canvas)pair.second);
        bitmapshader = new BitmapShader((Bitmap)pair.first, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
        paint = new Paint(1);
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setShader(bitmapshader);
        canvas.drawRoundRect(e, a, a, paint);
        if (c > 0.0F)
        {
            Paint paint1 = new Paint(1);
            paint1.setStrokeWidth(c);
            paint1.setColor(d);
            paint1.setStyle(android.graphics.Paint.Style.STROKE);
            paint1.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            paint1.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            canvas.drawRoundRect(new RectF(c / 2.0F, c / 2.0F, (float)j - c / 2.0F, (float)k - c / 2.0F), a, a, paint1);
        }
        canvas.restoreToCount(i);
    }

    public void setRadiusPercentage(float f1)
    {
        a = 0.0F;
        b = f1;
    }
}
