// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class AdType extends Enum
{

    private static final AdType $VALUES[];
    public static final AdType AUDIO;
    public static final AdType BANNER;
    public static final AdType DEFAULT;
    public static final AdType INTERSTITIAL;
    public static final AdType VIDEO;

    private AdType(String s, int i)
    {
        super(s, i);
    }

    public static boolean doesNotExist(String s)
    {
        AdType aadtype[] = values();
        int i = aadtype.length;
        for (int j = 0; j < i; j++)
        {
            if (aadtype[j].name().equals(s))
            {
                return false;
            }
        }

        return true;
    }

    public static AdType valueOf(String s)
    {
        return (AdType)Enum.valueOf(com/lifestreet/android/lsmsdk/AdType, s);
    }

    public static AdType[] values()
    {
        return (AdType[])$VALUES.clone();
    }

    static 
    {
        BANNER = new AdType("BANNER", 0);
        INTERSTITIAL = new AdType("INTERSTITIAL", 1);
        VIDEO = new AdType("VIDEO", 2);
        AUDIO = new AdType("AUDIO", 3);
        AdType aadtype[] = new AdType[4];
        aadtype[0] = BANNER;
        aadtype[1] = INTERSTITIAL;
        aadtype[2] = VIDEO;
        aadtype[3] = AUDIO;
        $VALUES = aadtype;
        DEFAULT = BANNER;
    }
}
