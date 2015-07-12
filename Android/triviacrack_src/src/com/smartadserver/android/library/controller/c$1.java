// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;

// Referenced classes of package com.smartadserver.android.library.controller:
//            c

class a extends WebViewClient
{

    final com.smartadserver.android.library.controller.c a;

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        c.a(com.smartadserver.android.library.controller.c.c(), "shouldOverrideUrlLoading from iframe interceptor");
        a.a.a(s);
        return true;
    }

    (com.smartadserver.android.library.controller.c c1)
    {
        a = c1;
        super();
    }
}
