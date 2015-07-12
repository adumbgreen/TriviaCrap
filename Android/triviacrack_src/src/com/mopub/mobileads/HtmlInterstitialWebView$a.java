// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            HtmlInterstitialWebView, u

final class a
{

    final u a;
    final HtmlInterstitialWebView b;

    public boolean fireFinishLoad()
    {
        HtmlInterstitialWebView.a(b, new Runnable() {

            final HtmlInterstitialWebView.a a;

            public void run()
            {
                a.a.onInterstitialLoaded();
            }

            
            {
                a = HtmlInterstitialWebView.a.this;
                super();
            }
        });
        return true;
    }

    _cls1.a(HtmlInterstitialWebView htmlinterstitialwebview, u u)
    {
        b = htmlinterstitialwebview;
        a = u;
        super();
    }
}
