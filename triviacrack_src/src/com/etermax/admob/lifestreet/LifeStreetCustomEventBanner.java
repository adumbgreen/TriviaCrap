// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.lifestreet;

import android.app.Activity;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventBanner;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.lifestreet:
//            LifeStreetBannerContainer

public class LifeStreetCustomEventBanner extends BaseCustomEventBanner
{

    LifeStreetBannerContainer mContainer;

    public LifeStreetCustomEventBanner()
    {
    }

    public void destroy()
    {
        if (mContainer != null)
        {
            mContainer.destroy();
            mContainer = null;
        }
    }

    protected void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        try
        {
            String s1 = jsonobject.getString("key");
            mContainer = new LifeStreetBannerContainer(customeventbannerlistener, activity, (new StringBuilder()).append("http://mobile-android.lfstmedia.com/").append(s1).toString(), adsize, mediationadrequest);
            return;
        }
        catch (Exception exception)
        {
            a.a("admob ads", "LifeStreetCustomEventBanner - Excepci\363n cargando el banner", exception);
        }
        customeventbannerlistener.onFailedToReceiveAd();
    }
}
