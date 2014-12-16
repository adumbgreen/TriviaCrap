// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.amazon.device.ads:
//            AdSDKBridge

class AdSDKBridgeList
    implements Iterable
{

    private final HashMap bridgesByName = new HashMap();

    public AdSDKBridgeList()
    {
    }

    public void addBridge(AdSDKBridge adsdkbridge)
    {
        bridgesByName.put(adsdkbridge.getName(), adsdkbridge);
    }

    public void clear()
    {
        bridgesByName.clear();
    }

    public boolean contains(AdSDKBridge adsdkbridge)
    {
        return bridgesByName.containsKey(adsdkbridge.getName());
    }

    public Iterator iterator()
    {
        return bridgesByName.values().iterator();
    }
}
