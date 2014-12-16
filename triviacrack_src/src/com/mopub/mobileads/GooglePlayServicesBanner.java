// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.mopub.common.util.Views;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventBanner, q, MoPubErrorCode

class GooglePlayServicesBanner extends CustomEventBanner
{

    private CustomEventBanner.CustomEventBannerListener a;
    private AdView b;

    GooglePlayServicesBanner()
    {
    }

    private AdSize a(int i, int j)
    {
        if (i <= AdSize.BANNER.getWidth() && j <= AdSize.BANNER.getHeight())
        {
            return AdSize.BANNER;
        }
        if (i <= AdSize.MEDIUM_RECTANGLE.getWidth() && j <= AdSize.MEDIUM_RECTANGLE.getHeight())
        {
            return AdSize.MEDIUM_RECTANGLE;
        }
        if (i <= AdSize.FULL_BANNER.getWidth() && j <= AdSize.FULL_BANNER.getHeight())
        {
            return AdSize.FULL_BANNER;
        }
        if (i <= AdSize.LEADERBOARD.getWidth() && j <= AdSize.LEADERBOARD.getHeight())
        {
            return AdSize.LEADERBOARD;
        } else
        {
            return null;
        }
    }

    static CustomEventBanner.CustomEventBannerListener a(GooglePlayServicesBanner googleplayservicesbanner)
    {
        return googleplayservicesbanner.a;
    }

    private boolean a(Map map)
    {
        try
        {
            Integer.parseInt((String)map.get("adWidth"));
            Integer.parseInt((String)map.get("adHeight"));
        }
        catch (NumberFormatException numberformatexception)
        {
            return false;
        }
        return map.containsKey("adUnitID");
    }

    static AdView b(GooglePlayServicesBanner googleplayservicesbanner)
    {
        return googleplayservicesbanner.b;
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, Map map, Map map1)
    {
        a = customeventbannerlistener;
        if (a(map1))
        {
            String s = (String)map1.get("adUnitID");
            int i = Integer.parseInt((String)map1.get("adWidth"));
            int j = Integer.parseInt((String)map1.get("adHeight"));
            b = new AdView(context);
            b.setAdListener(new q(this));
            b.setAdUnitId(s);
            AdSize adsize = a(i, j);
            if (adsize == null)
            {
                a.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            } else
            {
                b.setAdSize(adsize);
                com.google.android.gms.ads.AdRequest adrequest = (new com.google.android.gms.ads.AdRequest.Builder()).build();
                b.loadAd(adrequest);
                return;
            }
        } else
        {
            a.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
    }

    protected void onInvalidate()
    {
        Views.removeFromParent(b);
        if (b != null)
        {
            b.setAdListener(null);
            b.destroy();
        }
    }
}
