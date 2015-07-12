// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, AdMarvelWebView

class a
    implements Runnable
{

    private final WeakReference a;

    public void run()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        android.view.View view;
        if (admarvelview != null)
        {
            if ((view = admarvelview.findViewWithTag("CURRENT")) != null && (view instanceof AdMarvelWebView))
            {
                ((AdMarvelWebView)view).e();
                return;
            }
        }
    }

    public (AdMarvelView admarvelview)
    {
        a = new WeakReference(admarvelview);
    }
}
