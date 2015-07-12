// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.etermax.h;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            f

class e
{

    View a;
    int b;
    boolean c;
    boolean d;
    Rect e;
    RectF f;
    Matrix g;
    private f h;
    private RectF i;
    private boolean j;
    private float k;
    private boolean l;
    private Drawable m;
    private Drawable n;
    private Drawable o;
    private final Paint p = new Paint();
    private final Paint q = new Paint();
    private final Paint r = new Paint();

    public e(View view, int i1)
    {
        h = f.a;
        j = false;
        l = false;
        a = view;
        b = i1;
    }

    private void d()
    {
        Resources resources = a.getResources();
        m = resources.getDrawable(h.camera_crop_width);
        n = resources.getDrawable(h.camera_crop_height);
        o = resources.getDrawable(h.indicator_autocrop);
    }

    private Rect e()
    {
        RectF rectf = new RectF(f.left, f.top, f.right, f.bottom);
        g.mapRect(rectf);
        int i1 = Math.round(rectf.left);
        int j1 = Math.round(rectf.top);
        int k1 = Math.round(rectf.right - rectf.left);
        int l1 = Math.round(rectf.bottom - rectf.top);
        return new Rect(i1, j1, k1 + i1, l1 + j1);
    }

    public int a(float f1, float f2)
    {
        byte byte0;
        Rect rect;
        byte0 = 32;
        rect = e();
        if (!l) goto _L2; else goto _L1
_L1:
        float f3;
        float f4;
        int i2;
        int j2;
        f3 = f1 - (float)rect.centerX();
        f4 = f2 - (float)rect.centerY();
        i2 = (int)Math.sqrt(f3 * f3 + f4 * f4);
        j2 = e.width() / 2;
        if ((float)Math.abs(i2 - j2) > 20F) goto _L4; else goto _L3
_L3:
        if (Math.abs(f4) <= Math.abs(f3)) goto _L6; else goto _L5
_L5:
        if (f4 >= 0.0F) goto _L8; else goto _L7
_L7:
        byte0 = 8;
_L10:
        return byte0;
_L8:
        return 16;
_L6:
        return f3 >= 0.0F ? 4 : 2;
_L4:
        if (i2 >= j2)
        {
            return 1;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        boolean flag;
        int i1;
        boolean flag1;
        int j1;
        int k1;
        if (f2 >= (float)rect.top - 20F && f2 < 20F + (float)rect.bottom)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = f1 != (float)rect.left - 20F;
        flag1 = false;
        if (i1 >= 0)
        {
            int l1 = f1 != 20F + (float)rect.right;
            flag1 = false;
            if (l1 < 0)
            {
                flag1 = true;
            }
        }
        if (Math.abs((float)rect.left - f1) < 20F && flag)
        {
            j1 = 3;
        } else
        {
            j1 = 1;
        }
        if (Math.abs((float)rect.right - f1) < 20F && flag)
        {
            j1 |= 4;
        }
        if (Math.abs((float)rect.top - f2) < 20F && flag1)
        {
            j1 |= 8;
        }
        if (Math.abs((float)rect.bottom - f2) < 20F && flag1)
        {
            k1 = j1 | 0x10;
        } else
        {
            k1 = j1;
        }
        if (k1 != 1 || !rect.contains((int)f1, (int)f2))
        {
            return k1;
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    void a(int i1, float f1, float f2)
    {
        Rect rect = e();
        if (i1 == 1)
        {
            return;
        }
        if (i1 == 32)
        {
            b(f1 * (f.width() / (float)rect.width()), f2 * (f.height() / (float)rect.height()));
            return;
        }
        if ((i1 & 6) == 0)
        {
            f1 = 0.0F;
        }
        if ((i1 & 0x18) == 0)
        {
            f2 = 0.0F;
        }
        float f3 = f1 * (f.width() / (float)rect.width());
        float f4 = f2 * (f.height() / (float)rect.height());
        int j1;
        float f5;
        int k1;
        if ((i1 & 2) != 0)
        {
            j1 = -1;
        } else
        {
            j1 = 1;
        }
        f5 = f3 * (float)j1;
        if ((i1 & 8) != 0)
        {
            k1 = -1;
        } else
        {
            k1 = 1;
        }
        c(f5, f4 * (float)k1);
    }

    protected void a(Canvas canvas)
    {
        if (!d)
        {
            Path path = new Path();
            if (!a())
            {
                r.setColor(0xff000000);
                canvas.drawRect(e, r);
                return;
            }
            Rect rect = new Rect();
            a.getDrawingRect(rect);
            if (l)
            {
                canvas.save();
                float f1 = e.width();
                float f2 = e.height();
                path.addCircle((float)e.left + f1 / 2.0F, (float)e.top + f2 / 2.0F, f1 / 2.0F, android.graphics.Path.Direction.CW);
                r.setColor(0xffef04d6);
                canvas.clipPath(path, android.graphics.Region.Op.DIFFERENCE);
                int k3;
                int l3;
                int i4;
                int j4;
                int k4;
                Paint paint4;
                if (a())
                {
                    paint4 = p;
                } else
                {
                    paint4 = q;
                }
                canvas.drawRect(rect, paint4);
                canvas.restore();
            } else
            {
                Rect rect1 = new Rect(rect.left, rect.top, rect.right, e.top);
                if (rect1.width() > 0 && rect1.height() > 0)
                {
                    Rect rect2;
                    Rect rect3;
                    Rect rect4;
                    Paint paint3;
                    if (a())
                    {
                        paint3 = p;
                    } else
                    {
                        paint3 = q;
                    }
                    canvas.drawRect(rect1, paint3);
                }
                rect2 = new Rect(rect.left, e.bottom, rect.right, rect.bottom);
                if (rect2.width() > 0 && rect2.height() > 0)
                {
                    Paint paint2;
                    if (a())
                    {
                        paint2 = p;
                    } else
                    {
                        paint2 = q;
                    }
                    canvas.drawRect(rect2, paint2);
                }
                rect3 = new Rect(rect.left, rect1.bottom, e.left, rect2.top);
                if (rect3.width() > 0 && rect3.height() > 0)
                {
                    Paint paint1;
                    if (a())
                    {
                        paint1 = p;
                    } else
                    {
                        paint1 = q;
                    }
                    canvas.drawRect(rect3, paint1);
                }
                rect4 = new Rect(e.right, rect1.bottom, rect.right, rect2.top);
                if (rect4.width() > 0 && rect4.height() > 0)
                {
                    Paint paint;
                    if (a())
                    {
                        paint = p;
                    } else
                    {
                        paint = q;
                    }
                    canvas.drawRect(rect4, paint);
                }
                path.addRect(new RectF(e), android.graphics.Path.Direction.CW);
                r.setColor(-30208);
            }
            canvas.drawPath(path, r);
            if (h == f.c)
            {
                if (l)
                {
                    k3 = o.getIntrinsicWidth();
                    l3 = o.getIntrinsicHeight();
                    i4 = (int)Math.round(Math.cos(0.78539816339744828D) * ((double)e.width() / 2D));
                    j4 = (i4 + (e.left + e.width() / 2)) - k3 / 2;
                    k4 = (e.top + e.height() / 2) - i4 - l3 / 2;
                    o.setBounds(j4, k4, j4 + o.getIntrinsicWidth(), k4 + o.getIntrinsicHeight());
                    o.draw(canvas);
                    return;
                } else
                {
                    int i1 = 1 + e.left;
                    int j1 = 1 + e.right;
                    int k1 = 4 + e.top;
                    int l1 = 3 + e.bottom;
                    int i2 = m.getIntrinsicWidth() / 2;
                    int j2 = m.getIntrinsicHeight() / 2;
                    int k2 = n.getIntrinsicHeight() / 2;
                    int l2 = n.getIntrinsicWidth() / 2;
                    int i3 = e.left + (e.right - e.left) / 2;
                    int j3 = e.top + (e.bottom - e.top) / 2;
                    m.setBounds(i1 - i2, j3 - j2, i1 + i2, j3 + j2);
                    m.draw(canvas);
                    m.setBounds(j1 - i2, j3 - j2, j1 + i2, j3 + j2);
                    m.draw(canvas);
                    n.setBounds(i3 - l2, k1 - k2, i3 + l2, k1 + k2);
                    n.draw(canvas);
                    n.setBounds(i3 - l2, l1 - k2, i3 + l2, l1 + k2);
                    n.draw(canvas);
                    return;
                }
            }
        }
    }

    public void a(Matrix matrix, Rect rect, RectF rectf, boolean flag, boolean flag1)
    {
        if (flag)
        {
            flag1 = true;
        }
        g = new Matrix(matrix);
        f = rectf;
        i = new RectF(rect);
        j = flag1;
        l = flag;
        k = f.width() / f.height();
        e = e();
        p.setARGB(125, 50, 50, 50);
        q.setARGB(125, 50, 50, 50);
        r.setStrokeWidth(3F);
        r.setStyle(android.graphics.Paint.Style.STROKE);
        r.setAntiAlias(true);
        h = f.a;
        d();
    }

    public void a(f f1)
    {
        if (f1 != h)
        {
            h = f1;
            a.invalidate();
        }
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public boolean a()
    {
        return c;
    }

    public Rect b()
    {
        return new Rect((int)f.left, (int)f.top, (int)f.right, (int)f.bottom);
    }

    void b(float f1, float f2)
    {
        Rect rect = new Rect(e);
        f.offset(f1, f2);
        f.offset(Math.max(0.0F, i.left - f.left), Math.max(0.0F, i.top - f.top));
        f.offset(Math.min(0.0F, i.right - f.right), Math.min(0.0F, i.bottom - f.bottom));
        e = e();
        rect.union(e);
        rect.inset(-10, -10);
        a.invalidate(rect);
    }

    public void b(boolean flag)
    {
        d = flag;
    }

    public void c()
    {
        e = e();
    }

    void c(float f1, float f2)
    {
        RectF rectf;
        float f3;
        float f4;
        float f5;
        if (j)
        {
            if (f1 != 0.0F)
            {
                f2 = f1 / k;
            } else
            if (f2 != 0.0F)
            {
                f1 = f2 * k;
            }
        }
        rectf = new RectF(f);
        if (f1 <= 0.0F || rectf.width() + 2.0F * f1 <= i.width()) goto _L2; else goto _L1
_L1:
        f1 = (i.width() - rectf.width()) / 2.0F;
        if (!j) goto _L2; else goto _L3
_L3:
        f3 = f1 / k;
        f4 = f1;
_L5:
        if (f3 > 0.0F && rectf.height() + 2.0F * f3 > i.height())
        {
            f3 = (i.height() - rectf.height()) / 2.0F;
            if (j)
            {
                f4 = f3 * k;
            }
        }
        rectf.inset(-f4, -f3);
        f5 = b;
        if (rectf.width() < f5)
        {
            rectf.inset(-(f5 - rectf.width()) / 2.0F, 0.0F);
        }
        if (j)
        {
            f5 /= k;
        }
        if (rectf.height() < f5)
        {
            rectf.inset(0.0F, -(f5 - rectf.height()) / 2.0F);
        }
        if (rectf.left < i.left)
        {
            rectf.offset(i.left - rectf.left, 0.0F);
        } else
        if (rectf.right > i.right)
        {
            rectf.offset(-(rectf.right - i.right), 0.0F);
        }
        if (rectf.top < i.top)
        {
            rectf.offset(0.0F, i.top - rectf.top);
        } else
        if (rectf.bottom > i.bottom)
        {
            rectf.offset(0.0F, -(rectf.bottom - i.bottom));
        }
        f.set(rectf);
        e = e();
        a.invalidate();
        return;
_L2:
        f3 = f2;
        f4 = f1;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
