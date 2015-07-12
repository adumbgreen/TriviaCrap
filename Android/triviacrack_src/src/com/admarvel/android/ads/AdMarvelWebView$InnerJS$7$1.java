// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class this._cls1
    implements Runnable
{

    final l.callback this$1;

    public void run()
    {
        adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
    }

    l.adMarvelInternalWebView()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/admarvel/android/ads/AdMarvelWebView$InnerJS$7

/* anonymous class */
    class AdMarvelWebView.InnerJS._cls7
        implements android.content.DialogInterface.OnClickListener
    {

        final AdMarvelWebView.InnerJS this$0;
        final AdMarvelInternalWebView val$adMarvelInternalWebView;
        final String val$callback;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if (callback != null)
            {
                AdMarvelWebView.InnerJS.access$4900(AdMarvelWebView.InnerJS.this).post(new AdMarvelWebView.InnerJS._cls7._cls1());
            }
            dialoginterface.cancel();
        }

            
            {
                this$0 = final_innerjs;
                callback = s;
                adMarvelInternalWebView = AdMarvelInternalWebView.this;
                super();
            }
    }

}
