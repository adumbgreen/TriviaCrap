// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class c
    implements Runnable
{

    final AdMarvelInternalWebView a;
    private final WeakReference b;
    private String c;

    public void run()
    {
        AdMarvelInternalWebView admarvelinternalwebview;
        if (b != null)
        {
            if ((admarvelinternalwebview = (AdMarvelInternalWebView)b.get()) != null && !admarvelinternalwebview.isSignalShutdown())
            {
                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(c).toString());
                return;
            }
        }
    }

    public (AdMarvelInternalWebView admarvelinternalwebview, AdMarvelInternalWebView admarvelinternalwebview1, String s)
    {
        a = admarvelinternalwebview;
        super();
        c = null;
        b = new WeakReference(admarvelinternalwebview1);
        c = s;
    }
}
