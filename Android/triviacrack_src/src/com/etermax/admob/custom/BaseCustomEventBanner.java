// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.app.Activity;
import com.etermax.a.a;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBanner;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.custom:
//            BaseAdEvent

public abstract class BaseCustomEventBanner extends BaseAdEvent
    implements CustomEventBanner
{

    public BaseCustomEventBanner()
    {
    }

    public void requestBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, String s1, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        initialize(activity, s1);
        if (adAvailable())
        {
            a.c("admob ads", (new StringBuilder()).append("BaseCustomEventBanner - Ad '").append(s).append("' is available").toString());
            requestCustomBannerAd(customeventbannerlistener, activity, s, getAdData(), adsize, mediationadrequest, obj);
            return;
        } else
        {
            a.c("admob ads", (new StringBuilder()).append("BaseCustomEventBanner - Ad '").append(s).append("' is NOT available (App Version = ").append(appVersion.get()).append(", min Version Supported = ").append(minAppVersionSupported.get()).toString());
            customeventbannerlistener.onFailedToReceiveAd();
            return;
        }
    }

    protected abstract void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj);
}
