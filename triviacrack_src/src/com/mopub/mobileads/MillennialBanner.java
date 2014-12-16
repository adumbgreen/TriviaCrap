// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMRequest;
import com.millennialmedia.android.MMSDK;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventBanner, w, AdViewController, MoPubErrorCode

class MillennialBanner extends CustomEventBanner
{

    public static final String AD_HEIGHT_KEY = "adHeight";
    public static final String AD_WIDTH_KEY = "adWidth";
    public static final String APID_KEY = "adUnitID";
    private MMAdView a;
    private CustomEventBanner.CustomEventBannerListener b;

    MillennialBanner()
    {
    }

    static CustomEventBanner.CustomEventBannerListener a(MillennialBanner millennialbanner)
    {
        return millennialbanner.b;
    }

    private boolean a(Map map)
    {
        try
        {
            Integer.parseInt((String)map.get("adWidth"));
            Integer.parseInt((String)map.get("adHeight"));
        }
        catch (NumberFormatException numberformatexception)
        {
            return false;
        }
        return map.containsKey("adUnitID");
    }

    static MMAdView b(MillennialBanner millennialbanner)
    {
        return millennialbanner.a;
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, Map map, Map map1)
    {
        b = customeventbannerlistener;
        if (a(map1))
        {
            String s = (String)map1.get("adUnitID");
            int i = Integer.parseInt((String)map1.get("adWidth"));
            int j = Integer.parseInt((String)map1.get("adHeight"));
            MMSDK.initialize(context);
            a = new MMAdView(context);
            a.setListener(new w(this));
            a.setApid(s);
            a.setWidth(i);
            a.setHeight(j);
            Location location = (Location)map.get("location");
            if (location != null)
            {
                MMRequest.setUserLocation(location);
            }
            a.setMMRequest(new MMRequest());
            a.setId(MMSDK.getDefaultAdId());
            AdViewController.a(a);
            a.getAd();
            return;
        } else
        {
            b.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
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
}
