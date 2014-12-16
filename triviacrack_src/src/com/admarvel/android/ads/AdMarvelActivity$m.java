// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.location.Location;
import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, ab, l

class b
    implements Runnable
{

    private final WeakReference a;
    private final String b;
    private String c;

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
        if (!ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && !ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
            return;
        }
        Location location;
        if (!ab.c(admarvelinternalwebview.getContext(), "location"))
        {
            break MISSING_BLOCK_LABEL_205;
        }
        location = l.a().a(admarvelinternalwebview);
        if (location == null)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        c = (new StringBuilder()).append(location.getLatitude()).append(",").append(location.getLongitude()).append(",").append(location.getAccuracy()).toString();
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
    }

    public View(AdMarvelInternalWebView admarvelinternalwebview, String s)
    {
        c = "null";
        a = new WeakReference(admarvelinternalwebview);
        b = s;
    }
}
