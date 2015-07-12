// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdConfiguration;
import com.mopub.mobileads.HtmlInterstitialWebView;

public class HtmlInterstitialWebViewFactory
{

    protected static HtmlInterstitialWebViewFactory a = new HtmlInterstitialWebViewFactory();

    public HtmlInterstitialWebViewFactory()
    {
    }

    public static HtmlInterstitialWebView create(Context context, com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, boolean flag, String s, String s1, AdConfiguration adconfiguration)
    {
        return a.internalCreate(context, customeventinterstitiallistener, flag, s, s1, adconfiguration);
    }

    public static void setInstance(HtmlInterstitialWebViewFactory htmlinterstitialwebviewfactory)
    {
        a = htmlinterstitialwebviewfactory;
    }

    public HtmlInterstitialWebView internalCreate(Context context, com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, boolean flag, String s, String s1, AdConfiguration adconfiguration)
    {
        HtmlInterstitialWebView htmlinterstitialwebview = new HtmlInterstitialWebView(context, adconfiguration);
        htmlinterstitialwebview.init(customeventinterstitiallistener, flag, s, s1);
        return htmlinterstitialwebview;
    }

}
