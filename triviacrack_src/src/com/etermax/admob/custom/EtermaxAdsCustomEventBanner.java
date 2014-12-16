// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.app.Activity;
import android.view.View;
import com.etermax.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.i;
import com.etermax.adsinterface.a.m;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.custom:
//            BaseCustomEventBanner

public class EtermaxAdsCustomEventBanner extends BaseCustomEventBanner
    implements m
{

    private i mCustomBannerContainer;
    private CustomEventBannerListener mListener;

    public EtermaxAdsCustomEventBanner()
    {
    }

    public void destroy()
    {
        a.b("admob ads", "CustomEventBannerTemp - destroy");
        if (mCustomBannerContainer != null)
        {
            mCustomBannerContainer.b();
            mCustomBannerContainer = null;
        }
    }

    public void onClick()
    {
        mListener.onClick();
    }

    public void onFailedToReceiveAd()
    {
        mListener.onFailedToReceiveAd();
    }

    public void onReceivedAd(View view)
    {
        mListener.onReceivedAd(view);
    }

    protected void requestCustomBannerAd(final CustomEventBannerListener listener, final Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        mListener = listener;
        com.etermax.adsinterface.a.a.a(activity, jsonobject, new c() {

            final EtermaxAdsCustomEventBanner this$0;
            final Activity val$activity;
            final CustomEventBannerListener val$listener;

            public void onAdInfoLoadedFailed(Exception exception)
            {
                a.a("admob ads", "CustomEventBannerTemp - Could not read ad parameters", exception);
                listener.onFailedToReceiveAd();
            }

            public void onAdInfoLoadedOk(com.etermax.adsinterface.a.a a1)
            {
                mCustomBannerContainer = new i(activity, a1, EtermaxAdsCustomEventBanner.this);
                mCustomBannerContainer.a();
            }

            
            {
                this$0 = EtermaxAdsCustomEventBanner.this;
                activity = activity1;
                listener = customeventbannerlistener;
                super();
            }
        });
    }



/*
    static i access$002(EtermaxAdsCustomEventBanner etermaxadscustomeventbanner, i j)
    {
        etermaxadscustomeventbanner.mCustomBannerContainer = j;
        return j;
    }

*/
}
