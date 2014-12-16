// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, b, AdMarvelInternalWebView

class a
    implements Runnable
{

    private final WeakReference a;

    public void run()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        }
        android.view.View view = admarvelview.findViewWithTag("CURRENT");
        AdMarvelView.a(admarvelview, view);
        if (!AdMarvelView.a(admarvelview))
        {
            AdMarvelView.b(admarvelview, view);
        }
        admarvelview.removeAllViews();
        if (AdMarvelView.d() != null)
        {
            AdMarvelView.d().clear();
        }
        b.b(admarvelview.c);
        AdMarvelInternalWebView.c();
    }

    public lWebView(AdMarvelView admarvelview)
    {
        a = new WeakReference(admarvelview);
    }
}
