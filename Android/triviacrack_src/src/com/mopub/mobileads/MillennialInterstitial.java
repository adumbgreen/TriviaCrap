// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import android.util.Log;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.MMRequest;
import com.millennialmedia.android.MMSDK;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventInterstitial, x, MoPubErrorCode

class MillennialInterstitial extends CustomEventInterstitial
{

    public static final String APID_KEY = "adUnitID";
    private MMInterstitial a;
    private CustomEventInterstitial.CustomEventInterstitialListener b;

    MillennialInterstitial()
    {
    }

    static CustomEventInterstitial.CustomEventInterstitialListener a(MillennialInterstitial millennialinterstitial)
    {
        return millennialinterstitial.b;
    }

    private boolean a(Map map)
    {
        return map.containsKey("adUnitID");
    }

    static MMInterstitial b(MillennialInterstitial millennialinterstitial)
    {
        return millennialinterstitial.a;
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, Map map, Map map1)
    {
        b = customeventinterstitiallistener;
        if (a(map1))
        {
            String s = (String)map1.get("adUnitID");
            MMSDK.initialize(context);
            Location location = (Location)map.get("location");
            if (location != null)
            {
                MMRequest.setUserLocation(location);
            }
            a = new MMInterstitial(context);
            a.setListener(new x(this));
            a.setMMRequest(new MMRequest());
            a.setApid(s);
            a.fetch();
            return;
        } else
        {
            b.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            a.setListener(null);
        }
    }

    protected void showInterstitial()
    {
        if (a.isAdAvailable())
        {
            a.display();
            return;
        } else
        {
            Log.d("MoPub", "Tried to show a Millennial interstitial ad before it finished loading. Please try again.");
            return;
        }
    }
}
