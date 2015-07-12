// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            u, HtmlInterstitialWebView

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        a.a.onInterstitialLoaded();
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/mopub/mobileads/HtmlInterstitialWebView$a
    final class HtmlInterstitialWebView.a
    {

        final u a;
        final HtmlInterstitialWebView b;

        public boolean fireFinishLoad()
        {
            HtmlInterstitialWebView.a(b, new HtmlInterstitialWebView.a._cls1(this));
            return true;
        }

            HtmlInterstitialWebView.a(HtmlInterstitialWebView htmlinterstitialwebview, u u1)
            {
                b = htmlinterstitialwebview;
                a = u1;
                super();
            }
    }

}
