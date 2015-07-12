// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.amazon.device.ads.AdLayout;
import com.amazon.device.ads.AdSize;
import com.amazon.device.ads.AdTargetingOptions;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventBanner;
import com.mopub.common.util.Views;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode, AmazonCustomCommon, h

public class AmazonCustomBanner extends BaseCustomEventBanner
{

    private AdLayout a;
    private CustomEventBanner.CustomEventBannerListener b;

    public AmazonCustomBanner()
    {
    }

    static CustomEventBanner.CustomEventBannerListener a(AmazonCustomBanner amazoncustombanner)
    {
        return amazoncustombanner.b;
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, JSONObject jsonobject)
    {
        AdSize adsize;
        b = customeventbannerlistener;
        adsize = AdSize.SIZE_320x50;
        String s = jsonobject.getString("appId");
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        Activity activity = (Activity)context;
          goto _L3
_L5:
        AmazonCustomCommon.init(s, false);
        com.etermax.a.a.c("MoPub", (new StringBuilder()).append("Amazon Banner - Loading (").append(s).append(", ").append(adsize).append(")").toString());
        a = new AdLayout(activity, adsize);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2);
        a.setLayoutParams(layoutparams);
        AdTargetingOptions adtargetingoptions = new AdTargetingOptions();
        a.setListener(new h(this));
        a.loadAd(adtargetingoptions);
        return;
_L4:
        try
        {
            b.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        catch (Exception exception)
        {
            com.etermax.a.a.c("MoPub", "Amazon banner ad failed to load.");
        }
        b.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
        return;
_L2:
        activity = null;
_L3:
        if (activity != null && s != null) goto _L5; else goto _L4
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            Views.removeFromParent(a);
            a.setListener(null);
            a.destroy();
            a = null;
        }
    }
}
