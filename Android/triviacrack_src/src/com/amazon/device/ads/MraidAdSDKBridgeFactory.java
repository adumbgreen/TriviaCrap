// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdSDKBridgeFactory, MRAIDAdSDKBridge, AdControlAccessor, AdSDKBridge

class MraidAdSDKBridgeFactory
    implements AdSDKBridgeFactory
{

    MraidAdSDKBridgeFactory()
    {
    }

    public AdSDKBridge createAdSDKBridge(AdControlAccessor adcontrolaccessor)
    {
        return new MRAIDAdSDKBridge(adcontrolaccessor);
    }
}
