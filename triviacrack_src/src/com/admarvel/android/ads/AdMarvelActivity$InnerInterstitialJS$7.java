// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView

class val.adMarvelInternalWebView
    implements android.content.tialJS._cls7
{

    final val.callback this$0;
    final AdMarvelActivity val$adMarvelActivity;
    final AdMarvelInternalWebView val$adMarvelInternalWebView;
    final String val$callback;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (val$callback != null)
        {
            AdMarvelActivity.f(val$adMarvelActivity).post(new Runnable() {

                final AdMarvelActivity.InnerInterstitialJS._cls7 this$1;

                public void run()
                {
                    adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                }

            
            {
                this$1 = AdMarvelActivity.InnerInterstitialJS._cls7.this;
                super();
            }
            });
        }
        dialoginterface.cancel();
    }

    _cls1.this._cls1()
    {
        this$0 = final__pcls1;
        val$callback = s;
        val$adMarvelActivity = admarvelactivity;
        val$adMarvelInternalWebView = AdMarvelInternalWebView.this;
        super();
    }
}
