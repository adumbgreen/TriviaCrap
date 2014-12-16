// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob;

import com.etermax.a.a;
import com.google.android.gms.ads.AdListener;

// Referenced classes of package com.etermax.admob:
//            AdmobBannerView

class r extends AdListener
{

    final AdmobBannerView a;

    public void onAdFailedToLoad(int i)
    {
        com.etermax.a.a.c("ADMOB", "onAdFailedToLoad");
        android.content.Context context = a.getContext();
        if (context != null)
        {
            com.etermax.admob.AdmobBannerView.a(a, context);
        }
    }

    public void onAdLoaded()
    {
        com.etermax.a.a.c("ADMOB", "onAdLoaded");
        com.etermax.admob.AdmobBannerView.a(a);
    }

    r(AdmobBannerView admobbannerview)
    {
        a = admobbannerview;
        super();
    }
}
