// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class a
    implements Runnable
{

    private final WeakReference a;

    public void run()
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
        if (admarvelinternalwebview == null)
        {
            return;
        } else
        {
            admarvelinternalwebview.setLayerType(1, null);
            return;
        }
    }

    public View(AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelinternalwebview);
    }
}
