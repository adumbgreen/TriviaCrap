// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdLayout;
import com.amazon.device.ads.AdListener;
import com.amazon.device.ads.AdProperties;
import com.etermax.a.a;

// Referenced classes of package com.mopub.mobileads:
//            AmazonCustomBanner, MoPubErrorCode

class h
    implements AdListener
{

    final AmazonCustomBanner a;

    h(AmazonCustomBanner amazoncustombanner)
    {
        a = amazoncustombanner;
        super();
    }

    public void onAdCollapsed(Ad ad)
    {
        com.etermax.a.a.c("MoPub", "Amazon banner collapsed");
        com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerCollapsed();
    }

    public void onAdDismissed(Ad ad)
    {
        com.etermax.a.a.c("MoPub", "Amazon banner dismissed");
    }

    public void onAdExpanded(Ad ad)
    {
        com.etermax.a.a.c("MoPub", "Amazon banner expanded");
        com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerClicked();
        com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerExpanded();
    }

    public void onAdFailedToLoad(Ad ad, AdError aderror)
    {
        com.etermax.a.a.c("MoPub", (new StringBuilder()).append("Amazon banner failed - ").append(aderror.getMessage()).toString());
        com.amazon.device.ads.AdError.ErrorCode errorcode = aderror.getCode();
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.INTERNAL_ERROR)
        {
            com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.REQUEST_ERROR)
        {
            com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.NETWORK_ERROR)
        {
            com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.NO_FILL)
        {
            com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerFailed(MoPubErrorCode.NO_FILL);
            return;
        } else
        {
            com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
    }

    public void onAdLoaded(Ad ad, AdProperties adproperties)
    {
        com.etermax.a.a.c("MoPub", "Amazon banner loaded");
        com.mopub.mobileads.AmazonCustomBanner.a(a).onBannerLoaded((AdLayout)ad);
    }
}
