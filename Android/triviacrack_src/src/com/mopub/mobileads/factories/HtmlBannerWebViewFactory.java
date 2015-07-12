// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdConfiguration;
import com.mopub.mobileads.HtmlBannerWebView;

public class HtmlBannerWebViewFactory
{

    protected static HtmlBannerWebViewFactory a = new HtmlBannerWebViewFactory();

    public HtmlBannerWebViewFactory()
    {
    }

    public static HtmlBannerWebView create(Context context, com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener customeventbannerlistener, boolean flag, String s, String s1, AdConfiguration adconfiguration)
    {
        return a.internalCreate(context, customeventbannerlistener, flag, s, s1, adconfiguration);
    }

    public static void setInstance(HtmlBannerWebViewFactory htmlbannerwebviewfactory)
    {
        a = htmlbannerwebviewfactory;
    }

    public HtmlBannerWebView internalCreate(Context context, com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener customeventbannerlistener, boolean flag, String s, String s1, AdConfiguration adconfiguration)
    {
        HtmlBannerWebView htmlbannerwebview = new HtmlBannerWebView(context, adconfiguration);
        htmlbannerwebview.init(customeventbannerlistener, flag, s, s1);
        return htmlbannerwebview;
    }

}
