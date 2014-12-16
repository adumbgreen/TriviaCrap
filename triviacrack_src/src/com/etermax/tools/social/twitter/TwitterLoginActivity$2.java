// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

// Referenced classes of package com.etermax.tools.social.twitter:
//            TwitterLoginActivity, a

class a extends WebViewClient
{

    final String a;
    final TwitterLoginActivity b;

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        b.b(b.getSupportFragmentManager());
        b.finish();
        Toast.makeText(b, s, 1).show();
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s.contains(a))
        {
            String s1 = Uri.parse(s).getQueryParameter("oauth_verifier");
            b.c.a(s1);
            b.finish();
            return true;
        } else
        {
            return false;
        }
    }

    (TwitterLoginActivity twitterloginactivity, String s)
    {
        b = twitterloginactivity;
        a = s;
        super();
    }
}
