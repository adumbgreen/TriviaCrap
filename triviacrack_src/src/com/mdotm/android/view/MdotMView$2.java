// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import com.mdotm.android.c.d;
import com.mdotm.android.d.b;

// Referenced classes of package com.mdotm.android.view:
//            MdotMView

class b
    implements Runnable
{

    final MdotMView a;
    private final b b;

    public void run()
    {
        a.removeAllViews();
        android.view.View view = a.b(b);
        if (view != null)
        {
            a.addView(view);
            if (com.mdotm.android.view.MdotMView.d(a) != null)
            {
                com.mdotm.android.view.MdotMView.d(a).onReceiveBannerAd();
            }
        } else
        if (com.mdotm.android.view.MdotMView.d(a) != null)
        {
            com.mdotm.android.view.MdotMView.d(a).onFailedToReceiveBannerAd();
            return;
        }
    }

    (MdotMView mdotmview, b b1)
    {
        a = mdotmview;
        b = b1;
        super();
    }
}
