// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.util.VersionCode;

// Referenced classes of package com.mopub.mobileads:
//            BaseHtmlWebView, v, t, AdConfiguration, 
//            u

public class HtmlInterstitialWebView extends BaseHtmlWebView
{

    private Handler b;

    public HtmlInterstitialWebView(Context context, AdConfiguration adconfiguration)
    {
        super(context, adconfiguration);
        b = new Handler();
    }

    static void a(HtmlInterstitialWebView htmlinterstitialwebview, Runnable runnable)
    {
        htmlinterstitialwebview.a(runnable);
    }

    private void a(Runnable runnable)
    {
        b.post(runnable);
    }

    void a(u u)
    {
        final class a
        {

            final u a;
            final HtmlInterstitialWebView b;

            public boolean fireFinishLoad()
            {
                HtmlInterstitialWebView.a(b, new Runnable(this) {

                    final a a;

                    public void run()
                    {
                        a.a.onInterstitialLoaded();
                    }

            
            {
                a = a1;
                super();
            }
                });
                return true;
            }

            a(u u)
            {
                b = HtmlInterstitialWebView.this;
                a = u;
                super();
            }
        }

        addJavascriptInterface(new a(u), "mopubUriInterface");
    }

    public void destroy()
    {
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.HONEYCOMB))
        {
            removeJavascriptInterface("mopubUriInterface");
        }
        super.destroy();
    }

    public void init(CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, boolean flag, String s, String s1)
    {
        super.init(flag);
        setWebViewClient(new v(new t(customeventinterstitiallistener), this, s1, s));
        a(new u(customeventinterstitiallistener) {

            final CustomEventInterstitial.CustomEventInterstitialListener a;
            final HtmlInterstitialWebView b;

            public void onInterstitialLoaded()
            {
                if (!b.a)
                {
                    a.onInterstitialLoaded();
                }
            }

            
            {
                b = HtmlInterstitialWebView.this;
                a = customeventinterstitiallistener;
                super();
            }
        });
    }
}
