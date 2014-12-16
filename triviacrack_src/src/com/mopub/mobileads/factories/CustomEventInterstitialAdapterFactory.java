// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.MoPubInterstitial;

public class CustomEventInterstitialAdapterFactory
{

    protected static CustomEventInterstitialAdapterFactory a = new CustomEventInterstitialAdapterFactory();

    public CustomEventInterstitialAdapterFactory()
    {
    }

    public static CustomEventInterstitialAdapter create(MoPubInterstitial mopubinterstitial, String s, String s1)
    {
        return a.a(mopubinterstitial, s, s1);
    }

    public static void setInstance(CustomEventInterstitialAdapterFactory customeventinterstitialadapterfactory)
    {
        a = customeventinterstitialadapterfactory;
    }

    protected CustomEventInterstitialAdapter a(MoPubInterstitial mopubinterstitial, String s, String s1)
    {
        return new CustomEventInterstitialAdapter(mopubinterstitial, s, s1);
    }

}
