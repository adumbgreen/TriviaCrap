// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.mobileapptracker:
//            i

final class s
    implements Runnable
{

    final i a;
    private final WeakReference b;

    public s(i j, Context context)
    {
        a = j;
        super();
        b = new WeakReference(context);
    }

    public final void run()
    {
        try
        {
            WebView webview = new WebView((Context)b.get());
            String s1 = webview.getSettings().getUserAgentString();
            webview.destroy();
            i.a(a, s1);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }
}
