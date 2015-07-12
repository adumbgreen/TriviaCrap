// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

class b extends b
{

    final float c;
    final float d;

    public void draw(Canvas canvas)
    {
        Rect rect = copyBounds();
        float f = (float)(rect.right - rect.left) / 10F;
        float f1 = (float)rect.right - 20F * c;
        float f2 = (float)rect.top + 20F * c;
        b.setStrokeWidth(f);
        b.setColor(0xff000000);
        b.setStyle(android.graphics.opDrawable.b);
        canvas.drawCircle(f1, f2, 12F * c, b);
        b.setColor(-1);
        b.setStyle(android.graphics.opDrawable.b);
        canvas.drawCircle(f1, f2, 10F * c, b);
        b.setColor(0xff000000);
        canvas.drawCircle(f1, f2, 7F * c, b);
        b.setColor(-1);
        b.setStrokeWidth(f / 2.0F);
        b.setStyle(android.graphics.opDrawable.b);
        canvas.drawLine(f1 - d, f2 - d, f1 + d, f2 + d, b);
        canvas.drawLine(f1 + d, f2 - d, f1 - d, f2 + d, b);
    }

    (boolean flag, float f)
    {
        super(flag);
        c = f;
        d = 4F * f;
        b.setColor(0xff000000);
    }
}
