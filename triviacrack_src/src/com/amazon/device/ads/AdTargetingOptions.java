// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.amazon.device.ads:
//            Log, StringUtils

public class AdTargetingOptions
{

    private static final String LOGTAG = com/amazon/device/ads/AdTargetingOptions.getSimpleName();
    private Map advanced;
    private boolean enableGeoTargeting;
    private long floorPrice;

    public AdTargetingOptions()
    {
        floorPrice = 0x8000000000000000L;
        enableGeoTargeting = false;
        advanced = new HashMap();
    }

    public boolean containsAdvancedOption(String s)
    {
        return advanced.containsKey(s);
    }

    public AdTargetingOptions enableGeoLocation(boolean flag)
    {
        enableGeoTargeting = flag;
        return this;
    }

    public String getAdvancedOption(String s)
    {
        return (String)advanced.get(s);
    }

    public int getAge()
    {
        Log.d(LOGTAG, "getAge API has been deprecated.");
        return 0x80000000;
    }

    HashMap getCopyOfAdvancedOptions()
    {
        return new HashMap(advanced);
    }

    public long getFloorPrice()
    {
        return floorPrice;
    }

    boolean hasFloorPrice()
    {
        return floorPrice > -1L;
    }

    public boolean isGeoLocationEnabled()
    {
        return enableGeoTargeting;
    }

    public AdTargetingOptions setAdvancedOption(String s, String s1)
    {
        if (StringUtils.isNullOrWhiteSpace(s))
        {
            throw new IllegalArgumentException("Option Key must not be null or empty string");
        }
        if (s1 != null)
        {
            advanced.put(s, s1);
            return this;
        } else
        {
            advanced.remove(s);
            return this;
        }
    }

    public AdTargetingOptions setAge(int i)
    {
        Log.d(LOGTAG, "setAge API has been deprecated.");
        return this;
    }

    public AdTargetingOptions setFloorPrice(long l)
    {
        floorPrice = l;
        return this;
    }

}
