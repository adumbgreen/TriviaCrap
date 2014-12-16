// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.util.Log;
import com.google.android.gms.ads.AdListener;

// Referenced classes of package com.mopub.mobileads:
//            GooglePlayServicesBanner, MoPubErrorCode

class q extends AdListener
{

    final GooglePlayServicesBanner a;

    private q(GooglePlayServicesBanner googleplayservicesbanner)
    {
        a = googleplayservicesbanner;
        super();
    }

    q(GooglePlayServicesBanner googleplayservicesbanner, GooglePlayServicesBanner._cls1 _pcls1)
    {
        this(googleplayservicesbanner);
    }

    public void onAdClosed()
    {
    }

    public void onAdFailedToLoad(int i)
    {
        Log.d("MoPub", "Google Play Services banner ad failed to load.");
        if (GooglePlayServicesBanner.a(a) != null)
        {
            GooglePlayServicesBanner.a(a).onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
    }

    public void onAdLeftApplication()
    {
    }

    public void onAdLoaded()
    {
        Log.d("MoPub", "Google Play Services banner ad loaded successfully. Showing ad...");
        if (GooglePlayServicesBanner.a(a) != null)
        {
            GooglePlayServicesBanner.a(a).onBannerLoaded(GooglePlayServicesBanner.b(a));
        }
    }

    public void onAdOpened()
    {
        Log.d("MoPub", "Google Play Services banner ad clicked.");
        if (GooglePlayServicesBanner.a(a) != null)
        {
            GooglePlayServicesBanner.a(a).onBannerClicked();
        }
    }
}
