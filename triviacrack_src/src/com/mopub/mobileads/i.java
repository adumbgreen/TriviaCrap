// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdListener;
import com.amazon.device.ads.AdProperties;
import com.etermax.a.a;

// Referenced classes of package com.mopub.mobileads:
//            AmazonCustomInterstitial, MoPubErrorCode

class i
    implements AdListener
{

    final AmazonCustomInterstitial a;

    i(AmazonCustomInterstitial amazoncustominterstitial)
    {
        a = amazoncustominterstitial;
        super();
    }

    public void onAdCollapsed(Ad ad)
    {
        com.etermax.a.a.c("MoPub", "Amazon interstitial collapsed");
    }

    public void onAdDismissed(Ad ad)
    {
        com.etermax.a.a.c("MoPub", "Amazon interstitial dismissed");
        com.mopub.mobileads.AmazonCustomInterstitial.a(a).onInterstitialDismissed();
    }

    public void onAdExpanded(Ad ad)
    {
        com.etermax.a.a.c("MoPub", "Amazon interstitial expanded");
    }

    public void onAdFailedToLoad(Ad ad, AdError aderror)
    {
        com.etermax.a.a.c("MoPub", (new StringBuilder()).append("Amazon interstitial failed - ").append(aderror.getMessage()).toString());
        com.amazon.device.ads.AdError.ErrorCode errorcode = aderror.getCode();
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.INTERNAL_ERROR)
        {
            com.mopub.mobileads.AmazonCustomInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.REQUEST_ERROR)
        {
            com.mopub.mobileads.AmazonCustomInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.NETWORK_ERROR)
        {
            com.mopub.mobileads.AmazonCustomInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        if (errorcode == com.amazon.device.ads.AdError.ErrorCode.NO_FILL)
        {
            com.mopub.mobileads.AmazonCustomInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.NO_FILL);
            return;
        } else
        {
            com.mopub.mobileads.AmazonCustomInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
    }

    public void onAdLoaded(Ad ad, AdProperties adproperties)
    {
        com.etermax.a.a.c("MoPub", "Amazon interstitial loaded");
        com.mopub.mobileads.AmazonCustomInterstitial.a(a).onInterstitialLoaded();
    }
}
