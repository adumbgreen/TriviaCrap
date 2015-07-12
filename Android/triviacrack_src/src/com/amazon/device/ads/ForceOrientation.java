// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Locale;

final class ForceOrientation extends Enum
{

    private static final ForceOrientation $VALUES[];
    public static final ForceOrientation LANDSCAPE;
    public static final ForceOrientation NONE;
    public static final ForceOrientation PORTRAIT;

    private ForceOrientation(String s, int i)
    {
        super(s, i);
    }

    public static ForceOrientation valueOf(String s)
    {
        return (ForceOrientation)Enum.valueOf(com/amazon/device/ads/ForceOrientation, s);
    }

    public static ForceOrientation[] values()
    {
        return (ForceOrientation[])$VALUES.clone();
    }

    public String toString()
    {
        return name().toLowerCase(Locale.US);
    }

    static 
    {
        PORTRAIT = new ForceOrientation("PORTRAIT", 0);
        LANDSCAPE = new ForceOrientation("LANDSCAPE", 1);
        NONE = new ForceOrientation("NONE", 2);
        ForceOrientation aforceorientation[] = new ForceOrientation[3];
        aforceorientation[0] = PORTRAIT;
        aforceorientation[1] = LANDSCAPE;
        aforceorientation[2] = NONE;
        $VALUES = aforceorientation;
    }
}
