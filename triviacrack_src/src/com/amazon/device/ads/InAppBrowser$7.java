// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.View;
import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            InAppBrowser, Log, WebUtils

class val.originalUrl
    implements android.view.tener
{

    final InAppBrowser this$0;
    final String val$originalUrl;

    public void onClick(View view)
    {
        String s = InAppBrowser.access$200(InAppBrowser.this).getUrl();
        if (s == null)
        {
            Log.w(InAppBrowser.LOG_TAG, "The current URL is null. Reverting to the original URL for external browser.");
            s = val$originalUrl;
        }
        WebUtils.launchActivityForIntentLink(s, InAppBrowser.access$200(InAppBrowser.this).getContext());
    }

    ()
    {
        this$0 = final_inappbrowser;
        val$originalUrl = String.this;
        super();
    }
}
