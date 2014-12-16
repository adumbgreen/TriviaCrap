// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;


public final class AdSize extends Enum
{

    private static final AdSize $VALUES[];
    public static final AdSize BANNER_320_50;
    public static final AdSize BANNER_HEIGHT_50;
    public static final AdSize BANNER_HEIGHT_90;
    public static final AdSize INTERSTITIAL;
    private final int height;
    private final int width;

    private AdSize(String s, int i, int j, int k)
    {
        super(s, i);
        width = j;
        height = k;
    }

    public static AdSize valueOf(String s)
    {
        return (AdSize)Enum.valueOf(com/facebook/ads/AdSize, s);
    }

    public static AdSize[] values()
    {
        return (AdSize[])$VALUES.clone();
    }

    public int getHeight()
    {
        return height;
    }

    public int getWidth()
    {
        return width;
    }

    static 
    {
        BANNER_320_50 = new AdSize("BANNER_320_50", 0, 320, 50);
        INTERSTITIAL = new AdSize("INTERSTITIAL", 1, 0, 0);
        BANNER_HEIGHT_50 = new AdSize("BANNER_HEIGHT_50", 2, -1, 50);
        BANNER_HEIGHT_90 = new AdSize("BANNER_HEIGHT_90", 3, -1, 90);
        AdSize aadsize[] = new AdSize[4];
        aadsize[0] = BANNER_320_50;
        aadsize[1] = INTERSTITIAL;
        aadsize[2] = BANNER_HEIGHT_50;
        aadsize[3] = BANNER_HEIGHT_90;
        $VALUES = aadsize;
    }
}
