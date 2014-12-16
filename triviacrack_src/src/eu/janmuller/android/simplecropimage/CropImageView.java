// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            ImageViewTouchBase, e, j, CropImage, 
//            f

class CropImageView extends ImageViewTouchBase
{

    ArrayList a;
    e b;
    float c;
    float d;
    int e;
    private Context q;

    public CropImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
        b = null;
        q = context;
    }

    private void a(MotionEvent motionevent)
    {
        int l;
        int i = 0;
        do
        {
            int k = a.size();
            l = 0;
            if (i >= k)
            {
                break;
            }
            e e2 = (e)a.get(i);
            e2.a(false);
            e2.c();
            i++;
        } while (true);
          goto _L1
_L3:
        l++;
_L1:
        e e1;
        if (l >= a.size())
        {
            break; /* Loop/switch isn't completed */
        }
        if ((e1 = (e)a.get(l)).a(motionevent.getX(), motionevent.getY()) == 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!e1.a())
        {
            e1.a(true);
            e1.c();
        }
        break; /* Loop/switch isn't completed */
        if (true) goto _L3; else goto _L2
_L2:
        invalidate();
        return;
    }

    private void b(e e1)
    {
        Rect rect = e1.e;
        int i = Math.max(0, this.l - rect.left);
        int k = Math.min(0, m - rect.right);
        int l = Math.max(0, n - rect.top - n);
        int i1 = Math.min(0, o - rect.bottom - n);
        if (i == 0)
        {
            i = k;
        }
        if (l == 0)
        {
            l = i1;
        }
        if (i != 0 || l != 0)
        {
            b(i, l);
        }
    }

    private void c(e e1)
    {
        Rect rect = e1.e;
        float f1 = rect.width();
        float f2 = rect.height();
        float f3 = getWidth();
        float f4 = getHeight();
        float f5 = Math.max(1.0F, Math.min(0.6F * (f3 / f1), 0.6F * (f4 / f2)) * a());
        if ((double)(Math.abs(f5 - a()) / f5) > 0.10000000000000001D)
        {
            float af[] = new float[2];
            af[0] = e1.f.centerX();
            af[1] = e1.f.centerY();
            getImageMatrix().mapPoints(af);
            a(f5, af[0], af[1], 300F);
        }
        b(e1);
    }

    protected void a(float f1, float f2)
    {
        super.a(f1, f2);
        for (int i = 0; i < a.size(); i++)
        {
            e e1 = (e)a.get(i);
            e1.g.postTranslate(f1, f2);
            e1.c();
        }

    }

    protected void a(float f1, float f2, float f3)
    {
        super.a(f1, f2, f3);
        e e1;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); e1.c())
        {
            e1 = (e)iterator.next();
            e1.g.set(getImageMatrix());
        }

    }

    public void a(e e1)
    {
        a.add(e1);
        invalidate();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        for (int i = 0; i < a.size(); i++)
        {
            ((e)a.get(i)).a(canvas);
        }

    }

    protected void onLayout(boolean flag, int i, int k, int l, int i1)
    {
        super.onLayout(flag, i, k, l, i1);
        if (h.b() != null)
        {
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                e e1 = (e)iterator.next();
                e1.g.set(getImageMatrix());
                e1.c();
                if (e1.c)
                {
                    c(e1);
                }
            } while (true);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        CropImage cropimage;
        cropimage = (CropImage)q;
        if (cropimage.c)
        {
            return false;
        }
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 48
    //                   0 78
    //                   1 213
    //                   2 364;
           goto _L1 _L2 _L3 _L4
_L1:
        motionevent.getAction();
        JVM INSTR tableswitch 1 2: default 76
    //                   1 442
    //                   2 451;
           goto _L5 _L6 _L7
_L5:
        return true;
_L2:
        if (!cropimage.b) goto _L9; else goto _L8
_L8:
        a(motionevent);
          goto _L1
_L9:
        int l = 0;
_L13:
        if (l >= a.size()) goto _L1; else goto _L10
_L10:
        e e2;
        int i1;
        e2 = (e)a.get(l);
        i1 = e2.a(motionevent.getX(), motionevent.getY());
        if (i1 == 1) goto _L12; else goto _L11
_L11:
        e = i1;
        b = e2;
        c = motionevent.getX();
        d = motionevent.getY();
        e e3 = b;
        f f1;
        if (i1 == 32)
        {
            f1 = f.b;
        } else
        {
            f1 = f.c;
        }
        e3.a(f1);
          goto _L1
_L12:
        l++;
          goto _L13
_L3:
        if (cropimage.b)
        {
            for (int i = 0; i < a.size(); i++)
            {
                e e1 = (e)a.get(i);
                if (e1.a())
                {
                    cropimage.d = e1;
                    int k = 0;
                    while (k < a.size()) 
                    {
                        if (k != i)
                        {
                            ((e)a.get(k)).b(true);
                        }
                        k++;
                    }
                    c(e1);
                    ((CropImage)q).b = false;
                    return true;
                }
            }

        } else
        if (b != null)
        {
            c(b);
            b.a(f.a);
        }
        b = null;
          goto _L1
_L4:
        if (cropimage.b)
        {
            a(motionevent);
        } else
        if (b != null)
        {
            b.a(e, motionevent.getX() - c, motionevent.getY() - d);
            c = motionevent.getX();
            d = motionevent.getY();
            b(b);
        }
          goto _L1
_L6:
        a(true, true);
          goto _L5
_L7:
        if (a() == 1.0F)
        {
            a(true, true);
        }
          goto _L5
    }
}
