// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventBannerAdapter;
import com.mopub.mobileads.MoPubView;

public class CustomEventBannerAdapterFactory
{

    protected static CustomEventBannerAdapterFactory a = new CustomEventBannerAdapterFactory();

    public CustomEventBannerAdapterFactory()
    {
    }

    public static CustomEventBannerAdapter create(MoPubView mopubview, String s, String s1)
    {
        return a.a(mopubview, s, s1);
    }

    public static void setInstance(CustomEventBannerAdapterFactory customeventbanneradapterfactory)
    {
        a = customeventbanneradapterfactory;
    }

    protected CustomEventBannerAdapter a(MoPubView mopubview, String s, String s1)
    {
        return new CustomEventBannerAdapter(mopubview, s, s1);
    }

}
