// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;

// Referenced classes of package com.mopub.mobileads:
//            BaseHtmlWebView, v, s, AdConfiguration

public class HtmlBannerWebView extends BaseHtmlWebView
{

    public static final String EXTRA_AD_CLICK_DATA = "com.mopub.intent.extra.AD_CLICK_DATA";

    public HtmlBannerWebView(Context context, AdConfiguration adconfiguration)
    {
        super(context, adconfiguration);
    }

    public void init(CustomEventBanner.CustomEventBannerListener customeventbannerlistener, boolean flag, String s1, String s2)
    {
        super.init(flag);
        setWebViewClient(new v(new s(customeventbannerlistener), this, s2, s1));
    }
}
