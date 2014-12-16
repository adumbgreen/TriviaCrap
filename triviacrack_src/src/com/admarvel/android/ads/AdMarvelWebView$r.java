// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import com.admarvel.android.b.a;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelWebView, AdMarvelView, ab

class c
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private final String c;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        if ((AdMarvelInternalWebView)a.get() != null)
        {
            if ((admarvelwebview = (AdMarvelWebView)b.get()) != null && c != null && c.length() != 0)
            {
                if (AdMarvelView.b)
                {
                    (new a()).a(c, admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview));
                    return;
                } else
                {
                    (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).a(c);
                    return;
                }
            }
        }
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s)
    {
        a = new WeakReference(admarvelinternalwebview);
        b = new WeakReference(admarvelwebview);
        c = s;
    }
}
