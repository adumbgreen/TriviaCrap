// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.a;

import android.content.Context;
import android.webkit.WebView;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.a:
//            b

class a extends Thread
{

    final b a;

    public void run()
    {
        if (b.a(a) != null)
        {
            Context context = (Context)b.a(a).get();
            if (context != null)
            {
                WebView webview = new WebView(context.getApplicationContext());
                Logging.log((new StringBuilder()).append("Firing Install Tracking Pixels: ").append(b.b(a).toString()).toString());
                webview.loadDataWithBaseURL(null, b.b(a).toString(), "text/html", "utf-8", null);
            }
        }
    }

    ogging(b b1)
    {
        a = b1;
        super();
    }
}
