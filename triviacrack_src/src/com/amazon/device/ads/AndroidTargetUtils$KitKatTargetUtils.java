// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            ThreadUtils

class _cls1.val.enable
{

    public static void enableWebViewDebugging(final boolean enable)
    {
        ThreadUtils.executeOnMainThread(new Runnable() {

            final boolean val$enable;

            public void run()
            {
                WebView.setWebContentsDebuggingEnabled(enable);
            }

            
            {
                enable = flag;
                super();
            }
        });
    }

    private _cls1.val.enable()
    {
    }
}
