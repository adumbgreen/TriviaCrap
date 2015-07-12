// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            SlotViewPlaceholder

final class mBounds
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

    public A(Paint paint, String s, float f)
    {
        this$0 = SlotViewPlaceholder.this;
        super();
        mText = s;
        mTextSize = TypedValue.applyDimension(2, f, SlotViewPlaceholder.access$000(SlotViewPlaceholder.this));
        paint.setTextSize(mTextSize);
        paint.getTextBounds(mText, 0, mText.length(), mBounds);
    }
}
