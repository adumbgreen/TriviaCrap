// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;


public final class AdSize extends Enum
{

    private static final AdSize $VALUES[];
    public static final AdSize SIZE_1024x768;
    public static final AdSize SIZE_300x250;
    public static final AdSize SIZE_320x480;
    public static final AdSize SIZE_320x50;
    public static final AdSize SIZE_728x90;
    public static final AdSize SIZE_768x1024;
    private final int mHeight;
    private final int mWidth;

    private AdSize(String s, int i, int j, int k)
    {
        super(s, i);
        mWidth = j;
        mHeight = k;
    }

    public static AdSize findAdSizeThatFits(int i, int j)
    {
        AdSize adsize = SIZE_320x50;
        AdSize aadsize[] = values();
        int k = aadsize.length;
        for (int l = 0; l < k; l++)
        {
            AdSize adsize1 = aadsize[l];
            if (i >= adsize1.getWidth() && j >= adsize1.getHeight())
            {
                return adsize1;
            }
        }

        return adsize;
    }

    public static AdSize valueOf(String s)
    {
        return (AdSize)Enum.valueOf(com/lifestreet/android/lsmsdk/ads/AdSize, s);
    }

    public static AdSize[] values()
    {
        return (AdSize[])$VALUES.clone();
    }

    public int getHeight()
    {
        return mHeight;
    }

    public int getWidth()
    {
        return mWidth;
    }

    static 
    {
        SIZE_1024x768 = new AdSize("SIZE_1024x768", 0, 1024, 768);
        SIZE_768x1024 = new AdSize("SIZE_768x1024", 1, 768, 1024);
        SIZE_728x90 = new AdSize("SIZE_728x90", 2, 728, 90);
        SIZE_320x480 = new AdSize("SIZE_320x480", 3, 320, 480);
        SIZE_300x250 = new AdSize("SIZE_300x250", 4, 300, 250);
        SIZE_320x50 = new AdSize("SIZE_320x50", 5, 320, 50);
        AdSize aadsize[] = new AdSize[6];
        aadsize[0] = SIZE_1024x768;
        aadsize[1] = SIZE_768x1024;
        aadsize[2] = SIZE_728x90;
        aadsize[3] = SIZE_320x480;
        aadsize[4] = SIZE_300x250;
        aadsize[5] = SIZE_320x50;
        $VALUES = aadsize;
    }
}
