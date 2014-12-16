// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.amazon.device.ads:
//            AdProperties

class AdData
    implements Iterable
{

    public static final int CAN_EXPAND1 = 1003;
    public static final int CAN_EXPAND2 = 1004;
    public static final int CAN_PLAY_AUDIO1 = 1001;
    public static final int CAN_PLAY_AUDIO2 = 1002;
    public static final int CAN_PLAY_VIDEO = 1014;
    public static final int HTML = 1007;
    public static final int INTERSTITIAL = 1008;
    public static final int MRAID1 = 1016;
    public static final int MRAID2 = 1017;
    private int adHeight;
    private int adWidth;
    private String creative;
    private Set creativeTypes;
    private long expirationTimeMs;
    private boolean fetched;
    private String impPixelUrl;
    private String instrPixelUrl;
    private AdProperties properties;

    public AdData()
    {
        expirationTimeMs = -1L;
    }

    protected String getCreative()
    {
        return creative;
    }

    protected Set getCreativeTypes()
    {
        return creativeTypes;
    }

    public int getHeight()
    {
        return adHeight;
    }

    protected String getImpressionPixelUrl()
    {
        return impPixelUrl;
    }

    protected String getInstrumentationPixelUrl()
    {
        return instrPixelUrl;
    }

    public boolean getIsFetched()
    {
        return fetched;
    }

    protected AdProperties getProperties()
    {
        return properties;
    }

    public int getWidth()
    {
        return adWidth;
    }

    public boolean isExpired()
    {
        while (expirationTimeMs < 0L || System.currentTimeMillis() <= expirationTimeMs) 
        {
            return false;
        }
        return true;
    }

    public Iterator iterator()
    {
        return creativeTypes.iterator();
    }

    protected void setCreative(String s)
    {
        creative = s;
    }

    protected void setCreativeTypes(Set set)
    {
        creativeTypes = set;
    }

    protected void setExpirationTimeMillis(long l)
    {
        expirationTimeMs = l;
    }

    public void setFetched(boolean flag)
    {
        fetched = flag;
    }

    protected void setHeight(int i)
    {
        adHeight = i;
    }

    protected void setImpressionPixelUrl(String s)
    {
        impPixelUrl = s;
    }

    protected void setInstrumentationPixelUrl(String s)
    {
        instrPixelUrl = s;
    }

    protected void setProperties(AdProperties adproperties)
    {
        properties = adproperties;
    }

    protected void setWidth(int i)
    {
        adWidth = i;
    }
}
