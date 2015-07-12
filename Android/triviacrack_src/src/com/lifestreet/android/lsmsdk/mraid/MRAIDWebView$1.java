// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.webkit.WebChromeClient;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDWebView

class this._cls0 extends WebChromeClient
{

    final MRAIDWebView this$0;

    public void onConsoleMessage(String s, int i, String s1)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("WebCore (").append(i).append("): ").append(s).toString());
    }

    ()
    {
        this$0 = MRAIDWebView.this;
        super();
    }
}
