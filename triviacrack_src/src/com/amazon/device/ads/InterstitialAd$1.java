// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            InterstitialAd, AdProperties

class val.adProperties
    implements Runnable
{

    final InterstitialAd this$0;
    final AdProperties val$adProperties;

    public void run()
    {
        InterstitialAd.access$000(InterstitialAd.this, val$adProperties);
    }

    ()
    {
        this$0 = final_interstitialad;
        val$adProperties = AdProperties.this;
        super();
    }
}
