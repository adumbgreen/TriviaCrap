// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.util.Log;
import com.google.android.gms.ads.AdListener;

// Referenced classes of package com.mopub.mobileads:
//            GooglePlayServicesInterstitial, MoPubErrorCode

class r extends AdListener
{

    final GooglePlayServicesInterstitial a;

    private r(GooglePlayServicesInterstitial googleplayservicesinterstitial)
    {
        a = googleplayservicesinterstitial;
        super();
    }

    r(GooglePlayServicesInterstitial googleplayservicesinterstitial, GooglePlayServicesInterstitial._cls1 _pcls1)
    {
        this(googleplayservicesinterstitial);
    }

    public void onAdClosed()
    {
        Log.d("MoPub", "Google Play Services interstitial ad dismissed.");
        if (GooglePlayServicesInterstitial.a(a) != null)
        {
            GooglePlayServicesInterstitial.a(a).onInterstitialDismissed();
        }
    }

    public void onAdFailedToLoad(int i)
    {
        Log.d("MoPub", "Google Play Services interstitial ad failed to load.");
        if (GooglePlayServicesInterstitial.a(a) != null)
        {
            GooglePlayServicesInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
    }

    public void onAdLeftApplication()
    {
        Log.d("MoPub", "Google Play Services interstitial ad clicked.");
        if (GooglePlayServicesInterstitial.a(a) != null)
        {
            GooglePlayServicesInterstitial.a(a).onInterstitialClicked();
        }
    }

    public void onAdLoaded()
    {
        Log.d("MoPub", "Google Play Services interstitial ad loaded successfully.");
        if (GooglePlayServicesInterstitial.a(a) != null)
        {
            GooglePlayServicesInterstitial.a(a).onInterstitialLoaded();
        }
    }

    public void onAdOpened()
    {
        Log.d("MoPub", "Showing Google Play Services interstitial ad.");
        if (GooglePlayServicesInterstitial.a(a) != null)
        {
            GooglePlayServicesInterstitial.a(a).onInterstitialShown();
        }
    }
}
