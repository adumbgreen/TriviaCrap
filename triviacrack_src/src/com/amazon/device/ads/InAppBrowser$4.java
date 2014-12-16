// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.View;
import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            InAppBrowser

class this._cls0
    implements android.view.tener
{

    final InAppBrowser this$0;

    public void onClick(View view)
    {
        if (InAppBrowser.access$200(InAppBrowser.this).canGoForward())
        {
            InAppBrowser.access$200(InAppBrowser.this).goForward();
        }
    }

    ()
    {
        this$0 = InAppBrowser.this;
        super();
    }
}
