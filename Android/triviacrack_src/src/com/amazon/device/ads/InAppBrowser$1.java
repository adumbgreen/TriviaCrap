// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.amazon.device.ads:
//            InAppBrowser, Log, StringUtils, WebUtils

class this._cls0 extends WebViewClient
{

    final InAppBrowser this$0;

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        Log.w(InAppBrowser.LOG_TAG, "InApp Browser error: %s", new Object[] {
            s
        });
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        String s1;
        if (!StringUtils.isNullOrWhiteSpace(s))
        {
            if (!(s1 = WebUtils.getScheme(s)).equals("http") && !s1.equals("https"))
            {
                return WebUtils.launchActivityForIntentLink(s, InAppBrowser.access$000(InAppBrowser.this));
            }
        }
        return false;
    }

    ()
    {
        this$0 = InAppBrowser.this;
        super();
    }
}
