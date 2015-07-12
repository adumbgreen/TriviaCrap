// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, aa, AdMarvelAd, r, 
//            AdMarvelUtils

class c
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private final AdMarvelAd c;

    public void run()
    {
        if (a != null && b != null)
        {
            View view = (View)a.get();
            AdMarvelView admarvelview = (AdMarvelView)b.get();
            if (admarvelview != null)
            {
                View view1 = admarvelview.findViewWithTag("CURRENT");
                if (view1 != null)
                {
                    AdMarvelView.a(admarvelview, view1);
                    AdMarvelView.c(admarvelview);
                    view.setVisibility(0);
                    view.setTag("CURRENT");
                    admarvelview.removeAllViews();
                    admarvelview.addView(view);
                    if (!AdMarvelView.a(admarvelview))
                    {
                        AdMarvelView.b(admarvelview, view1);
                    }
                    aa aa1 = new aa(90F, 0.0F, (float)admarvelview.getWidth() / 2.0F, (float)admarvelview.getHeight() / 2.0F, -0.3F * (float)admarvelview.getWidth(), false);
                    aa1.setDuration(700L);
                    aa1.setFillAfter(true);
                    aa1.setInterpolator(new DecelerateInterpolator());
                    admarvelview.startAnimation(aa1);
                    if (c != null)
                    {
                        if (admarvelview.a())
                        {
                            AdMarvelView.d(admarvelview).b(admarvelview.getContext(), admarvelview, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                        } else
                        {
                            AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                        }
                        if (AdMarvelUtils.isLogDumpEnabled())
                        {
                            (new Handler()).postDelayed(new <init>(c, admarvelview.getContext()), 1000L);
                            return;
                        }
                    }
                }
            }
        }
    }

    public lator(View view, AdMarvelView admarvelview, AdMarvelAd admarvelad)
    {
        a = new WeakReference(view);
        b = new WeakReference(admarvelview);
        c = admarvelad;
    }
}
