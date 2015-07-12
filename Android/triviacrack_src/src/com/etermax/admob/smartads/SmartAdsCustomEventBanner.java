// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import android.app.Activity;
import com.etermax.admob.custom.BaseCustomEventBanner;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsBannerContainer, SmartAdsHelper

public class SmartAdsCustomEventBanner extends BaseCustomEventBanner
{

    private SmartAdsBannerContainer mSmartAdsContainer;

    public SmartAdsCustomEventBanner()
    {
    }

    public void destroy()
    {
        if (mSmartAdsContainer != null)
        {
            mSmartAdsContainer.destroy();
        }
    }

    protected void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        try
        {
            SmartAdsHelper smartadshelper = new SmartAdsHelper(jsonobject);
            mSmartAdsContainer = new SmartAdsBannerContainer(activity, smartadshelper.getSiteId(), smartadshelper.getPageId(), smartadshelper.getFormatId());
            mSmartAdsContainer.loadAd(customeventbannerlistener);
            return;
        }
        catch (Exception exception)
        {
            customeventbannerlistener.onFailedToReceiveAd();
        }
    }
}
