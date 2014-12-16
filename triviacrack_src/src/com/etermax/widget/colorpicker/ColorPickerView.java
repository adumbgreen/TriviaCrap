// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.colorpicker;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.etermax.q;

// Referenced classes of package com.etermax.widget.colorpicker:
//            b, a, c

public class ColorPickerView extends View
{

    private static float f = 1.0F;
    private boolean A;
    private int B;
    private int C;
    private RectF D;
    private RectF E;
    private RectF F;
    private RectF G;
    private a H;
    private Point I;
    private float a;
    private float b;
    private float c;
    private float d;
    private float e;
    private c g;
    private Paint h;
    private Paint i;
    private Paint j;
    private Paint k;
    private Paint l;
    private Paint m;
    private Paint n;
    private Shader o;
    private Shader p;
    private Shader q;
    private Shader r;
    private b s;
    private int t;
    private float u;
    private float v;
    private float w;
    private String x;
    private int y;
    private int z;

    public ColorPickerView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ColorPickerView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = 30F;
        b = 20F;
        c = 10F;
        d = 5F;
        e = 2.0F;
        t = 255;
        u = 360F;
        v = 0.0F;
        w = 0.0F;
        x = null;
        y = 0xffbdbdbd;
        z = 0xff6e6e6e;
        A = false;
        B = 0;
        I = null;
        a(attributeset);
    }

    private Point a(float f1)
    {
        RectF rectf = F;
        float f2 = rectf.height();
        Point point = new Point();
        point.y = (int)((f2 - (f1 * f2) / 360F) + rectf.top);
        point.x = (int)rectf.left;
        return point;
    }

    private Point a(float f1, float f2)
    {
        RectF rectf = E;
        float f3 = rectf.height();
        float f4 = rectf.width();
        Point point = new Point();
        point.x = (int)(f4 * f1 + rectf.left);
        point.y = (int)(f3 * (1.0F - f2) + rectf.top);
        return point;
    }

    private Point a(int i1)
    {
        RectF rectf = G;
        float f1 = rectf.width();
        Point point = new Point();
        point.x = (int)((f1 - (f1 * (float)i1) / 255F) + rectf.left);
        point.y = (int)rectf.top;
        return point;
    }

    private void a()
    {
        h = new Paint();
        i = new Paint();
        j = new Paint();
        k = new Paint();
        l = new Paint();
        m = new Paint();
        n = new Paint();
        i.setStyle(android.graphics.Paint.Style.STROKE);
        i.setStrokeWidth(2.0F * f);
        i.setAntiAlias(true);
        k.setColor(y);
        k.setStyle(android.graphics.Paint.Style.STROKE);
        k.setStrokeWidth(2.0F * f);
        k.setAntiAlias(true);
        m.setColor(0xff1c1c1c);
        m.setTextSize(14F * f);
        m.setAntiAlias(true);
        m.setTextAlign(android.graphics.Paint.Align.CENTER);
        m.setFakeBoldText(true);
    }

    private void a(Canvas canvas)
    {
        RectF rectf = E;
        n.setColor(z);
        canvas.drawRect(D.left, D.top, 1.0F + rectf.right, 1.0F + rectf.bottom, n);
        if (o == null)
        {
            o = new LinearGradient(rectf.left, rectf.top, rectf.left, rectf.bottom, -1, 0xff000000, android.graphics.Shader.TileMode.CLAMP);
        }
        if (s == null || s.c != u)
        {
            if (s == null)
            {
                s = new b(this);
            }
            if (s.b == null)
            {
                s.b = Bitmap.createBitmap((int)rectf.width(), (int)rectf.height(), android.graphics.Bitmap.Config.ARGB_8888);
            }
            if (s.a == null)
            {
                s.a = new Canvas(s.b);
            }
            float af[] = new float[3];
            af[0] = u;
            af[1] = 1.0F;
            af[2] = 1.0F;
            int i1 = Color.HSVToColor(af);
            p = new LinearGradient(rectf.left, rectf.top, rectf.right, rectf.top, -1, i1, android.graphics.Shader.TileMode.CLAMP);
            ComposeShader composeshader = new ComposeShader(o, p, android.graphics.PorterDuff.Mode.MULTIPLY);
            h.setShader(composeshader);
            s.a.drawRect(0.0F, 0.0F, s.b.getWidth(), s.b.getHeight(), h);
            s.c = u;
        }
        canvas.drawBitmap(s.b, null, rectf, null);
        Point point = a(v, w);
        i.setColor(0xff000000);
        canvas.drawCircle(point.x, point.y, d - 1.0F * f, i);
        i.setColor(0xffdddddd);
        canvas.drawCircle(point.x, point.y, d, i);
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, q.ColorPickerView);
        A = typedarray.getBoolean(0, false);
        x = typedarray.getString(1);
        y = typedarray.getColor(2, 0xffbdbdbd);
        z = typedarray.getColor(3, 0xff6e6e6e);
        typedarray.recycle();
        f = getContext().getResources().getDisplayMetrics().density;
        d = d * f;
        e = e * f;
        a = a * f;
        b = b * f;
        c = c * f;
        C = b();
        a();
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    private boolean a(MotionEvent motionevent)
    {
        boolean flag = true;
        if (I == null)
        {
            return false;
        }
        int i1 = I.x;
        int j1 = I.y;
        if (F.contains(i1, j1))
        {
            B = ((flag) ? 1 : 0);
            u = b(motionevent.getY());
        } else
        if (E.contains(i1, j1))
        {
            B = 0;
            float af[] = b(motionevent.getX(), motionevent.getY());
            v = af[0];
            w = af[flag];
        } else
        if (G != null && G.contains(i1, j1))
        {
            B = 2;
            t = b((int)motionevent.getX());
        } else
        {
            flag = false;
        }
        return flag;
    }

    private float b(float f1)
    {
        RectF rectf = F;
        float f2 = rectf.height();
        float f3;
        if (f1 < rectf.top)
        {
            f3 = 0.0F;
        } else
        if (f1 > rectf.bottom)
        {
            f3 = f2;
        } else
        {
            f3 = f1 - rectf.top;
        }
        return 360F - (f3 * 360F) / f2;
    }

    private int b()
    {
        return (int)(1.5F * Math.max(Math.max(d, e), 1.0F * f));
    }

    private int b(int i1)
    {
        RectF rectf = G;
        int j1 = (int)rectf.width();
        int k1;
        if ((float)i1 < rectf.left)
        {
            k1 = 0;
        } else
        if ((float)i1 > rectf.right)
        {
            k1 = j1;
        } else
        {
            k1 = i1 - (int)rectf.left;
        }
        return 255 - (k1 * 255) / j1;
    }

    private void b(Canvas canvas)
    {
        RectF rectf = F;
        n.setColor(z);
        canvas.drawRect(rectf.left - 1.0F, rectf.top - 1.0F, 1.0F + rectf.right, 1.0F + rectf.bottom, n);
        if (q == null)
        {
            q = new LinearGradient(0.0F, 0.0F, 0.0F, rectf.height(), c(), null, android.graphics.Shader.TileMode.CLAMP);
            j.setShader(q);
        }
        canvas.drawRect(rectf, j);
        float f1 = (4F * f) / 2.0F;
        Point point = a(u);
        RectF rectf1 = new RectF();
        rectf1.left = rectf.left - e;
        rectf1.right = rectf.right + e;
        rectf1.top = (float)point.y - f1;
        rectf1.bottom = f1 + (float)point.y;
        canvas.drawRoundRect(rectf1, 2.0F, 2.0F, k);
    }

    private float[] b(float f1, float f2)
    {
        RectF rectf = E;
        float af[] = new float[2];
        float f3 = rectf.width();
        float f4 = rectf.height();
        float f5;
        int i1;
        float f6;
        if (f1 < rectf.left)
        {
            f5 = 0.0F;
        } else
        if (f1 > rectf.right)
        {
            f5 = f3;
        } else
        {
            f5 = f1 - rectf.left;
        }
        i1 = f2 != rectf.top;
        f6 = 0.0F;
        if (i1 >= 0)
        {
            if (f2 > rectf.bottom)
            {
                f6 = f4;
            } else
            {
                f6 = f2 - rectf.top;
            }
        }
        af[0] = f5 * (1.0F / f3);
        af[1] = 1.0F - f6 * (1.0F / f4);
        return af;
    }

    private void c(Canvas canvas)
    {
        if (!A || G == null || H == null)
        {
            return;
        }
        RectF rectf = G;
        n.setColor(z);
        canvas.drawRect(rectf.left - 1.0F, rectf.top - 1.0F, 1.0F + rectf.right, 1.0F + rectf.bottom, n);
        H.draw(canvas);
        float af[] = new float[3];
        af[0] = u;
        af[1] = v;
        af[2] = w;
        int i1 = Color.HSVToColor(af);
        int j1 = Color.HSVToColor(0, af);
        r = new LinearGradient(rectf.left, rectf.top, rectf.right, rectf.top, i1, j1, android.graphics.Shader.TileMode.CLAMP);
        l.setShader(r);
        canvas.drawRect(rectf, l);
        if (x != null && !x.equals(""))
        {
            canvas.drawText(x, rectf.centerX(), rectf.centerY() + 4F * f, m);
        }
        float f1 = (4F * f) / 2.0F;
        Point point = a(t);
        RectF rectf1 = new RectF();
        rectf1.left = (float)point.x - f1;
        rectf1.right = f1 + (float)point.x;
        rectf1.top = rectf.top - e;
        rectf1.bottom = rectf.bottom + e;
        canvas.drawRoundRect(rectf1, 2.0F, 2.0F, k);
    }

    private int[] c()
    {
        int ai[] = new int[361];
        int i1 = -1 + ai.length;
        for (int j1 = 0; i1 >= 0; j1++)
        {
            float af[] = new float[3];
            af[0] = i1;
            af[1] = 1.0F;
            af[2] = 1.0F;
            ai[j1] = Color.HSVToColor(af);
            i1--;
        }

        return ai;
    }

    private void d()
    {
        RectF rectf = D;
        float f1 = 1.0F + rectf.left;
        float f2 = 1.0F + rectf.top;
        float f3 = rectf.bottom - 1.0F;
        float f4 = rectf.right - 1.0F - c - a;
        if (A)
        {
            f3 -= b + c;
        }
        E = new RectF(f1, f2, f4, f3);
    }

    private void e()
    {
        RectF rectf = D;
        float f1 = 1.0F + (rectf.right - a);
        float f2 = 1.0F + rectf.top;
        float f3 = rectf.bottom - 1.0F;
        float f4;
        float f5;
        if (A)
        {
            f4 = c + b;
        } else
        {
            f4 = 0.0F;
        }
        f5 = f3 - f4;
        F = new RectF(f1, f2, rectf.right - 1.0F, f5);
    }

    private void f()
    {
        if (!A)
        {
            return;
        } else
        {
            RectF rectf = D;
            float f1 = 1.0F + rectf.left;
            float f2 = 1.0F + (rectf.bottom - b);
            float f3 = rectf.bottom - 1.0F;
            G = new RectF(f1, f2, rectf.right - 1.0F, f3);
            H = new a((int)(5F * f));
            H.setBounds(Math.round(G.left), Math.round(G.top), Math.round(G.right), Math.round(G.bottom));
            return;
        }
    }

    private int getPreferredHeight()
    {
        int i1 = (int)(200F * f);
        if (A)
        {
            i1 = (int)((float)i1 + (c + b));
        }
        return i1;
    }

    private int getPreferredWidth()
    {
        return (int)((float)(int)(200F * f) + a + c);
    }

    public void a(int i1, boolean flag)
    {
        int j1 = Color.alpha(i1);
        int k1 = Color.red(i1);
        int l1 = Color.blue(i1);
        int i2 = Color.green(i1);
        float af[] = new float[3];
        Color.RGBToHSV(k1, i2, l1, af);
        t = j1;
        u = af[0];
        v = af[1];
        w = af[2];
        if (flag && g != null)
        {
            c c1 = g;
            int j2 = t;
            float af1[] = new float[3];
            af1[0] = u;
            af1[1] = v;
            af1[2] = w;
            c1.a(Color.HSVToColor(j2, af1));
        }
        invalidate();
    }

    public String getAlphaSliderText()
    {
        return x;
    }

    public int getBorderColor()
    {
        return z;
    }

    public int getColor()
    {
        int i1 = t;
        float af[] = new float[3];
        af[0] = u;
        af[1] = v;
        af[2] = w;
        return Color.HSVToColor(i1, af);
    }

    public float getDrawingOffset()
    {
        return (float)C;
    }

    public int getSliderTrackerColor()
    {
        return y;
    }

    protected void onDraw(Canvas canvas)
    {
        if (D.width() <= 0.0F || D.height() <= 0.0F)
        {
            return;
        } else
        {
            a(canvas);
            b(canvas);
            c(canvas);
            return;
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1;
        int l1;
        int i2;
        int j2;
        k1 = android.view.View.MeasureSpec.getMode(i1);
        l1 = android.view.View.MeasureSpec.getMode(j1);
        i2 = android.view.View.MeasureSpec.getSize(i1);
        j2 = android.view.View.MeasureSpec.getSize(j1);
        if (k1 != 0x40000000 && l1 != 0x40000000) goto _L2; else goto _L1
_L1:
        if (k1 != 0x40000000 || l1 == 0x40000000) goto _L4; else goto _L3
_L3:
        int l2 = (int)((float)i2 - c - a);
        if (A)
        {
            l2 = (int)((float)l2 + (c + b));
        }
        if (l2 <= j2)
        {
            j2 = l2;
        }
_L6:
        setMeasuredDimension(i2, j2);
        return;
_L4:
        if (l1 == 0x40000000 && k1 != 0x40000000)
        {
            int k2 = (int)((float)j2 + c + a);
            if (A)
            {
                k2 = (int)((float)k2 - (c - b));
            }
            if (k2 > i2)
            {
                k2 = i2;
            }
            i2 = k2;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        int i3 = (int)((float)j2 + c + a);
        int j3 = (int)((float)i2 - c - a);
        if (A)
        {
            i3 = (int)((float)i3 - (c + b));
            j3 = (int)((float)j3 + (c + b));
        }
        if (i3 <= i2)
        {
            i2 = i3;
        } else
        if (j3 <= j2)
        {
            j2 = j3;
        } else
        {
            j2 = 0;
            i2 = 0;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        D = new RectF();
        D.left = C + getPaddingLeft();
        D.right = i1 - C - getPaddingRight();
        D.top = C + getPaddingTop();
        D.bottom = j1 - C - getPaddingBottom();
        o = null;
        p = null;
        q = null;
        r = null;
        d();
        e();
        f();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 104
    //                   1 143
    //                   2 134;
           goto _L1 _L2 _L3 _L4
_L3:
        break MISSING_BLOCK_LABEL_143;
_L1:
        boolean flag = false;
_L5:
        if (flag)
        {
            if (g != null)
            {
                c c1 = g;
                int i1 = t;
                float af[] = new float[3];
                af[0] = u;
                af[1] = v;
                af[2] = w;
                c1.a(Color.HSVToColor(i1, af));
            }
            invalidate();
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
_L2:
        I = new Point((int)motionevent.getX(), (int)motionevent.getY());
        flag = a(motionevent);
          goto _L5
_L4:
        flag = a(motionevent);
          goto _L5
        I = null;
        flag = a(motionevent);
          goto _L5
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        float f1;
        float f2;
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        if (motionevent.getAction() != 2) goto _L2; else goto _L1
_L1:
        B;
        JVM INSTR tableswitch 0 2: default 48
    //                   0 124
    //                   1 216
    //                   2 268;
           goto _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_268;
_L2:
        boolean flag = false;
_L6:
        float f3;
        int k1;
        float f4;
        float f5;
        float f6;
        int l1;
        float f7;
        if (flag)
        {
            if (g != null)
            {
                c c1 = g;
                int i1 = t;
                float af[] = new float[3];
                af[0] = u;
                af[1] = v;
                af[2] = w;
                c1.a(Color.HSVToColor(i1, af));
            }
            invalidate();
            return true;
        } else
        {
            return super.onTrackballEvent(motionevent);
        }
_L3:
        f5 = v + f1 / 50F;
        f6 = w - f2 / 50F;
        if (f5 < 0.0F)
        {
            f5 = 0.0F;
        } else
        if (f5 > 1.0F)
        {
            f5 = 1.0F;
        }
        l1 = f6 != 0.0F;
        f7 = 0.0F;
        if (l1 >= 0)
        {
            if (f6 > 1.0F)
            {
                f7 = 1.0F;
            } else
            {
                f7 = f6;
            }
        }
        v = f5;
        w = f7;
        flag = true;
          goto _L6
_L4:
        f3 = u - f2 * 10F;
        k1 = f3 != 0.0F;
        f4 = 0.0F;
        if (k1 >= 0)
        {
            if (f3 > 360F)
            {
                f4 = 360F;
            } else
            {
                f4 = f3;
            }
        }
        u = f4;
        flag = true;
          goto _L6
        if (!A || G == null)
        {
            flag = false;
        } else
        {
            int j1 = (int)((float)t - f1 * 10F);
            if (j1 < 0)
            {
                j1 = 0;
            } else
            if (j1 > 255)
            {
                j1 = 255;
            }
            t = j1;
            flag = true;
        }
          goto _L6
    }

    public void setAlphaSliderText(int i1)
    {
        setAlphaSliderText(getContext().getString(i1));
    }

    public void setAlphaSliderText(String s1)
    {
        x = s1;
        invalidate();
    }

    public void setAlphaSliderVisible(boolean flag)
    {
        if (A != flag)
        {
            A = flag;
            o = null;
            p = null;
            q = null;
            r = null;
            requestLayout();
        }
    }

    public void setBorderColor(int i1)
    {
        z = i1;
        invalidate();
    }

    public void setColor(int i1)
    {
        a(i1, false);
    }

    public void setOnColorChangedListener(c c1)
    {
        g = c1;
    }

    public void setSliderTrackerColor(int i1)
    {
        y = i1;
        k.setColor(y);
        invalidate();
    }

}
