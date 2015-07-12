// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.etermax.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.i;

// Referenced classes of package com.mopub.mobileads:
//            EtermaxAdsCustomEventBanner, MoPubErrorCode

class b
    implements c
{

    final Context a;
    final annerListener b;
    final EtermaxAdsCustomEventBanner c;

    public void onAdInfoLoadedFailed(Exception exception)
    {
        com.etermax.a.a.a("mopub ads", "CustomEventBannerTemp - Could not read ad parameters", exception);
        b.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
    }

    public void onAdInfoLoadedOk(com.etermax.adsinterface.a.a a1)
    {
        com.mopub.mobileads.EtermaxAdsCustomEventBanner.a(c, new i((Activity)a, a1, c));
        com.mopub.mobileads.EtermaxAdsCustomEventBanner.a(c).a();
    }

    annerListener(EtermaxAdsCustomEventBanner etermaxadscustomeventbanner, Context context, annerListener annerlistener)
    {
        c = etermaxadscustomeventbanner;
        a = context;
        b = annerlistener;
        super();
    }
}
