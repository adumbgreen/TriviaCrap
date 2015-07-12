// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import com.mopub.mobileads.AdFetcher;
import com.mopub.mobileads.AdViewController;

public class AdFetcherFactory
{

    protected static AdFetcherFactory a = new AdFetcherFactory();

    public AdFetcherFactory()
    {
    }

    public static AdFetcher create(AdViewController adviewcontroller, String s)
    {
        return a.a(adviewcontroller, s);
    }

    public static void setInstance(AdFetcherFactory adfetcherfactory)
    {
        a = adfetcherfactory;
    }

    protected AdFetcher a(AdViewController adviewcontroller, String s)
    {
        return new AdFetcher(adviewcontroller, s);
    }

}
