// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity, p

class a
    implements Runnable
{

    final AdMarvelVideoActivity a;

    public void run()
    {
        if (AdMarvelVideoActivity.a(a) != null && !AdMarvelVideoActivity.b(a))
        {
            int i;
            if (AdMarvelVideoActivity.a(a).getCurrentPosition() == 0)
            {
                i = AdMarvelVideoActivity.a(a).f();
            } else
            {
                i = AdMarvelVideoActivity.a(a).getCurrentPosition();
            }
            AdMarvelVideoActivity.a(a, a.k - AdMarvelVideoActivity.a(a, i), AdMarvelVideoActivity.c(a));
            AdMarvelVideoActivity.a(a, AdMarvelVideoActivity.a(a, AdMarvelVideoActivity.a(a).getCurrentPosition()));
            if (!AdMarvelVideoActivity.d(a))
            {
                a.g();
                AdMarvelVideoActivity.a(a, true);
                return;
            }
        }
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
