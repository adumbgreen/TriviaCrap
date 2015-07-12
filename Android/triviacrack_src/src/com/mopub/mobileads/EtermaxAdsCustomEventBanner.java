// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.etermax.adsinterface.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.i;
import com.etermax.adsinterface.a.m;
import com.etermax.mopubads.custom.BaseCustomEventBanner;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class EtermaxAdsCustomEventBanner extends BaseCustomEventBanner
    implements m
{

    private i a;
    private CustomEventBanner.CustomEventBannerListener b;

    public EtermaxAdsCustomEventBanner()
    {
    }

    static i a(EtermaxAdsCustomEventBanner etermaxadscustomeventbanner)
    {
        return etermaxadscustomeventbanner.a;
    }

    static i a(EtermaxAdsCustomEventBanner etermaxadscustomeventbanner, i j)
    {
        etermaxadscustomeventbanner.a = j;
        return j;
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, JSONObject jsonobject)
    {
        b = customeventbannerlistener;
        com.etermax.adsinterface.a.a.a(context, jsonobject, new c(context, customeventbannerlistener) {

            final Context a;
            final CustomEventBanner.CustomEventBannerListener b;
            final EtermaxAdsCustomEventBanner c;

            public void onAdInfoLoadedFailed(Exception exception)
            {
                com.etermax.a.a.a("mopub ads", "CustomEventBannerTemp - Could not read ad parameters", exception);
                b.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
            }

            public void onAdInfoLoadedOk(a a1)
            {
                com.mopub.mobileads.EtermaxAdsCustomEventBanner.a(c, new i((Activity)a, a1, c));
                com.mopub.mobileads.EtermaxAdsCustomEventBanner.a(c).a();
            }

            
            {
                c = EtermaxAdsCustomEventBanner.this;
                a = context;
                b = customeventbannerlistener;
                super();
            }
        });
    }

    public void onClick()
    {
        b.onBannerClicked();
    }

    public void onFailedToReceiveAd()
    {
        b.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
    }

    protected void onInvalidate()
    {
        com.etermax.a.a.b("mopub ads", "onInvalidate");
        if (a != null)
        {
            a.b();
            a = null;
        }
    }

    public void onReceivedAd(View view)
    {
        b.onBannerLoaded(view);
    }
}
