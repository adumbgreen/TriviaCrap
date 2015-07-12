// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            HtmlWebViewListener, MoPubErrorCode, BaseHtmlWebView

class t
    implements HtmlWebViewListener
{

    private final CustomEventInterstitial.CustomEventInterstitialListener a;

    public t(CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener)
    {
        a = customeventinterstitiallistener;
    }

    public void onClicked()
    {
        a.onInterstitialClicked();
    }

    public void onCollapsed()
    {
    }

    public void onFailed(MoPubErrorCode mopuberrorcode)
    {
        a.onInterstitialFailed(mopuberrorcode);
    }

    public void onLoaded(BaseHtmlWebView basehtmlwebview)
    {
        a.onInterstitialLoaded();
    }
}
