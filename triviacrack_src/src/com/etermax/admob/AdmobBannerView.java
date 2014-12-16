// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob;

import android.content.Context;
import android.util.AttributeSet;
import com.etermax.a.a;
import com.etermax.adsinterface.AdBannerDefaultView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;

public class AdmobBannerView extends AdBannerDefaultView
{

    private AdView a;
    private AdListener b;

    public AdmobBannerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new AdListener() {

            final AdmobBannerView a;

            public void onAdFailedToLoad(int i)
            {
                com.etermax.a.a.c("ADMOB", "onAdFailedToLoad");
                Context context1 = a.getContext();
                if (context1 != null)
                {
                    com.etermax.admob.AdmobBannerView.a(a, context1);
                }
            }

            public void onAdLoaded()
            {
                com.etermax.a.a.c("ADMOB", "onAdLoaded");
                com.etermax.admob.AdmobBannerView.a(a);
            }

            
            {
                a = AdmobBannerView.this;
                super();
            }
        };
    }

    static void a(AdmobBannerView admobbannerview)
    {
        admobbannerview.c();
    }

    static void a(AdmobBannerView admobbannerview, Context context)
    {
        admobbannerview.a(context);
    }

    private void b(Context context, String s)
    {
        a = new AdView(context);
        a.setAdSize(AdSize.BANNER);
        a.setAdUnitId(s);
        a.setAdListener(b);
        addView(a, -1, -2);
    }

    public void a()
    {
        com.etermax.a.a.c("ADMOB", "stop");
        if (a != null)
        {
            a.pause();
        }
    }

    public void a(Context context, String s)
    {
        if (android.os.Build.VERSION.SDK_INT <= 8)
        {
            b.onAdFailedToLoad(0);
            return;
        }
        com.etermax.a.a.c("ADMOB", "start");
        if (a == null)
        {
            a(context);
            b(context, s);
            AdRequest adrequest = (new com.google.android.gms.ads.AdRequest.Builder()).addTestDevice(AdRequest.DEVICE_ID_EMULATOR).build();
            a.loadAd(adrequest);
            return;
        } else
        {
            a.resume();
            return;
        }
    }

    public void b()
    {
        com.etermax.a.a.c("ADMOB", "destroy");
        if (a != null)
        {
            a.destroy();
            a = null;
        }
    }
}
