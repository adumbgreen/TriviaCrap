// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, ac, AdMarvelView, 
//            AdMarvelAd

class a
    implements Runnable
{

    final int a;
    final AdMarvelWebView b;

    public void run()
    {
        AdMarvelWebView.a(b).setFocusable(true);
        AdMarvelWebView.a(b).setClickable(true);
        AdMarvelWebView.a(b).setBackgroundColor(a);
        AdMarvelWebView.a(b).setScrollContainer(false);
        AdMarvelWebView.a(b).setVerticalScrollBarEnabled(false);
        AdMarvelWebView.a(b).setHorizontalScrollBarEnabled(false);
        WeakReference weakreference1;
        if (ac.a() < 11)
        {
            WeakReference weakreference = new WeakReference(new <init>(b));
            AdMarvelWebView.a(b).setWebViewClient((WebViewClient)weakreference.get());
        } else
        {
            WeakReference weakreference2 = new WeakReference(new <init>(b));
            AdMarvelWebView.a(b).setWebViewClient((WebViewClient)weakreference2.get());
        }
        AdMarvelWebView.a(b, new WeakReference(AdMarvelWebView.a(b)));
        b.addView((View)AdMarvelWebView.b(b).get());
        weakreference1 = new WeakReference(new nerJS((AdMarvelInternalWebView)AdMarvelWebView.b(b).get(), AdMarvelWebView.c(b), AdMarvelWebView.d(b), b, b.getContext()));
        AdMarvelWebView.a(b).addJavascriptInterface(weakreference1.get(), "ADMARVEL");
        if (AdMarvelView.b)
        {
            AdMarvelWebView.a(b).loadDataWithBaseURL((new StringBuilder()).append(AdMarvelWebView.c(b).getOfflineBaseUrl()).append("/").toString(), AdMarvelWebView.e(b), "text/html", "utf-8", null);
            return;
        }
        if (ac.a() < 11)
        {
            String s = (new StringBuilder()).append("content://").append(b.getContext().getPackageName()).append(".AdMarvelLocalFileContentProvider").toString();
            AdMarvelWebView.a(b).loadDataWithBaseURL(s, AdMarvelWebView.e(b), "text/html", "utf-8", null);
            return;
        } else
        {
            AdMarvelWebView.a(b).loadDataWithBaseURL("http://baseurl.admarvel.com", AdMarvelWebView.e(b), "text/html", "utf-8", null);
            return;
        }
    }

    nerJS(AdMarvelWebView admarvelwebview, int i)
    {
        b = admarvelwebview;
        a = i;
        super();
    }
}
