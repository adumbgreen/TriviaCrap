// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            u, HtmlInterstitialWebView

class a
    implements u
{

    final stomEventInterstitialListener a;
    final HtmlInterstitialWebView b;

    public void onInterstitialLoaded()
    {
        if (!b.a)
        {
            a.onInterstitialLoaded();
        }
    }

    stomEventInterstitialListener(HtmlInterstitialWebView htmlinterstitialwebview, stomEventInterstitialListener stomeventinterstitiallistener)
    {
        b = htmlinterstitialwebview;
        a = stomeventinterstitiallistener;
        super();
    }
}
