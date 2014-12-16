// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.etermax.tools.social.twitter:
//            TwitterLoginActivity

class a extends WebChromeClient
{

    final TwitterLoginActivity a;

    public void onProgressChanged(WebView webview, int i)
    {
        if (i == 100)
        {
            a.b(a.getSupportFragmentManager());
        }
    }

    (TwitterLoginActivity twitterloginactivity)
    {
        a = twitterloginactivity;
        super();
    }
}
