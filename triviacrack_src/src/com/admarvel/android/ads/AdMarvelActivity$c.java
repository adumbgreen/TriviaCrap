// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, ab

class b
    implements Runnable
{

    private final WeakReference a;
    private final String b;

    public void run()
    {
        AdMarvelInternalWebView admarvelinternalwebview;
        try
        {
            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        if (ab.f(admarvelinternalwebview.getContext()))
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
            return;
        }
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
        return;
    }

    public View(AdMarvelInternalWebView admarvelinternalwebview, String s)
    {
        a = new WeakReference(admarvelinternalwebview);
        b = s;
    }
}
