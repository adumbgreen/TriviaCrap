// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.etermax.adsinterface.a:
//            f, h

class nit> extends WebViewClient
{

    final h a;
    final f b;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        a.contentLoadCompleted(f.a(b));
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        a.contentLoadFailed(new Exception("Error loading web content"));
    }

    (f f1, h h1)
    {
        b = f1;
        a = h1;
        super();
    }
}
