// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class val.adMarvelInternalWebView
    implements android.content.tener
{

    final val.callback this$0;
    final AdMarvelInternalWebView val$adMarvelInternalWebView;
    final String val$callback;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (val$callback != null)
        {
            cess._mth4900(this._cls0.this).post(new Runnable() {

                final AdMarvelWebView.InnerJS._cls7 this$1;

                public void run()
                {
                    adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                }

            
            {
                this$1 = AdMarvelWebView.InnerJS._cls7.this;
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
        val$adMarvelInternalWebView = AdMarvelInternalWebView.this;
        super();
    }
}
