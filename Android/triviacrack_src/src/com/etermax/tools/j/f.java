// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.j;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;

public class f
{

    public static Bitmap a(Bitmap bitmap, float f1)
    {
        float f2;
        if (bitmap.getWidth() > bitmap.getHeight())
        {
            f2 = f1 * (float)bitmap.getWidth();
        } else
        {
            f2 = f1 * (float)bitmap.getHeight();
        }
        return b(bitmap, f2);
    }

    public static Bitmap b(Bitmap bitmap, float f1)
    {
        int i;
        Bitmap bitmap1;
        Bitmap bitmap2;
        Canvas canvas;
        Paint paint;
        Rect rect;
        if (bitmap.getWidth() > bitmap.getHeight())
        {
            i = bitmap.getHeight();
            bitmap1 = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - i) / 2, 0, i, i);
        } else
        {
            i = bitmap.getWidth();
            bitmap1 = Bitmap.createBitmap(bitmap, 0, (bitmap.getHeight() - i) / 2, i, i);
        }
        bitmap2 = Bitmap.createBitmap(i, i, android.graphics.Bitmap.Config.ARGB_8888);
        canvas = new Canvas(bitmap2);
        paint = new Paint();
        rect = new Rect(0, 0, i, i);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff424242);
        canvas.drawRoundRect(new RectF(rect), f1, f1, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap1, rect, rect, paint);
        return bitmap2;
    }
}
