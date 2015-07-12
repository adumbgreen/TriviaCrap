// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.app.Activity;
import com.etermax.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.i;
import com.google.ads.mediation.customevent.CustomEventBannerListener;

// Referenced classes of package com.etermax.admob.custom:
//            EtermaxAdsCustomEventBanner

class istener
    implements c
{

    final EtermaxAdsCustomEventBanner this$0;
    final Activity val$activity;
    final CustomEventBannerListener val$listener;

    public void onAdInfoLoadedFailed(Exception exception)
    {
        a.a("admob ads", "CustomEventBannerTemp - Could not read ad parameters", exception);
        val$listener.onFailedToReceiveAd();
    }

    public void onAdInfoLoadedOk(com.etermax.adsinterface.a.a a1)
    {
        EtermaxAdsCustomEventBanner.access$002(EtermaxAdsCustomEventBanner.this, new i(val$activity, a1, EtermaxAdsCustomEventBanner.this));
        EtermaxAdsCustomEventBanner.access$000(EtermaxAdsCustomEventBanner.this).a();
    }

    istener()
    {
        this$0 = final_etermaxadscustomeventbanner;
        val$activity = activity1;
        val$listener = CustomEventBannerListener.this;
        super();
    }
}
