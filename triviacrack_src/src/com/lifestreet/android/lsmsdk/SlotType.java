// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class SlotType extends Enum
{

    private static final SlotType $VALUES[];
    public static final SlotType INTERSTITIAL;
    public static final SlotType NORMAL;

    private SlotType(String s, int i)
    {
        super(s, i);
    }

    public static SlotType valueOf(String s)
    {
        return (SlotType)Enum.valueOf(com/lifestreet/android/lsmsdk/SlotType, s);
    }

    public static SlotType[] values()
    {
        return (SlotType[])$VALUES.clone();
    }

    static 
    {
        NORMAL = new SlotType("NORMAL", 0);
        INTERSTITIAL = new SlotType("INTERSTITIAL", 1);
        SlotType aslottype[] = new SlotType[2];
        aslottype[0] = NORMAL;
        aslottype[1] = INTERSTITIAL;
        $VALUES = aslottype;
    }
}
