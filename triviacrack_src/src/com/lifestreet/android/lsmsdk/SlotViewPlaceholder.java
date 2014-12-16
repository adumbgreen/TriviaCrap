// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.DisplayMetrics;

public final class SlotViewPlaceholder
{

    private final DisplayMetrics mDisplayMetrics;
    private float mHeight;
    private final Paint mPaint = new Paint();
    private float mWidth;

    public SlotViewPlaceholder(DisplayMetrics displaymetrics)
    {
        mDisplayMetrics = displaymetrics;
    }

    private void drawSizedText(Paint paint, Canvas canvas, SizedText asizedtext[])
    {
        int i = 0;
        float f = 0.0F;
        int j = asizedtext.length;
        for (int k = 0; k < j;)
        {
            float f4 = f + (float)asizedtext[k].getBounds().width();
            k++;
            f = f4;
        }

        float f1 = f / 2.0F;
        float f2 = mWidth / 2.0F;
        float f3 = mHeight / 2.0F + (float)(asizedtext[1].getBounds().height() / 2);
        for (int l = asizedtext.length; i < l; i++)
        {
            SizedText sizedtext = asizedtext[i];
            paint.setTextSize(sizedtext.getTextSize());
            canvas.drawText(sizedtext.getText(), f1 + (f2 - f), f3, paint);
            f -= sizedtext.getBounds().width();
        }

    }

    public void draw(Canvas canvas)
    {
        if (mWidth != 0.0F && mHeight != 0.0F)
        {
            mPaint.setLinearText(true);
            mPaint.setAntiAlias(true);
            mPaint.setColor(Color.rgb(21, 124, 194));
            mPaint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawRect(0.0F, 0.0F, mWidth, mHeight, mPaint);
            mPaint.setStrokeWidth(2.0F);
            mPaint.setColor(-1);
            mPaint.setStyle(android.graphics.Paint.Style.STROKE);
            canvas.drawRect(0.0F, 0.0F, mWidth - 1.0F, mHeight - 1.0F, mPaint);
            mPaint.setColor(-1);
            mPaint.setTypeface(Typeface.MONOSPACE);
            Paint paint = mPaint;
            SizedText asizedtext[] = new SizedText[4];
            asizedtext[0] = new SizedText(mPaint, "L", 22F);
            asizedtext[1] = new SizedText(mPaint, "IFE", 17F);
            asizedtext[2] = new SizedText(mPaint, "S", 22F);
            asizedtext[3] = new SizedText(mPaint, "TREET", 17F);
            drawSizedText(paint, canvas, asizedtext);
        }
    }

    public void setSize(float f, float f1)
    {
        mWidth = f;
        mHeight = f1;
    }


    private class SizedText
    {

        private final Rect mBounds = new Rect();
        private final String mText;
        private final float mTextSize;
        final SlotViewPlaceholder this$0;

        public Rect getBounds()
        {
            return mBounds;
        }

        public String getText()
        {
            return mText;
        }

        public float getTextSize()
        {
            return mTextSize;
        }

        public SizedText(Paint paint, String s, float f)
        {
            this$0 = SlotViewPlaceholder.this;
            super();
            mText = s;
            mTextSize = TypedValue.applyDimension(2, f, mDisplayMetrics);
            paint.setTextSize(mTextSize);
            paint.getTextBounds(mText, 0, mText.length(), mBounds);
        }
    }

}
