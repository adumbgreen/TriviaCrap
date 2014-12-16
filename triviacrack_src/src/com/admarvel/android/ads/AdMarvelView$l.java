// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            s, AdMarvelView, r, AdMarvelAd, 
//            AdMarvelWebView

class a
    implements s
{

    private final WeakReference a;

    public void a()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        } else
        {
            AdMarvelView.d(admarvelview).a();
            return;
        }
    }

    public void a(AdMarvelAd admarvelad, String s1)
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        } else
        {
            AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, s1, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            return;
        }
    }

    public void a(AdMarvelWebView admarvelwebview, AdMarvelAd admarvelad)
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        } else
        {
            AdMarvelView.e(admarvelview).post(new <init>(admarvelview, admarvelad));
            return;
        }
    }

    public void a(AdMarvelWebView admarvelwebview, AdMarvelAd admarvelad, int i, rrorReason rrorreason)
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview != null)
        {
            android.view.View view = admarvelview.findViewWithTag("PENDING");
            if (view != null)
            {
                admarvelview.removeView(view);
            }
            if (admarvelad != null)
            {
                AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, i, rrorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                return;
            }
        }
    }

    public void b()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        } else
        {
            AdMarvelView.d(admarvelview).b();
            return;
        }
    }

    public rrorReason(AdMarvelView admarvelview)
    {
        a = new WeakReference(admarvelview);
    }
}
