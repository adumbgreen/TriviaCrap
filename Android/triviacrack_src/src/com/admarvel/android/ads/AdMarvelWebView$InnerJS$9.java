// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class val.callback
    implements Runnable
{

    final val.callback this$0;
    final AdMarvelInternalWebView val$adMarvelInternalWebView;
    final String val$callback;

    public void run()
    {
        val$adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(val$callback).append("(\"NO\")").toString());
    }

    ()
    {
        this$0 = final_;
        val$adMarvelInternalWebView = admarvelinternalwebview;
        val$callback = String.this;
        super();
    }
}
