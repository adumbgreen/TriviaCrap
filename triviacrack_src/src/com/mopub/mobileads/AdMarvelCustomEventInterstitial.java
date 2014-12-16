// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelActivity;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAds;
import com.admarvel.android.ads.AdMarvelVideoActivity;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventInterstitial;
import java.util.HashMap;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class AdMarvelCustomEventInterstitial extends BaseCustomEventInterstitial
    implements com.admarvel.android.ads.AdMarvelInterstitialAds.AdMarvelInterstitialAdListener
{

    private CustomEventInterstitial.CustomEventInterstitialListener a;
    private AdMarvelInterstitialAds b;
    private AdMarvelActivity c;
    private AdMarvelVideoActivity d;
    private Activity e;
    private com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork f;
    private String g;
    private AdMarvelAd h;

    public AdMarvelCustomEventInterstitial()
    {
        c = null;
        d = null;
        e = null;
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject)
    {
        a = customeventinterstitiallistener;
        if (context instanceof Activity)
        {
            e = (Activity)context;
        }
        com.etermax.a.a.a("AdMarvel", "Interstitial");
        if (e == null)
        {
            a.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
        String s = jsonobject.optString("adPartnerID");
        String s1 = jsonobject.optString("adSiteID");
        if (s == null || s1 == null)
        {
            a.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        } else
        {
            b = new AdMarvelInterstitialAds(context, 0, 0x726d6d, 65280, 0);
            AdMarvelInterstitialAds.setListener(this);
            AdMarvelInterstitialAds.setEnableClickRedirect(true);
            HashMap hashmap = new HashMap();
            b.requestNewInterstitialAd(context, hashmap, s, s1, e);
            return;
        }
    }

    public void onAdMarvelVideoActivityLaunched(AdMarvelVideoActivity admarvelvideoactivity)
    {
        com.etermax.a.a.c("admarvel", "onAdmarvelVideoActivityLaunched");
        d = admarvelvideoactivity;
        if (a != null)
        {
            a.onInterstitialShown();
        }
    }

    public void onAdmarvelActivityLaunched(AdMarvelActivity admarvelactivity)
    {
        com.etermax.a.a.c("admarvel", "onAdmarvelActivityLaunched");
        c = admarvelactivity;
        if (a != null)
        {
            a.onInterstitialShown();
        }
    }

    public void onClickInterstitialAd(String s)
    {
        com.etermax.a.a.a("admarvel", (new StringBuilder()).append("onClick ").append(s).toString());
        if (a != null)
        {
            a.onInterstitialClicked();
        }
    }

    public void onCloseInterstitialAd()
    {
        if (a != null)
        {
            a.onInterstitialDismissed();
        }
    }

    public void onFailedToReceiveInterstitialAd(com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork sdkadnetwork, String s, int i, com.admarvel.android.ads.AdMarvelUtils.ErrorReason errorreason)
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.values().length];
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.AD_REQUEST_SDK_TYPE_UNSUPPORTED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.NO_NETWORK_CONNECTIVITY.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.NETWORK_CONNECTIVITY_DISRUPTED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.NO_BANNER_FOUND.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.NO_AD_FOUND.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.AD_UNIT_NOT_ABLE_TO_RENDER.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.SITE_ID_OR_PARTNER_ID_NOT_PRESENT.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.SITE_ID_NOT_PRESENT.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[com.admarvel.android.ads.AdMarvelUtils.ErrorReason.PARTNER_ID_NOT_PRESENT.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9)
                {
                    return;
                }
            }
        }

        switch (com.mopub.mobileads._cls1.a[errorreason.ordinal()])
        {
        default:
            a.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;

        case 1: // '\001'
            a.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;

        case 2: // '\002'
        case 3: // '\003'
            a.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;

        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            a.onInterstitialFailed(MoPubErrorCode.NO_FILL);
            return;

        case 7: // '\007'
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
            a.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            break;
        }
    }

    protected void onInvalidate()
    {
        Log.e("admarvel", "onCloseInterstitialAd");
        if (c == null) goto _L2; else goto _L1
_L1:
        c.finish();
        c = null;
_L4:
        h = null;
        f = null;
        g = null;
        return;
_L2:
        if (d != null)
        {
            d.finish();
            d = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onReceiveInterstitialAd(com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork sdkadnetwork, String s, AdMarvelAd admarvelad)
    {
        f = sdkadnetwork;
        g = s;
        h = admarvelad;
        if (a != null)
        {
            a.onInterstitialLoaded();
        }
    }

    public void onRequestInterstitialAd()
    {
    }

    protected void showInterstitial()
    {
        if (b != null)
        {
            b.displayInterstitial(e, f, g, h);
        }
    }
}
