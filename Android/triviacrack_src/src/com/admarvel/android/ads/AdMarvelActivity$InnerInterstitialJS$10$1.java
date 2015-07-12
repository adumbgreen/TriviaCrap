// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelActivity

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

    // Unreferenced inner class com/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$10

/* anonymous class */
    class AdMarvelActivity.InnerInterstitialJS._cls10
        implements android.content.DialogInterface.OnClickListener
    {

        final AdMarvelActivity.InnerInterstitialJS this$0;
        final AdMarvelActivity val$adMarvelActivity;
        final AdMarvelInternalWebView val$adMarvelInternalWebView;
        final String val$callback;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if (callback != null)
            {
                AdMarvelActivity.f(adMarvelActivity).post(new AdMarvelActivity.InnerInterstitialJS._cls10._cls1());
            }
            dialoginterface.cancel();
        }

            
            {
                this$0 = final_innerinterstitialjs;
                callback = s;
                adMarvelActivity = admarvelactivity;
                adMarvelInternalWebView = AdMarvelInternalWebView.this;
                super();
            }
    }

}
