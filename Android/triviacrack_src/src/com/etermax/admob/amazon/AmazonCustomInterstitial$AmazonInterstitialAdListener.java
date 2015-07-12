// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.amazon;

import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdListener;
import com.amazon.device.ads.AdProperties;
import com.etermax.a.a;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;

// Referenced classes of package com.etermax.admob.amazon:
//            AmazonCustomInterstitial

class this._cls0
    implements AdListener
{

    final AmazonCustomInterstitial this$0;

    public void onAdCollapsed(Ad ad)
    {
        a.c("MoPub", "Amazon interstitial collapsed");
    }

    public void onAdDismissed(Ad ad)
    {
        a.c("MoPub", "Amazon interstitial dismissed");
        AmazonCustomInterstitial.access$000(AmazonCustomInterstitial.this).onDismissScreen();
    }

    public void onAdExpanded(Ad ad)
    {
        a.c("MoPub", "Amazon interstitial expanded");
    }

    public void onAdFailedToLoad(Ad ad, AdError aderror)
    {
        a.c("MoPub", (new StringBuilder()).append("Amazon interstitial failed - ").append(aderror.getMessage()).toString());
        AmazonCustomInterstitial.access$000(AmazonCustomInterstitial.this).onFailedToReceiveAd();
    }

    public void onAdLoaded(Ad ad, AdProperties adproperties)
    {
        a.c("MoPub", "Amazon interstitial loaded");
        AmazonCustomInterstitial.access$000(AmazonCustomInterstitial.this).onReceivedAd();
    }

    ()
    {
        this$0 = AmazonCustomInterstitial.this;
        super();
    }
}
