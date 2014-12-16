// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.view.View;
import android.webkit.WebView;

// Referenced classes of package com.mopub.common:
//            MoPubBrowser

class a
    implements android.view.tener
{

    final MoPubBrowser a;

    public void onClick(View view)
    {
        if (MoPubBrowser.c(a).canGoBack())
        {
            MoPubBrowser.c(a).goBack();
        }
    }

    r(MoPubBrowser mopubbrowser)
    {
        a = mopubbrowser;
        super();
    }
}
