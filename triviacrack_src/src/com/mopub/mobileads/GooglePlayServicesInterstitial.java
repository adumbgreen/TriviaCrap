// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.InterstitialAd;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventInterstitial, r, MoPubErrorCode

public class GooglePlayServicesInterstitial extends CustomEventInterstitial
{

    private CustomEventInterstitial.CustomEventInterstitialListener a;
    private InterstitialAd b;

    public GooglePlayServicesInterstitial()
    {
    }

    static CustomEventInterstitial.CustomEventInterstitialListener a(GooglePlayServicesInterstitial googleplayservicesinterstitial)
    {
        return googleplayservicesinterstitial.a;
    }

    private boolean a(Map map)
    {
        return map.containsKey("adUnitID");
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, Map map, Map map1)
    {
        a = customeventinterstitiallistener;
        if (a(map1))
        {
            String s = (String)map1.get("adUnitID");
            b = new InterstitialAd(context);
            b.setAdListener(new r(this));
            b.setAdUnitId(s);
            com.google.android.gms.ads.AdRequest adrequest = (new com.google.android.gms.ads.AdRequest.Builder()).build();
            b.loadAd(adrequest);
            return;
        } else
        {
            a.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
    }

    protected void onInvalidate()
    {
        if (b != null)
        {
            b.setAdListener(null);
        }
    }

    protected void showInterstitial()
    {
        if (b.isLoaded())
        {
            b.show();
            return;
        } else
        {
            Log.d("MoPub", "Tried to show a Google Play Services interstitial ad before it finished loading. Please try again.");
            return;
        }
    }
}
