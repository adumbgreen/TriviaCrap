// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdControlCallback, InterstitialAd, AdError, RelativePosition, 
//            AdController, MetricsCollector, AdProperties, AdEvent

class this._cls0
    implements AdControlCallback
{

    private AdProperties adProperties;
    final InterstitialAd this$0;

    public int adClosing()
    {
        handleDismissed();
        return 1;
    }

    public boolean isAdReady(boolean flag)
    {
        return isReadyToLoad();
    }

    public void onAdEvent(AdEvent adevent)
    {
    }

    public void onAdFailed(AdError aderror)
    {
        if (this._fld0._mth0(aderror.getCode()))
        {
            InterstitialAd.access$302(InterstitialAd.this, null);
        }
        callOnAdFailedOnMainThread(aderror);
    }

    public void onAdLoaded(AdProperties adproperties)
    {
        adProperties = adproperties;
        InterstitialAd.access$100(InterstitialAd.this);
        InterstitialAd.access$200(InterstitialAd.this).enableNativeCloseButton(true, RelativePosition.TOP_RIGHT);
        InterstitialAd.access$200(InterstitialAd.this).render();
    }

    public void onAdRendered()
    {
        callOnAdLoadedOnMainThread(adProperties);
    }

    public void postAdRendered()
    {
        InterstitialAd.access$400(InterstitialAd.this).startMetric(this._fld0);
    }

    ()
    {
        this$0 = InterstitialAd.this;
        super();
    }
}
