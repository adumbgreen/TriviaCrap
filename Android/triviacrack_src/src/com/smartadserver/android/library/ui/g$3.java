// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;

// Referenced classes of package com.smartadserver.android.library.ui:
//            g

class a extends WebViewClient
{

    final g a;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (a.a())
        {
            g.b(a).setVisibility(4);
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        if (a.a())
        {
            g.b(a).setVisibility(0);
        }
    }

    (g g1)
    {
        a = g1;
        super();
    }
}
