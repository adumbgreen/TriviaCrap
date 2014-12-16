// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdTargetingOptions, AdController, AdData, AdError, 
//            MetricsCollector, AdSize

class AdSlot
{

    private final AdController adController;
    private AdError adError;
    private final AdTargetingOptions adOptions;
    private boolean deferredLoad;
    private int slotNumber;

    AdSlot(AdController adcontroller, AdTargetingOptions adtargetingoptions)
    {
        deferredLoad = false;
        adController = adcontroller;
        if (adtargetingoptions == null)
        {
            adOptions = new AdTargetingOptions();
            return;
        } else
        {
            adOptions = adtargetingoptions;
            return;
        }
    }

    void adFailed(AdError aderror)
    {
        adController.adFailed(aderror);
    }

    AdError getAdError()
    {
        return adError;
    }

    public AdTargetingOptions getAdTargetingOptions()
    {
        return adOptions;
    }

    String getMaxSize()
    {
        return adController.getMaxSize();
    }

    MetricsCollector getMetricsCollector()
    {
        return adController.getMetricsCollector();
    }

    public AdSize getRequestedAdSize()
    {
        return adController.getAdSize();
    }

    int getSlotNumber()
    {
        return slotNumber;
    }

    void initializeAd()
    {
        adController.initialize();
    }

    boolean isFetched()
    {
        return adController.getAdData() != null && adController.getAdData().getIsFetched();
    }

    boolean isValid()
    {
        return adController.isValid();
    }

    boolean prepareForAdLoad(long l)
    {
        return adController.prepareForAdLoad(l, deferredLoad);
    }

    void setAdData(AdData addata)
    {
        adController.setAdData(addata);
    }

    void setAdError(AdError aderror)
    {
        adError = aderror;
    }

    void setConnectionType(String s)
    {
        adController.setConnectionType(s);
    }

    public AdSlot setDeferredLoad(boolean flag)
    {
        deferredLoad = flag;
        return this;
    }

    void setSlotNumber(int i)
    {
        slotNumber = i;
    }
}
