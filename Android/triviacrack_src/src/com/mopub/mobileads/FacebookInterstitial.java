// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.util.Log;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventInterstitial, MoPubErrorCode

public class FacebookInterstitial extends CustomEventInterstitial
    implements InterstitialAdListener
{

    private InterstitialAd a;
    private CustomEventInterstitial.CustomEventInterstitialListener b;

    public FacebookInterstitial()
    {
    }

    private boolean a(Map map)
    {
        String s = (String)map.get("placement_id");
        return s != null && s.length() > 0;
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, Map map, Map map1)
    {
        b = customeventinterstitiallistener;
        if (a(map1))
        {
            a = new InterstitialAd(context, (String)map1.get("placement_id"));
            a.setAdListener(this);
            a.loadAd();
            return;
        } else
        {
            b.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
    }

    public void onAdClicked(Ad ad)
    {
        Log.d("MoPub", "Facebook interstitial ad clicked.");
        b.onInterstitialClicked();
    }

    public void onAdLoaded(Ad ad)
    {
        Log.d("MoPub", "Facebook interstitial ad loaded successfully.");
        b.onInterstitialLoaded();
    }

    public void onError(Ad ad, AdError aderror)
    {
        Log.d("MoPub", "Facebook interstitial ad failed to load.");
        if (aderror.getErrorCode() == AdError.NO_FILL.getErrorCode())
        {
            b.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        if (aderror.getErrorCode() == AdError.INTERNAL_ERROR.getErrorCode())
        {
            b.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        } else
        {
            b.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
    }

    public void onInterstitialDismissed(Ad ad)
    {
        Log.d("MoPub", "Facebook interstitial ad dismissed.");
        b.onInterstitialDismissed();
    }

    public void onInterstitialDisplayed(Ad ad)
    {
        Log.d("MoPub", "Showing Facebook interstitial ad.");
        b.onInterstitialShown();
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            a.destroy();
            a = null;
        }
    }

    protected void showInterstitial()
    {
        if (a != null && a.isAdLoaded())
        {
            a.show();
            return;
        } else
        {
            Log.d("MoPub", "Tried to show a Facebook interstitial ad before it finished loading. Please try again.");
            return;
        }
    }
}
