// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.amazon.device.ads:
//            PreloadCallback, ViewManager

class callback extends WebViewClient
{

    private final PreloadCallback callback;
    final ViewManager this$0;

    public void onPageFinished(WebView webview, String s)
    {
        if (callback != null)
        {
            callback.onPreloadComplete(s);
        }
    }

    public (PreloadCallback preloadcallback)
    {
        this$0 = ViewManager.this;
        super();
        callback = preloadcallback;
    }
}
