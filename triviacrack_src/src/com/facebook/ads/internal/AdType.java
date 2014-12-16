// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;


public final class AdType extends Enum
{

    private static final AdType $VALUES[];
    public static final AdType HTML;
    public static final AdType NATIVE;
    private final int value;

    private AdType(String s, int i, int j)
    {
        super(s, i);
        value = j;
    }

    public static AdType valueOf(String s)
    {
        return (AdType)Enum.valueOf(com/facebook/ads/internal/AdType, s);
    }

    public static AdType[] values()
    {
        return (AdType[])$VALUES.clone();
    }

    public int getValue()
    {
        return value;
    }

    static 
    {
        HTML = new AdType("HTML", 0, 0);
        NATIVE = new AdType("NATIVE", 1, 1);
        AdType aadtype[] = new AdType[2];
        aadtype[0] = HTML;
        aadtype[1] = NATIVE;
        $VALUES = aadtype;
    }
}
