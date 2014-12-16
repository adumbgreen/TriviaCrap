// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


public final class adTypeMetricTag extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES IMAGE_BANNER;
    public static final .VALUES INTERSTITIAL;
    public static final .VALUES MRAID_1;
    public static final .VALUES MRAID_2;
    private final String adTypeMetricTag;
    private final String type;

    public static adTypeMetricTag valueOf(String s)
    {
        return (adTypeMetricTag)Enum.valueOf(com/amazon/device/ads/AdProperties$AdType, s);
    }

    public static adTypeMetricTag[] values()
    {
        return (adTypeMetricTag[])$VALUES.clone();
    }

    String getAdTypeMetricTag()
    {
        return adTypeMetricTag;
    }

    public String toString()
    {
        return type;
    }

    static 
    {
        IMAGE_BANNER = new <init>("IMAGE_BANNER", 0, "Image Banner");
        MRAID_1 = new <init>("MRAID_1", 1, "MRAID 1.0");
        MRAID_2 = new <init>("MRAID_2", 2, "MRAID 2.0");
        INTERSTITIAL = new <init>("INTERSTITIAL", 3, "Interstitial", "i");
        type atype[] = new <init>[4];
        atype[0] = IMAGE_BANNER;
        atype[1] = MRAID_1;
        atype[2] = MRAID_2;
        atype[3] = INTERSTITIAL;
        $VALUES = atype;
    }

    private (String s, int i, String s1)
    {
        this(s, i, s1, null);
    }

    private <init>(String s, int i, String s1, String s2)
    {
        super(s, i);
        type = s1;
        adTypeMetricTag = s2;
    }
}
