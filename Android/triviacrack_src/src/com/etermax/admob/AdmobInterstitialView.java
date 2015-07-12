// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.etermax.a.a;
import com.etermax.adsinterface.b;
import com.etermax.adsinterface.c;
import com.etermax.adsinterface.d;
import com.etermax.adsinterface.f;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;

public class AdmobInterstitialView extends View
    implements b
{

    private InterstitialAd a;
    private c b;
    private AdListener c;

    public AdmobInterstitialView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new AdListener() {

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

            
            {
                a = AdmobInterstitialView.this;
                super();
            }
        };
    }

    static c a(AdmobInterstitialView admobinterstitialview)
    {
        return admobinterstitialview.b;
    }

    public void a(Activity activity, c c1, String s)
    {
        if (android.os.Build.VERSION.SDK_INT <= 8)
        {
            if (c1 != null)
            {
                c1.a();
            }
            return;
        }
        if (a == null)
        {
            a = new InterstitialAd(activity);
            a.setAdUnitId(s);
        }
        a.setAdListener(c);
        b = c1;
        AdRequest adrequest = (new com.google.android.gms.ads.AdRequest.Builder()).addTestDevice(AdRequest.DEVICE_ID_EMULATOR).build();
        a.loadAd(adrequest);
    }

    public void a(d d1)
    {
        f.a(d1);
        if (a())
        {
            a.show();
            return;
        } else
        {
            d1.a();
            return;
        }
    }

    public boolean a()
    {
        return a != null && a.isLoaded();
    }

    public void b()
    {
    }
}
