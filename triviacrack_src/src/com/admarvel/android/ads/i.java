// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.util.Logging;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            c, AdMarvelAnalyticsAdapter, AdMarvelAd, AdMarvelActivity, 
//            AdMarvelVideoActivity

public class i
{

    private AdMarvelInterstitialAds.AdMarvelInterstitialAdListener a;

    public i()
    {
    }

    public void a()
    {
        if (a != null)
        {
            Logging.log("onRequestInterstitialAd");
            a.onRequestInterstitialAd();
        }
    }

    public void a(Context context, AdMarvelUtils.SDKAdNetwork sdkadnetwork, String s, int j, AdMarvelUtils.ErrorReason errorreason, String s1, int k, 
            Map map, String s2)
    {
        try
        {
            c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).onFailedToReceiveAd(s1, k, map, s2);
        }
        catch (Exception exception) { }
        if (a != null)
        {
            Logging.log((new StringBuilder()).append("onFailedToReceiveInterstitialAd : Error Code ").append(j).toString());
            a.onFailedToReceiveInterstitialAd(sdkadnetwork, s, j, errorreason);
        }
    }

    public void a(Context context, AdMarvelUtils.SDKAdNetwork sdkadnetwork, String s, AdMarvelAd admarvelad, String s1, int j, Map map, 
            String s2)
    {
        try
        {
            c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).onReceiveAd(s1, j, map, s2);
        }
        catch (Exception exception) { }
        if (a != null)
        {
            Logging.log("onReceiveInterstitialAd");
            a.onReceiveInterstitialAd(sdkadnetwork, s, admarvelad);
        }
    }

    public void a(Context context, String s, String s1, int j, Map map, String s2)
    {
        try
        {
            c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).onAdClick(s1, j, map, s, s2);
        }
        catch (Exception exception) { }
        if (a != null)
        {
            Logging.log("onClickInterstitialAd");
            a.onClickInterstitialAd(s);
        }
    }

    public void a(AdMarvelActivity admarvelactivity)
    {
        if (a != null)
        {
            Logging.log("onAdmarvelActivityLaunched");
            a.onAdmarvelActivityLaunched(admarvelactivity);
        }
    }

    public void a(AdMarvelInterstitialAds.AdMarvelInterstitialAdListener admarvelinterstitialadlistener)
    {
        a = admarvelinterstitialadlistener;
    }

    public void a(AdMarvelVideoActivity admarvelvideoactivity)
    {
        if (a != null)
        {
            Logging.log("onAdMarvelVideoActivityLaunched");
            a.onAdMarvelVideoActivityLaunched(admarvelvideoactivity);
        }
    }

    public boolean b()
    {
        if (a != null)
        {
            Logging.log("onCloseInterstitialAd");
            a.onCloseInterstitialAd();
            return true;
        } else
        {
            return false;
        }
    }
}
