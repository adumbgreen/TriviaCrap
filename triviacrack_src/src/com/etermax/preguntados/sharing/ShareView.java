// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.login.datasource.a;

public abstract class ShareView extends RelativeLayout
{

    protected b l;
    protected a m;
    protected com.etermax.tools.social.a.b n;

    public ShareView(Context context)
    {
        super(context);
        d();
    }

    public ShareView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d();
    }

    public ShareView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d();
    }

    public void d()
    {
        l = new b();
    }

    public Bitmap e()
    {
        setLayoutParams(new android.widget.RelativeLayout.LayoutParams(640, 640));
        measure(android.view.View.MeasureSpec.makeMeasureSpec(getLayoutParams().width, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(getLayoutParams().height, 0x40000000));
        layout(10, 100, 100 + getMeasuredWidth(), 100 + getMeasuredHeight());
        Bitmap bitmap = Bitmap.createBitmap(640, 640, android.graphics.Bitmap.Config.ARGB_8888);
        draw(new Canvas(bitmap));
        return bitmap;
    }

    public abstract String getShareText();
}
