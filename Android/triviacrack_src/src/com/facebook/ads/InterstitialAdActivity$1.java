// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;


// Referenced classes of package com.facebook.ads:
//            InterstitialAdActivity

class this._cls0
    implements com.facebook.ads.internal.r
{

    final InterstitialAdActivity this$0;

    public void afterImpressionSent()
    {
    }

    public void onLoggingImpression()
    {
        InterstitialAdActivity.access$100(InterstitialAdActivity.this, "com.facebook.ads.interstitial.impression.logged");
    }

    public boolean shouldSendImpression()
    {
        return true;
    }

    sionHelper()
    {
        this$0 = InterstitialAdActivity.this;
        super();
    }
}
