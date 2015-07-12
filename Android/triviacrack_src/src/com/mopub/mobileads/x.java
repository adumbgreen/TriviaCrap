// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.util.Log;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.RequestListener;

// Referenced classes of package com.mopub.mobileads:
//            MillennialInterstitial, MoPubErrorCode

class x
    implements RequestListener
{

    final MillennialInterstitial a;

    x(MillennialInterstitial millennialinterstitial)
    {
        a = millennialinterstitial;
        super();
    }

    public void MMAdOverlayClosed(MMAd mmad)
    {
        Log.d("MoPub", "Millennial interstitial ad dismissed.");
        MillennialInterstitial.a(a).onInterstitialDismissed();
    }

    public void MMAdOverlayLaunched(MMAd mmad)
    {
        Log.d("MoPub", "Showing Millennial interstitial ad.");
        MillennialInterstitial.a(a).onInterstitialShown();
    }

    public void MMAdRequestIsCaching(MMAd mmad)
    {
    }

    public void onSingleTap(MMAd mmad)
    {
        Log.d("MoPub", "Millennial interstitial clicked.");
        MillennialInterstitial.a(a).onInterstitialClicked();
    }

    public void requestCompleted(MMAd mmad)
    {
        if (MillennialInterstitial.b(a).isAdAvailable())
        {
            Log.d("MoPub", "Millennial interstitial ad loaded successfully.");
            MillennialInterstitial.a(a).onInterstitialLoaded();
            return;
        } else
        {
            Log.d("MoPub", "Millennial interstitial request completed, but no ad was available.");
            MillennialInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
    }

    public void requestFailed(MMAd mmad, MMException mmexception)
    {
        if (MillennialInterstitial.b(a) == null || mmexception == null)
        {
            MillennialInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        if (mmexception.getCode() == 17 && MillennialInterstitial.b(a).isAdAvailable())
        {
            Log.d("MoPub", "Millennial interstitial loaded successfully from cache.");
            MillennialInterstitial.a(a).onInterstitialLoaded();
            return;
        } else
        {
            Log.d("MoPub", "Millennial interstitial ad failed to load.");
            MillennialInterstitial.a(a).onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
    }
}
