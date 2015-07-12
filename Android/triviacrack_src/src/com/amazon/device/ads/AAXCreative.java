// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Set;

final class AAXCreative extends Enum
{

    private static final AAXCreative $VALUES[];
    public static final AAXCreative CAN_EXPAND1;
    public static final AAXCreative CAN_EXPAND2;
    public static final AAXCreative CAN_PLAY_AUDIO1;
    public static final AAXCreative CAN_PLAY_AUDIO2;
    public static final AAXCreative CAN_PLAY_VIDEO;
    public static final AAXCreative HTML;
    public static final AAXCreative INTERSTITIAL;
    public static final AAXCreative MRAID1;
    public static final AAXCreative MRAID2;
    private final int id;

    private AAXCreative(String s, int i, int j)
    {
        super(s, i);
        id = j;
    }

    public static AAXCreative getPrimaryCreativeType(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1007: 
            return HTML;

        case 1016: 
            return MRAID1;

        case 1017: 
            return MRAID2;

        case 1008: 
            return INTERSTITIAL;
        }
    }

    public static AAXCreative getSecondaryCreativeType(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1003: 
            return CAN_EXPAND1;

        case 1004: 
            return CAN_EXPAND2;

        case 1001: 
            return CAN_PLAY_AUDIO1;

        case 1002: 
            return CAN_PLAY_AUDIO2;

        case 1014: 
            return CAN_PLAY_VIDEO;
        }
    }

    static AAXCreative getTopCreative(Set set)
    {
        if (set.contains(MRAID2))
        {
            return MRAID2;
        }
        if (set.contains(MRAID1))
        {
            return MRAID1;
        }
        if (set.contains(HTML))
        {
            return HTML;
        } else
        {
            return null;
        }
    }

    public static AAXCreative valueOf(String s)
    {
        return (AAXCreative)Enum.valueOf(com/amazon/device/ads/AAXCreative, s);
    }

    public static AAXCreative[] values()
    {
        return (AAXCreative[])$VALUES.clone();
    }

    public int getId()
    {
        return id;
    }

    static 
    {
        HTML = new AAXCreative("HTML", 0, 1007);
        MRAID1 = new AAXCreative("MRAID1", 1, 1016);
        MRAID2 = new AAXCreative("MRAID2", 2, 1017);
        INTERSTITIAL = new AAXCreative("INTERSTITIAL", 3, 1008);
        CAN_PLAY_AUDIO1 = new AAXCreative("CAN_PLAY_AUDIO1", 4, 1001);
        CAN_PLAY_AUDIO2 = new AAXCreative("CAN_PLAY_AUDIO2", 5, 1002);
        CAN_EXPAND1 = new AAXCreative("CAN_EXPAND1", 6, 1003);
        CAN_EXPAND2 = new AAXCreative("CAN_EXPAND2", 7, 1004);
        CAN_PLAY_VIDEO = new AAXCreative("CAN_PLAY_VIDEO", 8, 1014);
        AAXCreative aaaxcreative[] = new AAXCreative[9];
        aaaxcreative[0] = HTML;
        aaaxcreative[1] = MRAID1;
        aaaxcreative[2] = MRAID2;
        aaaxcreative[3] = INTERSTITIAL;
        aaaxcreative[4] = CAN_PLAY_AUDIO1;
        aaaxcreative[5] = CAN_PLAY_AUDIO2;
        aaaxcreative[6] = CAN_EXPAND1;
        aaaxcreative[7] = CAN_EXPAND2;
        aaaxcreative[8] = CAN_PLAY_VIDEO;
        $VALUES = aaaxcreative;
    }
}
