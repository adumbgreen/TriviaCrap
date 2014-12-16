// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob;

import com.etermax.a.a;
import com.etermax.adsinterface.c;
import com.google.android.gms.ads.AdListener;

// Referenced classes of package com.etermax.admob:
//            AdmobInterstitialView

class t> extends AdListener
{

    final AdmobInterstitialView a;

    public void onAdClosed()
    {
        com.etermax.admob.AdmobInterstitialView.a(a).c();
    }

    public void onAdFailedToLoad(int i)
    {
        com.etermax.a.a.c("ADMOB-INTERSTITIAL", "onAdFailedToLoad");
        com.etermax.admob.AdmobInterstitialView.a(a).a();
    }

    public void onAdLeftApplication()
    {
        com.etermax.admob.AdmobInterstitialView.a(a).d();
    }

    public void onAdLoaded()
    {
        com.etermax.a.a.c("ADMOB-INTERSTITIAL", "onAdLoaded");
        com.etermax.admob.AdmobInterstitialView.a(a).b();
    }

    (AdmobInterstitialView admobinterstitialview)
    {
        a = admobinterstitialview;
        super();
    }
}
