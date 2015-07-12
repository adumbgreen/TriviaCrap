// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView

class a
    implements Runnable
{

    private final WeakReference a;
    private String b;

    public void run()
    {
        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
        AdMarvelInternalWebView admarvelinternalwebview;
        if (admarvelwebview != null)
        {
            if ((admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString())) != null)
            {
                int i = admarvelinternalwebview.getVisibility();
                if (b.equals("show") && i != 0)
                {
                    admarvelinternalwebview.setVisibility(0);
                }
                if (b.equals("hide") && i == 0)
                {
                    admarvelinternalwebview.setVisibility(4);
                    return;
                }
            }
        }
    }

    public View(String s, AdMarvelWebView admarvelwebview)
    {
        b = null;
        b = s;
        a = new WeakReference(admarvelwebview);
    }
}
