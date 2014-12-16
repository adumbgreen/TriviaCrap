// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

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
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        if (admarvelinternalwebview == null)
        {
            return;
        }
        if (ab.f(admarvelinternalwebview.getContext()))
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
            return;
        } else
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
            return;
        }
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, String s)
    {
        a = new WeakReference(admarvelinternalwebview);
        b = s;
    }
}
