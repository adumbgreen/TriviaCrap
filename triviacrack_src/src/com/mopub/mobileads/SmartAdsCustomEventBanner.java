// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventBanner;
import com.etermax.mopubads.custom.a.b;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class SmartAdsCustomEventBanner extends BaseCustomEventBanner
{

    private com.etermax.mopubads.custom.a.a a;

    public SmartAdsCustomEventBanner()
    {
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, JSONObject jsonobject)
    {
        com.etermax.a.a.c("mopub ads", "SmartAdsCustomEventBanner - loadCustomBannerAd");
        try
        {
            b b1 = new b(jsonobject);
            a = new com.etermax.mopubads.custom.a.a(context, b1.a(), b1.b(), b1.c());
            a.a(customeventbannerlistener);
            return;
        }
        catch (Exception exception)
        {
            com.etermax.a.a.c("mopub ads", "SmartAdsCustomEventBanner - adLoadingFailed");
        }
        customeventbannerlistener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            a.a();
        }
    }
}
