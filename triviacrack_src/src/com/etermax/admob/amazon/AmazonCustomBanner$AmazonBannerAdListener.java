// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.amazon;

import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdLayout;
import com.amazon.device.ads.AdListener;
import com.amazon.device.ads.AdProperties;
import com.etermax.a.a;
import com.google.ads.mediation.customevent.CustomEventBannerListener;

// Referenced classes of package com.etermax.admob.amazon:
//            AmazonCustomBanner

class this._cls0
    implements AdListener
{

    final AmazonCustomBanner this$0;

    public void onAdCollapsed(Ad ad)
    {
        a.c("MoPub", "Amazon banner collapsed");
    }

    public void onAdDismissed(Ad ad)
    {
        a.c("MoPub", "Amazon banner dismissed");
    }

    public void onAdExpanded(Ad ad)
    {
        a.c("MoPub", "Amazon banner expanded");
        AmazonCustomBanner.access$000(AmazonCustomBanner.this).onClick();
    }

    public void onAdFailedToLoad(Ad ad, AdError aderror)
    {
        a.c("MoPub", (new StringBuilder()).append("Amazon banner failed - ").append(aderror.getMessage()).toString());
        AmazonCustomBanner.access$000(AmazonCustomBanner.this).onFailedToReceiveAd();
    }

    public void onAdLoaded(Ad ad, AdProperties adproperties)
    {
        a.c("MoPub", "Amazon banner loaded");
        AmazonCustomBanner.access$000(AmazonCustomBanner.this).onReceivedAd((AdLayout)ad);
    }

    ()
    {
        this$0 = AmazonCustomBanner.this;
        super();
    }
}
