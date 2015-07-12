// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.app.Activity;
import com.etermax.a.a;
import com.etermax.adsinterface.f;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.custom:
//            BaseAdEvent

public abstract class BaseCustomEventInterstitial extends BaseAdEvent
    implements CustomEventInterstitial
{

    public BaseCustomEventInterstitial()
    {
    }

    public void destroy()
    {
        a.c("admob ads", "BaseCustomEventInterstitial - destroy");
        f.a();
    }

    protected abstract void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj);

    public void requestInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, String s1, MediationAdRequest mediationadrequest, Object obj)
    {
        initialize(activity, s1);
        if (adAvailable())
        {
            a.c("admob ads", (new StringBuilder()).append("BaseCustomEventInterstitial - Ad '").append(s).append("' is available").toString());
            requestCustomInterstitialAd(customeventinterstitiallistener, activity, s, getAdData(), mediationadrequest, obj);
            return;
        } else
        {
            a.c("admob ads", (new StringBuilder()).append("BaseCustomEventInterstitial - Ad '").append(s).append("' is NOT available (App Version = ").append(appVersion.get()).append(", min Version Supported = ").append(minAppVersionSupported.get()).toString());
            customeventinterstitiallistener.onFailedToReceiveAd();
            return;
        }
    }
}
