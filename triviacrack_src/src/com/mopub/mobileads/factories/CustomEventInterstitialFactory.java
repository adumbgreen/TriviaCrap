// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitial;
import java.lang.reflect.Constructor;

public class CustomEventInterstitialFactory
{

    private static CustomEventInterstitialFactory a = new CustomEventInterstitialFactory();

    public CustomEventInterstitialFactory()
    {
    }

    public static CustomEventInterstitial create(String s)
    {
        return a.a(s);
    }

    public static void setInstance(CustomEventInterstitialFactory customeventinterstitialfactory)
    {
        a = customeventinterstitialfactory;
    }

    protected CustomEventInterstitial a(String s)
    {
        Constructor constructor = Class.forName(s).asSubclass(com/mopub/mobileads/CustomEventInterstitial).getDeclaredConstructor((Class[])null);
        constructor.setAccessible(true);
        return (CustomEventInterstitial)constructor.newInstance(new Object[0]);
    }

}
