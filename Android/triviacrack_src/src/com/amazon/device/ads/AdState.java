// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


final class AdState extends Enum
{

    private static final AdState $VALUES[];
    public static final AdState DESTROYED;
    public static final AdState EXPANDED;
    public static final AdState INVALID;
    public static final AdState LOADED;
    public static final AdState LOADING;
    public static final AdState READY_TO_LOAD;
    public static final AdState RENDERED;
    public static final AdState RENDERING;
    public static final AdState SHOWING;

    private AdState(String s, int i)
    {
        super(s, i);
    }

    public static AdState valueOf(String s)
    {
        return (AdState)Enum.valueOf(com/amazon/device/ads/AdState, s);
    }

    public static AdState[] values()
    {
        return (AdState[])$VALUES.clone();
    }

    static 
    {
        READY_TO_LOAD = new AdState("READY_TO_LOAD", 0);
        LOADING = new AdState("LOADING", 1);
        LOADED = new AdState("LOADED", 2);
        RENDERING = new AdState("RENDERING", 3);
        RENDERED = new AdState("RENDERED", 4);
        SHOWING = new AdState("SHOWING", 5);
        EXPANDED = new AdState("EXPANDED", 6);
        INVALID = new AdState("INVALID", 7);
        DESTROYED = new AdState("DESTROYED", 8);
        AdState aadstate[] = new AdState[9];
        aadstate[0] = READY_TO_LOAD;
        aadstate[1] = LOADING;
        aadstate[2] = LOADED;
        aadstate[3] = RENDERING;
        aadstate[4] = RENDERED;
        aadstate[5] = SHOWING;
        aadstate[6] = EXPANDED;
        aadstate[7] = INVALID;
        aadstate[8] = DESTROYED;
        $VALUES = aadstate;
    }
}
