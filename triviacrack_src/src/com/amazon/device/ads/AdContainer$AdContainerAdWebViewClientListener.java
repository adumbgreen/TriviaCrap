// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            AdContainer

class <init>
    implements <init>
{

    final AdContainer this$0;

    public void onLoadResource(WebView webview, String s)
    {
    }

    public void onPageFinished(WebView webview, String s)
    {
        AdContainer.this.onPageFinished(webview, s);
    }

    public void onPageStarted(WebView webview, String s)
    {
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
    }

    private ()
    {
        this$0 = AdContainer.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
