// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.webkit.WebView;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDView

class val.script
    implements Runnable
{

    final MRAIDView this$0;
    final String val$script;

    public void run()
    {
        MRAIDWebView mraidwebview;
        if (MRAIDView.access$000(MRAIDView.this) == null)
        {
            mraidwebview = MRAIDView.access$100(MRAIDView.this);
        } else
        {
            mraidwebview = MRAIDView.access$000(MRAIDView.this);
        }
        if (mraidwebview != null && !MRAIDView.access$200(MRAIDView.this))
        {
            mraidwebview.loadUrl((new StringBuilder()).append("javascript:").append(val$script).toString());
        }
    }

    ()
    {
        this$0 = final_mraidview;
        val$script = String.this;
        super();
    }
}
