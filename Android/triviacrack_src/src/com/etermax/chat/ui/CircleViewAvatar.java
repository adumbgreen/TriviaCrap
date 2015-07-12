// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class CircleViewAvatar extends ImageView
{

    public CircleViewAvatar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public CircleViewAvatar(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    Bitmap a(Bitmap bitmap)
    {
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff0000ff);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getHeight() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmap1;
    }

    protected void onDraw(Canvas canvas)
    {
        BitmapDrawable bitmapdrawable;
        for (bitmapdrawable = (BitmapDrawable)getDrawable(); bitmapdrawable == null || getWidth() == 0 || getHeight() == 0;)
        {
            return;
        }

        Bitmap bitmap = bitmapdrawable.getBitmap();
        int i = getMeasuredWidth();
        int j = getMeasuredHeight();
        if (i != bitmap.getWidth() || j != bitmap.getHeight())
        {
            bitmap = Bitmap.createScaledBitmap(bitmap, i, j, true);
        }
        canvas.drawBitmap(a(bitmap), 0.0F, 0.0F, null);
    }
}
