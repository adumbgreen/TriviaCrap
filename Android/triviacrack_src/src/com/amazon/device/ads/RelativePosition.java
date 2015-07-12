// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.HashMap;

final class RelativePosition extends Enum
{

    private static final RelativePosition $VALUES[];
    public static final RelativePosition BOTTOM_CENTER;
    public static final RelativePosition BOTTOM_LEFT;
    public static final RelativePosition BOTTOM_RIGHT;
    public static final RelativePosition CENTER;
    private static final HashMap POSITIONS;
    public static final RelativePosition TOP_CENTER;
    public static final RelativePosition TOP_LEFT;
    public static final RelativePosition TOP_RIGHT;

    private RelativePosition(String s, int i)
    {
        super(s, i);
    }

    public static RelativePosition fromString(String s)
    {
        return (RelativePosition)POSITIONS.get(s);
    }

    public static RelativePosition valueOf(String s)
    {
        return (RelativePosition)Enum.valueOf(com/amazon/device/ads/RelativePosition, s);
    }

    public static RelativePosition[] values()
    {
        return (RelativePosition[])$VALUES.clone();
    }

    static 
    {
        TOP_LEFT = new RelativePosition("TOP_LEFT", 0);
        TOP_RIGHT = new RelativePosition("TOP_RIGHT", 1);
        CENTER = new RelativePosition("CENTER", 2);
        BOTTOM_LEFT = new RelativePosition("BOTTOM_LEFT", 3);
        BOTTOM_RIGHT = new RelativePosition("BOTTOM_RIGHT", 4);
        TOP_CENTER = new RelativePosition("TOP_CENTER", 5);
        BOTTOM_CENTER = new RelativePosition("BOTTOM_CENTER", 6);
        RelativePosition arelativeposition[] = new RelativePosition[7];
        arelativeposition[0] = TOP_LEFT;
        arelativeposition[1] = TOP_RIGHT;
        arelativeposition[2] = CENTER;
        arelativeposition[3] = BOTTOM_LEFT;
        arelativeposition[4] = BOTTOM_RIGHT;
        arelativeposition[5] = TOP_CENTER;
        arelativeposition[6] = BOTTOM_CENTER;
        $VALUES = arelativeposition;
        POSITIONS = new HashMap();
        POSITIONS.put("top-left", TOP_LEFT);
        POSITIONS.put("top-right", TOP_RIGHT);
        POSITIONS.put("top-center", TOP_CENTER);
        POSITIONS.put("bottom-left", BOTTOM_LEFT);
        POSITIONS.put("bottom-right", BOTTOM_RIGHT);
        POSITIONS.put("bottom-center", BOTTOM_CENTER);
        POSITIONS.put("center", CENTER);
    }
}
