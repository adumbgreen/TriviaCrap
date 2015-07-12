// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            UserAgentManager, WebViewFactory, Version

class val.context
    implements Runnable
{

    final UserAgentManager this$0;
    final Context val$context;

    public void run()
    {
        UserAgentManager.access$002(UserAgentManager.this, WebViewFactory.getInstance().createWebView(val$context).getSettings().getUserAgentString());
        UserAgentManager.access$102(UserAgentManager.this, (new StringBuilder()).append(UserAgentManager.access$000(UserAgentManager.this)).append(" ").append(Version.getUserAgentSDKVersion()).toString());
    }

    ()
    {
        this$0 = final_useragentmanager;
        val$context = Context.this;
        super();
    }
}
