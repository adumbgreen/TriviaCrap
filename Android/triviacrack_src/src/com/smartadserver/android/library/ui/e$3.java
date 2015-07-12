// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.widget.ImageView;

// Referenced classes of package com.smartadserver.android.library.ui:
//            e

class a
    implements Runnable
{

    final Bitmap a;
    final e b;

    public void run()
    {
        e.b(b).setImageBitmap(a);
        float f = b.getResources().getDisplayMetrics().density / 1.5F;
        android.widget.tiveLayout.LayoutParams layoutparams = new android.widget.tiveLayout.LayoutParams(Math.round(f * (float)a.getWidth()), Math.round(f * (float)a.getHeight()));
        int i = Math.round(f * 7F);
        layoutparams.setMargins(i, i, i, i);
        layoutparams.addRule(13);
        e.b(b).setLayoutParams(layoutparams);
    }

    s(e e1, Bitmap bitmap)
    {
        b = e1;
        a = bitmap;
        super();
    }
}
