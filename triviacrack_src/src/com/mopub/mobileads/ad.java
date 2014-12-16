// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


final class ad extends Enum
{

    public static final ad CUSTOM_EVENT_AD_READY;
    public static final ad NOT_READY;
    private static final ad a[];

    private ad(String s, int i)
    {
        super(s, i);
    }

    public static ad valueOf(String s)
    {
        return (ad)Enum.valueOf(com/mopub/mobileads/ad, s);
    }

    public static ad[] values()
    {
        return (ad[])a.clone();
    }

    boolean a()
    {
        return this != NOT_READY;
    }

    static 
    {
        CUSTOM_EVENT_AD_READY = new ad("CUSTOM_EVENT_AD_READY", 0);
        NOT_READY = new ad("NOT_READY", 1);
        ad aad[] = new ad[2];
        aad[0] = CUSTOM_EVENT_AD_READY;
        aad[1] = NOT_READY;
        a = aad;
    }
}
