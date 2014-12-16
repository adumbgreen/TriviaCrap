// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelAdapterListener, AdMarvelView, AdMarvelAd, r

class b
    implements AdMarvelAdapterListener
{

    private final WeakReference a;
    private AdMarvelAd b;

    public void onClickAd(String s)
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        AdMarvelAd admarvelad;
        if (admarvelview != null)
        {
            if ((admarvelad = AdMarvelView.g(admarvelview)) != null)
            {
                AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, s, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                return;
            }
        }
    }

    public void onClose()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        } else
        {
            AdMarvelView.a(admarvelview, false);
            AdMarvelView.d(admarvelview).b();
            return;
        }
    }

    public void onExpand()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        } else
        {
            AdMarvelView.a(admarvelview, true);
            AdMarvelView.d(admarvelview).a();
            return;
        }
    }

    public void onFailedToReceiveAd(int i, rrorReason rrorreason)
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        AdMarvelAd admarvelad = AdMarvelView.g(admarvelview);
        AdMarvelView.e(admarvelview).post(new <init>(admarvelview));
        boolean flag = admarvelad.getRetry().equals(Boolean.valueOf(true));
        boolean flag1 = false;
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        int j = admarvelad.getRetrynum();
        int k = admarvelad.getMaxretries();
        flag1 = false;
        if (j > k)
        {
            continue; /* Loop/switch isn't completed */
        }
        int l = 1 + admarvelad.getRetrynum();
        String s = admarvelad.getExcluded();
        String s1;
        String s2;
        File file;
        if (admarvelad.getExcluded() == null)
        {
            s1 = admarvelad.getBannerid();
        } else
        if (admarvelad.getExcluded().length() > 0)
        {
            s1 = (new StringBuilder()).append(s).append(",").append(admarvelad.getBannerid()).toString();
        } else
        {
            s1 = admarvelad.getBannerid();
        }
        s2 = AdMarvelView.a;
        file = null;
        if (s2 != null)
        {
            file = new File(AdMarvelView.a);
        }
        if (admarvelview.getContext() != null)
        {
            Logging.log("Retry : onRequestAd");
            AdMarvelView.e(admarvelview).post(new <init>(file, admarvelview.getContext(), admarvelad.getTargetParams(), admarvelad.getPartnerId(), admarvelad.getSiteId(), admarvelad.getAndroidId(), admarvelad.getOrientation(), admarvelad.getDeviceConnectivity(), admarvelview, l, s1, AdMarvelView.e(admarvelview)));
        }
        flag1 = true;
        if (flag1) goto _L1; else goto _L3
_L3:
        AdMarvelView.d(admarvelview).a(admarvelview.getContext(), admarvelview, i, rrorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
        return;
    }

    public void onReceiveAd()
    {
        AdMarvelView admarvelview = (AdMarvelView)a.get();
        if (admarvelview == null)
        {
            return;
        } else
        {
            AdMarvelView.e(admarvelview).post(new <init>(admarvelview, AdMarvelView.g(admarvelview)));
            return;
        }
    }

    public rrorReason(AdMarvelView admarvelview)
    {
        a = new WeakReference(admarvelview);
        AdMarvelAd admarvelad;
        if (a.get() != null)
        {
            admarvelad = AdMarvelView.g((AdMarvelView)a.get());
        } else
        {
            admarvelad = null;
        }
        b = admarvelad;
    }
}
