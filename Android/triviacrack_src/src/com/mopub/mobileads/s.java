// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            HtmlWebViewListener, MoPubErrorCode, BaseHtmlWebView

class s
    implements HtmlWebViewListener
{

    private final CustomEventBanner.CustomEventBannerListener a;

    public s(CustomEventBanner.CustomEventBannerListener customeventbannerlistener)
    {
        a = customeventbannerlistener;
    }

    public void onClicked()
    {
        a.onBannerClicked();
    }

    public void onCollapsed()
    {
        a.onBannerCollapsed();
    }

    public void onFailed(MoPubErrorCode mopuberrorcode)
    {
        a.onBannerFailed(mopuberrorcode);
    }

    public void onLoaded(BaseHtmlWebView basehtmlwebview)
    {
        a.onBannerLoaded(basehtmlwebview);
    }
}
