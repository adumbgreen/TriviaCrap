// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import java.lang.reflect.Constructor;
import java.util.Map;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdNetwork, AdapterMapping, AdapterMappingItem, Adapter

public final class Adapters
{

    public static final int TIMEOUT_IN_SECS = 300;

    private Adapters()
    {
    }

    public static Adapter createAdapterInstance(AdNetwork adnetwork, AdapterMapping adaptermapping)
    {
        String s = adnetwork.getNetworkType();
        if (adaptermapping == null) goto _L2; else goto _L1
_L1:
        AdapterMappingItem adaptermappingitem = (AdapterMappingItem)adaptermapping.getAdapterMapping(adnetwork.getAdType()).get(s);
        if (adaptermappingitem == null) goto _L2; else goto _L3
_L3:
        Class class1 = adaptermappingitem.getAdapterClass();
_L5:
        if (class1 == null)
        {
            throw new AdapterException((new StringBuilder()).append("Adapter class for network '").append(s).append("' not found").toString());
        }
        Adapter adapter;
        try
        {
            adapter = (Adapter)class1.getConstructor(new Class[0]).newInstance(new Object[0]);
        }
        catch (Exception exception)
        {
            throw new AdapterException(exception.getMessage());
        }
        return adapter;
_L2:
        class1 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
