// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.admarvel.android.b.a;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, AdMarvelUtils, AdMarvelAd, r, 
//            ab

class b
    implements Runnable
{

    private final AdMarvelAd a;
    private final WeakReference b;

    public void run()
    {
        AdMarvelView admarvelview;
        android.content.Context context;
        View view;
        View view1;
        ab ab1;
        try
        {
            admarvelview = (AdMarvelView)b.get();
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (admarvelview == null)
        {
            return;
        }
        context = admarvelview.getContext();
        if (context == null) goto _L2; else goto _L1
_L1:
        view = admarvelview.findViewWithTag("PENDING");
        if (view == null) goto _L2; else goto _L3
_L3:
        if (AdMarvelUtils.isLogDumpEnabled() && a != null)
        {
            a.setResponseJson();
        }
        view1 = admarvelview.findViewWithTag("CURRENT");
        if (view1 == null) goto _L5; else goto _L4
_L4:
        if (!AdMarvelView.b(admarvelview) && view1.isShown()) goto _L6; else goto _L5
_L5:
        if (a == null || !a.isMustBeVisible() || a.getSdkAdNetwork() != DKAdNetwork.PULSE3D) goto _L8; else goto _L7
_L7:
        view.setTag("CURRENT");
        com.admarvel.android.ads.AdMarvelView.a(admarvelview, view1);
_L16:
        if (!com.admarvel.android.ads.AdMarvelView.a(admarvelview))
        {
            AdMarvelView.b(admarvelview, view1);
        }
        if (a == null) goto _L10; else goto _L9
_L9:
        if (!admarvelview.a()) goto _L12; else goto _L11
_L11:
        AdMarvelView.d(admarvelview).b(context, admarvelview, a.getSiteId(), a.getId(), a.getTargetParams(), a.getIpAddress());
_L10:
        if (AdMarvelUtils.isLogDumpEnabled())
        {
            (new Handler()).postDelayed(new <init>(a, context), 1000L);
        }
_L14:
        ab1 = new ab(context, AdMarvelView.e(admarvelview));
        if (AdMarvelView.b && !AdMarvelView.f(admarvelview))
        {
            (new a()).a(a, context, AdMarvelView.e(admarvelview));
            return;
        }
          goto _L13
_L8:
        com.admarvel.android.ads.AdMarvelView.a(admarvelview, view1);
        AdMarvelView.c(admarvelview);
        view.setTag("CURRENT");
        view.setVisibility(0);
        admarvelview.setHorizontalGravity(1);
        admarvelview.removeAllViews();
        admarvelview.addView(view);
        continue; /* Loop/switch isn't completed */
_L12:
        AdMarvelView.d(admarvelview).a(context, admarvelview, a.getSiteId(), a.getId(), a.getTargetParams(), a.getIpAddress());
          goto _L10
_L6:
        com.admarvel.android.ads.AdMarvelView.a(admarvelview, view, a);
          goto _L14
_L13:
        if (!AdMarvelView.b)
        {
            ab1.a(a);
        }
_L2:
        return;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public DKAdNetwork(AdMarvelView admarvelview, AdMarvelAd admarvelad)
    {
        a = admarvelad;
        b = new WeakReference(admarvelview);
    }
}
