// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.resources;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.etermax.q;
import java.util.Random;

public class RandomImageView extends ImageView
{

    private String a;
    private int b;

    public RandomImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public RandomImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        b(context, attributeset);
        if (!TextUtils.isEmpty(a))
        {
            a();
        }
    }

    private void b(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.PlayerTileView);
        a = typedarray.getString(0);
        b = typedarray.getInt(1, 0);
        typedarray.recycle();
    }

    public void a()
    {
        int i = 1 + (new Random()).nextInt(b);
        String s = (new StringBuilder()).append(a).append(i).toString();
        int j = getContext().getResources().getIdentifier(s, "drawable", getContext().getPackageName());
        setImageBitmap(BitmapFactory.decodeResource(getResources(), j));
    }

    public void setPrefix(String s)
    {
        a = s;
    }
}
