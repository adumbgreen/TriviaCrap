// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.amazon.device.ads.AdTargetingOptions;
import com.amazon.device.ads.InterstitialAd;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventInterstitial;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode, AmazonCustomCommon, i

public class AmazonCustomInterstitial extends BaseCustomEventInterstitial
{

    private InterstitialAd a;
    private CustomEventInterstitial.CustomEventInterstitialListener b;

    public AmazonCustomInterstitial()
    {
    }

    static CustomEventInterstitial.CustomEventInterstitialListener a(AmazonCustomInterstitial amazoncustominterstitial)
    {
        return amazoncustominterstitial.b;
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject)
    {
        b = customeventinterstitiallistener;
        String s = jsonobject.getString("appId");
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        Activity activity = (Activity)context;
          goto _L3
_L5:
        AmazonCustomCommon.init(s, false);
        com.etermax.a.a.c("MoPub", (new StringBuilder()).append("Amazon Interstitial - Loading (").append(s).append(")").toString());
        a = new InterstitialAd(activity);
        AdTargetingOptions adtargetingoptions = new AdTargetingOptions();
        a.setListener(new i(this));
        a.loadAd(adtargetingoptions);
        return;
_L4:
        try
        {
            b.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        catch (Exception exception)
        {
            com.etermax.a.a.c("MoPub", "Amazon Interstitial ad failed to load.");
        }
        b.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
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
            a.setListener(null);
            a = null;
        }
    }

    protected void showInterstitial()
    {
        if (a != null && !a.isLoading() && !a.isShowing())
        {
            if (a.showAd())
            {
                com.etermax.a.a.c("MoPub", "Amazon interstitial shown");
                b.onInterstitialShown();
                return;
            } else
            {
                com.etermax.a.a.c("MoPub", "Amazon interstitial failed to show");
                return;
            }
        } else
        {
            com.etermax.a.a.c("MoPub", "Tried to show an Amazon interstitial ad before it finished loading. Please try again.");
            return;
        }
    }
}
