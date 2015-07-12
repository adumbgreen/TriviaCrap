// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventInterstitial;
import com.etermax.mopubads.custom.a.b;
import com.etermax.mopubads.custom.a.c;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class SmartAdsCustomEventInterstitial extends BaseCustomEventInterstitial
{

    private c a;
    private CustomEventInterstitial.CustomEventInterstitialListener b;

    public SmartAdsCustomEventInterstitial()
    {
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject)
    {
        com.etermax.a.a.c("mopub ads", "SmartAdsCustomEventInterstitial - loadCustomInterstitialAd");
        try
        {
            b = customeventinterstitiallistener;
            b b1 = new b(jsonobject);
            a = new c(context, b1.a(), b1.b(), b1.c());
            b.onInterstitialLoaded();
            return;
        }
        catch (Exception exception)
        {
            com.etermax.a.a.c("mopub ads", "SmartAdsCustomEventInterstitial - adLoadingFailed");
        }
        b.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }

    public void onInvalidate()
    {
        if (a != null)
        {
            a.a();
        }
    }

    public void showInterstitial()
    {
        a.a(b);
    }
}
