// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.widget.LinearLayout;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class a
    implements Runnable
{

    final AdMarvelVideoActivity a;

    public void run()
    {
        LinearLayout linearlayout = (LinearLayout)a.findViewById(AdMarvelVideoActivity.b);
        if (AdMarvelVideoActivity.g(a) && linearlayout != null && linearlayout.getVisibility() == 0 && System.currentTimeMillis() - AdMarvelVideoActivity.o(a) >= 3000L)
        {
            a.b(false);
        }
        AdMarvelVideoActivity.p(a).b();
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
