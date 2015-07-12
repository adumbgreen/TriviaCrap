// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class b
    implements Runnable
{

    final AdMarvelVideoActivity a;
    private WeakReference b;

    public void run()
    {
        ImageView imageview = (ImageView)b.get();
        if (imageview != null && imageview.getDrawable() != null)
        {
            imageview.getDrawable().setAlpha(25);
            if (AdMarvelVideoActivity.e(a) != null && AdMarvelVideoActivity.e(a).c())
            {
                AdMarvelVideoActivity.e(a).b();
            }
        }
    }

    public (AdMarvelVideoActivity admarvelvideoactivity, ImageView imageview)
    {
        a = admarvelvideoactivity;
        super();
        b = null;
        b = new WeakReference(imageview);
    }
}
