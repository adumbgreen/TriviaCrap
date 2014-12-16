// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelView;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventBanner;
import com.mopub.common.util.Views;
import java.util.HashMap;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class AdMarvelCustomEventBanner extends BaseCustomEventBanner
    implements com.admarvel.android.ads.AdMarvelView.AdMarvelViewListener
{

    private static boolean b = false;
    private AdMarvelView a;
    private CustomEventBanner.CustomEventBannerListener c;

    public AdMarvelCustomEventBanner()
    {
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, JSONObject jsonobject)
    {
        com.etermax.a.a.a("AdMarvel", "Banner");
        c = customeventbannerlistener;
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        Activity activity = (Activity)context;
_L4:
        String s;
        String s1;
        if (activity == null)
        {
            try
            {
                c.onBannerFailed(null);
                return;
            }
            catch (Exception exception)
            {
                com.etermax.a.a.c("AdMarvel", "banner ad failed to load.");
            }
            break MISSING_BLOCK_LABEL_109;
        }
        if (!b)
        {
            AdMarvelView.initialize(activity, new HashMap());
            b = true;
        }
        s = jsonobject.getString("adPartnerID");
        s1 = jsonobject.getString("adSiteID");
        if (s != null && s1 != null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        c.onBannerFailed(null);
        return;
        c.onBannerFailed(MoPubErrorCode.NO_FILL);
        return;
        a = new AdMarvelView(activity);
        a.setEnableClickRedirect(true);
        a.setDisableAnimation(false);
        a.setListener(this);
        a.setEnableAutoScaling(true);
        AdMarvelUtils.enableLogging(true);
        HashMap hashmap = new HashMap();
        a.requestNewAd(hashmap, s, s1, activity);
        return;
_L2:
        activity = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onClickAd(AdMarvelView admarvelview, String s)
    {
        com.etermax.a.a.a("AdMarvel", (new StringBuilder()).append("Banner ad clicked. URL = ").append(s).toString());
        if (c != null)
        {
            c.onBannerClicked();
        }
    }

    public void onClose()
    {
        c.onBannerCollapsed();
    }

    public void onExpand()
    {
        c.onBannerExpanded();
    }

    public void onFailedToReceiveAd(AdMarvelView admarvelview, int i, com.admarvel.android.ads.AdMarvelUtils.ErrorReason errorreason)
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
            c.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
            return;

        case 1: // '\001'
            c.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;

        case 2: // '\002'
        case 3: // '\003'
            c.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;

        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            c.onBannerFailed(MoPubErrorCode.NO_FILL);
            return;

        case 7: // '\007'
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
            c.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            break;
        }
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            a.setListener(null);
            Views.removeFromParent(a);
            a.destroy();
        }
    }

    public void onReceiveAd(AdMarvelView admarvelview)
    {
        if (admarvelview != null)
        {
            c.onBannerLoaded(admarvelview);
            return;
        } else
        {
            c.onBannerFailed(null);
            return;
        }
    }

    public void onRequestAd(AdMarvelView admarvelview)
    {
    }

}
