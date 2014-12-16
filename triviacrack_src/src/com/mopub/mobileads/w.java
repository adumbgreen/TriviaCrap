// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.util.Log;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.RequestListener;

// Referenced classes of package com.mopub.mobileads:
//            MillennialBanner, MoPubErrorCode

class w
    implements RequestListener
{

    final MillennialBanner a;

    w(MillennialBanner millennialbanner)
    {
        a = millennialbanner;
        super();
    }

    public void MMAdOverlayClosed(MMAd mmad)
    {
        Log.d("MoPub", "Millennial banner ad closed.");
        MillennialBanner.a(a).onBannerCollapsed();
    }

    public void MMAdOverlayLaunched(MMAd mmad)
    {
        Log.d("MoPub", "Millennial banner ad Launched.");
        MillennialBanner.a(a).onBannerExpanded();
    }

    public void MMAdRequestIsCaching(MMAd mmad)
    {
    }

    public void onSingleTap(MMAd mmad)
    {
        MillennialBanner.a(a).onBannerClicked();
    }

    public void requestCompleted(MMAd mmad)
    {
        Log.d("MoPub", "Millennial banner ad loaded successfully. Showing ad...");
        MillennialBanner.a(a).onBannerLoaded(MillennialBanner.b(a));
    }

    public void requestFailed(MMAd mmad, MMException mmexception)
    {
        Log.d("MoPub", "Millennial banner ad failed to load.");
        MillennialBanner.a(a).onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }
}
