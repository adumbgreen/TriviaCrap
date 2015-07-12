// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.FaceDetector;
import android.os.Handler;
import android.widget.Toast;
import java.util.ArrayList;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            CropImage, e, CropImageView

class c
    implements Runnable
{

    float a;
    Matrix b;
    android.media..Face c[];
    int d;
    final CropImage e;

    private void a()
    {
        e e1 = new e(CropImage.c(e), CropImage.f(e));
        int i = CropImage.b(e).getWidth();
        int j = CropImage.b(e).getHeight();
        Rect rect = new Rect(0, 0, i, j);
        int k = (4 * Math.min(i, j)) / 5;
        int l;
        int i1;
        int j1;
        int k1;
        RectF rectf;
        Matrix matrix;
        boolean flag;
        int l1;
        boolean flag1;
        if (CropImage.h(e) != 0 && CropImage.i(e) != 0)
        {
            if (CropImage.h(e) > CropImage.i(e))
            {
                l = (k * CropImage.i(e)) / CropImage.h(e);
                i1 = k;
            } else
            {
                i1 = (k * CropImage.h(e)) / CropImage.i(e);
                l = k;
            }
        } else
        {
            l = k;
            i1 = k;
        }
        j1 = (i - i1) / 2;
        k1 = (j - l) / 2;
        rectf = new RectF(j1, k1, i1 + j1, l + k1);
        matrix = b;
        flag = CropImage.g(e);
        l1 = CropImage.h(e);
        flag1 = false;
        if (l1 != 0)
        {
            int i2 = CropImage.i(e);
            flag1 = false;
            if (i2 != 0)
            {
                flag1 = true;
            }
        }
        e1.a(matrix, rect, rectf, flag, flag1);
        CropImage.c(e).a.clear();
        CropImage.c(e).a(e1);
    }

    private void a(android.media..Face face)
    {
        PointF pointf = new PointF();
        int i = 2 * (int)(face.eyesDistance() * a);
        face.getMidPoint(pointf);
        pointf.x = pointf.x * a;
        pointf.y = pointf.y * a;
        int j = (int)pointf.x;
        int k = (int)pointf.y;
        e e1 = new e(CropImage.c(e), CropImage.f(e));
        Rect rect = new Rect(0, 0, CropImage.b(e).getWidth(), CropImage.b(e).getHeight());
        RectF rectf = new RectF(j, k, j, k);
        rectf.inset(-i, -i);
        if (rectf.left < 0.0F)
        {
            rectf.inset(-rectf.left, -rectf.left);
        }
        if (rectf.top < 0.0F)
        {
            rectf.inset(-rectf.top, -rectf.top);
        }
        if (rectf.right > (float)rect.right)
        {
            rectf.inset(rectf.right - (float)rect.right, rectf.right - (float)rect.right);
        }
        if (rectf.bottom > (float)rect.bottom)
        {
            rectf.inset(rectf.bottom - (float)rect.bottom, rectf.bottom - (float)rect.bottom);
        }
        Matrix matrix = b;
        boolean flag = CropImage.g(e);
        int l = CropImage.h(e);
        boolean flag1 = false;
        if (l != 0)
        {
            int i1 = CropImage.i(e);
            flag1 = false;
            if (i1 != 0)
            {
                flag1 = true;
            }
        }
        e1.a(matrix, rect, rectf, flag, flag1);
        CropImage.c(e).a(e1);
    }

    static void a(w.a a1)
    {
        a1.a();
    }

    static void a(a a1, android.media..Face face)
    {
        a1.a(face);
    }

    private Bitmap b()
    {
        if (CropImage.b(e) == null)
        {
            return null;
        }
        if (CropImage.b(e).getWidth() > 256)
        {
            a = 256F / (float)CropImage.b(e).getWidth();
        }
        Matrix matrix = new Matrix();
        matrix.setScale(a, a);
        return Bitmap.createBitmap(CropImage.b(e), 0, 0, CropImage.b(e).getWidth(), CropImage.b(e).getHeight(), matrix, true);
    }

    public void run()
    {
        b = CropImage.c(e).getImageMatrix();
        Bitmap bitmap = b();
        a = 1.0F / a;
        if (bitmap != null && CropImage.j(e))
        {
            d = (new FaceDetector(bitmap.getWidth(), bitmap.getHeight(), c.length)).findFaces(bitmap, c);
        }
        if (bitmap != null && bitmap != CropImage.b(e))
        {
            bitmap.recycle();
        }
        CropImage.d(e).post(new Runnable() {

            final CropImage._cls7 a;

            public void run()
            {
                CropImage cropimage = a.e;
                boolean flag;
                if (a.d > 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                cropimage.b = flag;
                if (a.d > 0)
                {
                    for (int i = 0; i < a.d; i++)
                    {
                        CropImage._cls7.a(a, a.c[i]);
                    }

                } else
                {
                    CropImage._cls7.a(a);
                }
                CropImage.c(a.e).invalidate();
                if (CropImage.c(a.e).a.size() == 1)
                {
                    a.e.d = (e)CropImage.c(a.e).a.get(0);
                    a.e.d.a(true);
                }
                if (a.d > 1)
                {
                    Toast.makeText(a.e, "Multi face crop help", 0).show();
                }
            }

            
            {
                a = CropImage._cls7.this;
                super();
            }
        });
    }

    _cls1.a(CropImage cropimage)
    {
        e = cropimage;
        super();
        a = 1.0F;
        c = new android.media..Face[3];
    }
}
