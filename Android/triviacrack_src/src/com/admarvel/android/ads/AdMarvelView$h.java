// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import com.admarvel.android.b.a;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, AdMarvelWebView

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;

    public void run()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview != null)
        {
            Handler handler = (Handler)b.get();
            android.content.Context context = admarvelview.getContext();
            android.view.View view = admarvelview.findViewWithTag("CURRENT");
            if (view != null && (view instanceof AdMarvelWebView))
            {
                AdMarvelAd admarvelad = ((AdMarvelWebView)view).getAdMarvelAd();
                if (admarvelad != null)
                {
                    (new a()).a(admarvelad, context, handler);
                    return;
                }
            }
        }
    }

    public (AdMarvelView admarvelview, Handler handler)
    {
        a = new WeakReference(admarvelview);
        b = new WeakReference(handler);
    }
}
