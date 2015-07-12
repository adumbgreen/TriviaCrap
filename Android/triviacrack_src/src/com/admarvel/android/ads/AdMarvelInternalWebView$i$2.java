// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.view.View;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView, o, AdMarvelInterstitialAds, 
//            i

class a
    implements android.view.WebView.i._cls2
{

    final AdMarvelInternalWebView a;
    final Url b;

    public void onClick(View view)
    {
        Activity activity = (Activity)a(b).get();
        if (activity != null && (activity instanceof AdMarvelActivity))
        {
            AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity;
            if (admarvelactivity.e())
            {
                if (AdMarvelInternalWebView.c(a.GUID) != null)
                {
                    AdMarvelInternalWebView.c(a.GUID).a();
                }
                activity.finish();
            } else
            {
                boolean flag = AdMarvelInterstitialAds.getListener().b();
                admarvelactivity.b();
                if (admarvelactivity.e != null && admarvelactivity.e.length() > 0)
                {
                    a.loadUrl((new StringBuilder()).append("javascript:").append(admarvelactivity.e).append("()").toString());
                }
                if (!flag)
                {
                    activity.finish();
                }
                if (admarvelactivity.a() > 2)
                {
                    admarvelactivity.finish();
                    return;
                }
            }
        }
    }

    ( , AdMarvelInternalWebView admarvelinternalwebview)
    {
        b = ;
        a = admarvelinternalwebview;
        super();
    }
}
