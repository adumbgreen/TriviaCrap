// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

// Referenced classes of package com.smartadserver.android.library.ui:
//            g

class a extends WebChromeClient
{

    final g a;

    public void onProgressChanged(WebView webview, int i)
    {
        if (g.b(a).getVisibility() == 0)
        {
            g.b(a).setProgress(i);
        }
    }

    (g g1)
    {
        a = g1;
        super();
    }
}
