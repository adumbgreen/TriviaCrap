// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import android.app.Activity;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventInterstitial;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsInterstitialContainer, SmartAdsHelper

public class SmartAdsCustomEventInterstitial extends BaseCustomEventInterstitial
{

    private CustomEventInterstitialListener mListener;
    private SmartAdsInterstitialContainer mSmartAdsContainer;

    public SmartAdsCustomEventInterstitial()
    {
    }

    public void destroy()
    {
        if (mSmartAdsContainer != null)
        {
            mSmartAdsContainer.destroy();
        }
        super.destroy();
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        a.c("admob ads", "SmartAdsIntersitial - requestInterstitialAd");
        try
        {
            mListener = customeventinterstitiallistener;
            SmartAdsHelper smartadshelper = new SmartAdsHelper(jsonobject);
            mSmartAdsContainer = new SmartAdsInterstitialContainer(activity, smartadshelper.getSiteId(), smartadshelper.getPageId(), smartadshelper.getFormatId());
            customeventinterstitiallistener.onReceivedAd();
            return;
        }
        catch (Exception exception)
        {
            a.c("admob ads", "SmartAdsIntersitial - adLoadingFailed");
        }
        customeventinterstitiallistener.onFailedToReceiveAd();
    }

    public void showInterstitial()
    {
        mSmartAdsContainer.loadAd(mListener);
    }
}
