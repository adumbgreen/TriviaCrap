// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mdotm;

import android.app.Activity;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventBanner;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.mdotm.android.c.d;
import com.mdotm.android.view.MdotMAdView;
import org.json.JSONObject;

public class MdotMCustomEventBanner extends BaseCustomEventBanner
    implements d
{

    MdotMAdView mAdView;
    CustomEventBannerListener mListener;

    public MdotMCustomEventBanner()
    {
    }

    public void destroy()
    {
    }

    public void didShowInterstitial()
    {
    }

    public void onBannerAdClick()
    {
        mListener.onClick();
        a.c("admob ads", "MdotMCustomEventBanner - onBannerAdClick");
    }

    public void onDismissScreen()
    {
        mListener.onDismissScreen();
        a.c("admob ads", "MdotMCustomEventBanner - onBannerDismissScreen");
    }

    public void onFailedToReceiveBannerAd()
    {
        mListener.onFailedToReceiveAd();
        a.c("admob ads", "MdotMCustomEventBanner - onFailedToReceiveBannerAd");
    }

    public void onFailedToReceiveInterstitialAd()
    {
    }

    public void onInterstitialAdClick()
    {
    }

    public void onInterstitialDismiss()
    {
    }

    public void onLeaveApplicationFromBanner()
    {
        mListener.onLeaveApplication();
        a.c("admob ads", "MdotMCustomEventBanner - onLeaveApplicationFromBanner");
    }

    public void onLeaveApplicationFromInterstitial()
    {
    }

    public void onReceiveBannerAd()
    {
        mListener.onReceivedAd(mAdView);
        a.c("admob ads", "MdotMCustomEventBanner - onReceiveBannerAd");
    }

    public void onReceiveInterstitialAd()
    {
    }

    protected void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        mListener = customeventbannerlistener;
        String s1;
        com.mdotm.android.d.a a1;
        AdSize adsize1;
        s1 = jsonobject.getString("key");
        mAdView = new MdotMAdView(activity);
        a1 = new com.mdotm.android.d.a();
        AdSize aadsize[] = new AdSize[7];
        aadsize[0] = new AdSize(320, 50);
        aadsize[1] = new AdSize(300, 50);
        aadsize[2] = new AdSize(300, 250);
        aadsize[3] = new AdSize(320, 480);
        aadsize[4] = new AdSize(480, 320);
        aadsize[5] = new AdSize(468, 60);
        aadsize[6] = new AdSize(728, 90);
        adsize1 = adsize.findBestSize(aadsize);
        if (adsize1 == null)
        {
            try
            {
                mListener.onFailedToReceiveAd();
                a.b("admob ads", (new StringBuilder()).append("MdotMCustomEventBanner - No Ad Retrieved -- MdotM doesn't support requested ad size [").append(adsize).append("]").toString());
                return;
            }
            catch (Exception exception)
            {
                a.a("admob ads", "MdotMCustomEventBanner - Exception", exception);
            }
            break MISSING_BLOCK_LABEL_290;
        }
        a1.c((new StringBuilder()).append(adsize1.getWidth()).append(",").append(adsize1.getHeight()).toString());
        a1.b(s1);
        a1.a("0");
        a1.a(true);
        mAdView.a(this, a1);
        return;
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd();
        }
        return;
    }

    public void willShowInterstitial()
    {
    }
}
