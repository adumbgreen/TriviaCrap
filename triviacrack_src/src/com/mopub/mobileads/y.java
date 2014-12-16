// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            MoPubActivity, p, k, HtmlInterstitialWebView, 
//            MoPubErrorCode

class y
    implements CustomEventInterstitial.CustomEventInterstitialListener
{

    final MoPubActivity a;

    y(MoPubActivity mopubactivity)
    {
        a = mopubactivity;
        super();
    }

    public void onInterstitialClicked()
    {
        p.a(a, a.a(), "com.mopub.action.interstitial.click");
    }

    public void onInterstitialDismissed()
    {
    }

    public void onInterstitialFailed(MoPubErrorCode mopuberrorcode)
    {
        p.a(a, a.a(), "com.mopub.action.interstitial.fail");
        a.finish();
    }

    public void onInterstitialLoaded()
    {
        MoPubActivity.a(a).loadUrl(k.WEB_VIEW_DID_APPEAR.a());
    }

    public void onInterstitialShown()
    {
    }

    public void onLeaveApplication()
    {
    }
}
