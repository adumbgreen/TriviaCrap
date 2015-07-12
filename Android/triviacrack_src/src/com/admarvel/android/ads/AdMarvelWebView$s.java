// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.location.Location;
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
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        if (admarvelinternalwebview != null)
        {
            if (!ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && !ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
            {
                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
                return;
            }
            if (ab.c(admarvelinternalwebview.getContext(), "location"))
            {
                Location location = l.a().a(admarvelinternalwebview);
                if (location != null)
                {
                    c = (new StringBuilder()).append(location.getLatitude()).append(",").append(location.getLongitude()).append(",").append(location.getAccuracy()).toString();
                }
                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
                return;
            }
        }
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, String s)
    {
        c = "null";
        a = new WeakReference(admarvelinternalwebview);
        b = s;
    }
}
