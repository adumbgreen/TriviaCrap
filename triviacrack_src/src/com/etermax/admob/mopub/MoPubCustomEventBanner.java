// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mopub;

import android.app.Activity;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventBanner;
import com.etermax.k;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import org.json.JSONObject;

public class MoPubCustomEventBanner extends BaseCustomEventBanner
    implements com.mopub.mobileads.MoPubView.BannerAdListener
{

    MoPubView bannerView;
    CustomEventBannerListener mListener;

    public MoPubCustomEventBanner()
    {
    }

    public void destroy()
    {
        a.c("admob ads", "MoPubCustomEventBanner - destroy");
        if (bannerView != null)
        {
            bannerView.destroy();
            bannerView = null;
        }
    }

    public void onBannerClicked(MoPubView mopubview)
    {
        mListener.onClick();
        a.c("admob ads", "MoPubCustomEventBanner - onBannerClicked");
    }

    public void onBannerCollapsed(MoPubView mopubview)
    {
    }

    public void onBannerExpanded(MoPubView mopubview)
    {
    }

    public void onBannerFailed(MoPubView mopubview, MoPubErrorCode mopuberrorcode)
    {
        mListener.onFailedToReceiveAd();
        a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventBanner - onBannerFailed - error: ").append(mopuberrorcode.toString()).toString());
    }

    public void onBannerLoaded(MoPubView mopubview)
    {
        mListener.onReceivedAd(mopubview);
        a.c("admob ads", "MoPubCustomEventBanner - onBannerLoaded");
    }

    protected void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        mListener = customeventbannerlistener;
        String s1 = jsonobject.getString("adunit");
        a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventBanner - adUnitId = ").append(s1).toString());
        bannerView = (MoPubView)LayoutInflater.from(activity).inflate(k.mopub_banner, new LinearLayout(activity), false);
        bannerView.setAdUnitId(s1);
        bannerView.setBannerAdListener(this);
        bannerView.loadAd();
_L1:
        return;
        Exception exception;
        exception;
        a.a("admob ads", "MoPubCustomEventBanner - Exception", exception);
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd();
            return;
        }
          goto _L1
    }
}
