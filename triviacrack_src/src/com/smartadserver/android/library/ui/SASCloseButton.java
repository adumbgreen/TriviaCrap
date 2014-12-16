// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import com.smartadserver.android.library.g.a;
import com.smartadserver.android.library.h.c;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView

public class SASCloseButton extends ImageView
{

    public SASCloseButton(Context context)
    {
        super(context);
        a();
    }

    public SASCloseButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public void a()
    {
        Bitmap bitmap = a.a;
        if (SASAdView.getCloseButtonBitmap() != null)
        {
            bitmap = SASAdView.getCloseButtonBitmap();
        }
        setImageBitmap(bitmap);
        setBackgroundColor(0);
        float f = getResources().getDisplayMetrics().density / 1.5F;
        int i = Math.round((f * (float)Math.min(bitmap.getWidth(), bitmap.getHeight())) / 6F);
        int j = Math.round(f * (float)bitmap.getWidth()) + i * 2;
        int k = Math.round(f * (float)bitmap.getHeight()) + i * 2;
        Object obj = getLayoutParams();
        if (obj == null)
        {
            obj = new android.widget.RelativeLayout.LayoutParams(j, k);
        } else
        {
            obj.width = j;
            obj.height = k;
        }
        setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        setPadding(i, i, i, i);
    }

    public void a(int i, int j)
    {
        Bitmap bitmap = a.h;
        if (c.a)
        {
            (new Canvas(bitmap)).drawARGB(128, 255, 165, 0);
        }
        setImageBitmap(bitmap);
        DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        int k = Math.round((float)i * displaymetrics.density);
        int l = Math.round((float)j * displaymetrics.density);
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        if (layoutparams == null)
        {
            new android.widget.RelativeLayout.LayoutParams(k, l);
        } else
        {
            layoutparams.width = k;
            layoutparams.height = l;
        }
        setPadding(0, 0, 0, 0);
    }
}
