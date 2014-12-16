// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import com.smartadserver.android.library.controller.c;
import com.smartadserver.android.library.controller.d;

// Referenced classes of package com.smartadserver.android.library.ui:
//            g, SASAdView

class a extends g
{

    final Context a;
    final SASAdView b;

    public void setWebChromeClient(WebChromeClient webchromeclient)
    {
        if (b.i == null)
        {
            b.i = new c(a);
            b.i.a = b;
            super.setWebChromeClient(b.i);
        }
        b.i.a(webchromeclient);
    }

    public void setWebViewClient(WebViewClient webviewclient)
    {
        if (b.h == null)
        {
            b.h = new d();
            b.h.a = b;
            super.setWebViewClient(b.h);
        }
        b.h.a(webviewclient);
    }

    (SASAdView sasadview, Context context, Context context1)
    {
        b = sasadview;
        a = context1;
        super(context);
    }
}
