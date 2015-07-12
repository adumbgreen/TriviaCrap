// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Handler;
import android.view.Display;
import android.view.WindowManager;
import java.io.Closeable;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            l, MonitoredActivity

public class k
{

    public static int a(Activity activity)
    {
        switch (activity.getWindowManager().getDefaultDisplay().getRotation())
        {
        case 0: // '\0'
        default:
            return 0;

        case 1: // '\001'
            return 90;

        case 2: // '\002'
            return 180;

        case 3: // '\003'
            return 270;
        }
    }

    public static Bitmap a(Bitmap bitmap, float f)
    {
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap a(Matrix matrix, Bitmap bitmap, int i, int j, boolean flag)
    {
        int i1 = bitmap.getWidth() - i;
        int j1 = bitmap.getHeight() - j;
        if (!flag && (i1 < 0 || j1 < 0))
        {
            Bitmap bitmap3 = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap3);
            int i2 = Math.max(0, i1 / 2);
            int j2 = Math.max(0, j1 / 2);
            Rect rect = new Rect(i2, j2, i2 + Math.min(i, bitmap.getWidth()), j2 + Math.min(j, bitmap.getHeight()));
            int k2 = (i - rect.width()) / 2;
            int l2 = (j - rect.height()) / 2;
            canvas.drawBitmap(bitmap, rect, new Rect(k2, l2, i - k2, j - l2), null);
            return bitmap3;
        }
        float f = bitmap.getWidth();
        float f1 = bitmap.getHeight();
        Matrix matrix1;
        Bitmap bitmap1;
        if (f / f1 > (float)i / (float)j)
        {
            float f3 = (float)j / f1;
            int k1;
            int l1;
            Bitmap bitmap2;
            if (f3 < 0.9F || f3 > 1.0F)
            {
                matrix.setScale(f3, f3);
            } else
            {
                matrix = null;
            }
            matrix1 = matrix;
        } else
        {
            float f2 = (float)i / f;
            if (f2 < 0.9F || f2 > 1.0F)
            {
                matrix.setScale(f2, f2);
                matrix1 = matrix;
            } else
            {
                matrix1 = null;
            }
        }
        if (matrix1 != null)
        {
            bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix1, true);
        } else
        {
            bitmap1 = bitmap;
        }
        k1 = Math.max(0, bitmap1.getWidth() - i);
        l1 = Math.max(0, bitmap1.getHeight() - j);
        bitmap2 = Bitmap.createBitmap(bitmap1, k1 / 2, l1 / 2, i, j);
        if (bitmap1 != bitmap)
        {
            bitmap1.recycle();
        }
        return bitmap2;
    }

    public static void a(MonitoredActivity monitoredactivity, String s, String s1, Runnable runnable, Handler handler)
    {
        (new Thread(new l(monitoredactivity, runnable, ProgressDialog.show(monitoredactivity, s, s1, true, false), handler))).start();
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
