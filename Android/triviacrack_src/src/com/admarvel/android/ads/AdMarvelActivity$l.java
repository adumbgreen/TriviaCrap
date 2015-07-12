// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.b.a;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelActivity, AdMarvelInterstitialAds, ab

class c
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private final String c;

    public void run()
    {
        AdMarvelActivity admarvelactivity;
        try
        {
            if ((AdMarvelInternalWebView)a.get() == null)
            {
                return;
            }
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        admarvelactivity = (AdMarvelActivity)b.get();
        if (admarvelactivity == null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        if (c == null || c.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        if (AdMarvelInterstitialAds.enableOfflineSDK)
        {
            (new a()).a(c, admarvelactivity, AdMarvelActivity.f(admarvelactivity));
            return;
        }
        (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).a(c);
    }

    public View(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s)
    {
        a = new WeakReference(admarvelinternalwebview);
        b = new WeakReference(admarvelactivity);
        c = s;
    }
}
