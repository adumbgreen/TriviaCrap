// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.etermax.mopubads.custom.BaseCustomEventBanner;
import com.mdotm.android.c.d;
import com.mdotm.android.d.a;
import com.mdotm.android.e.b;
import com.mdotm.android.view.MdotMAdView;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class MdotmBannerCustomEvent extends BaseCustomEventBanner
    implements d
{

    private CustomEventBanner.CustomEventBannerListener a;
    private MdotMAdView b;

    public MdotmBannerCustomEvent()
    {
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, JSONObject jsonobject)
    {
        a = customeventbannerlistener;
        Activity activity;
        if (context instanceof Activity)
        {
            activity = (Activity)context;
        } else
        {
            activity = null;
        }
        if (activity == null)
        {
            a.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
        try
        {
            String s = jsonobject.getString("key");
            if (android.os.Build.VERSION.SDK_INT >= 7)
            {
                b = new MdotMAdView(activity);
                a a1 = new a();
                a1.b(s);
                a1.c(b.b);
                a1.a("0");
                a1.a(true);
                b.b(this, a1);
                return;
            }
        }
        catch (Exception exception)
        {
            com.etermax.a.a.b("MoPub", "MdotM supports from android version 2.1 and above");
            onFailedToReceiveBannerAd();
            return;
        }
        com.etermax.a.a.b("MoPub", "MdotM supports from android version 2.1 and above");
        onFailedToReceiveBannerAd();
        return;
    }

    public void didShowInterstitial()
    {
        com.mdotm.android.e.d.b(this, "did show interstitial");
    }

    public void onBannerAdClick()
    {
        com.etermax.a.a.c("MoPub", "MdotM banner ad clicked.");
        a.onBannerClicked();
    }

    public void onDismissScreen()
    {
    }

    public void onFailedToReceiveBannerAd()
    {
        com.etermax.a.a.c("MoPub", "MdotM banner ad failed to load.");
        a.onBannerFailed(MoPubErrorCode.NO_FILL);
    }

    public void onFailedToReceiveInterstitialAd()
    {
        com.mdotm.android.e.d.b(this, "Failed to receive interstitial ad");
    }

    public void onInterstitialAdClick()
    {
        com.mdotm.android.e.d.b(this, " interstitial AdClick");
    }

    public void onInterstitialDismiss()
    {
        com.mdotm.android.e.d.b(this, "interstitial dismiss");
    }

    public void onInvalidate()
    {
    }

    public void onLeaveApplicationFromBanner()
    {
        com.mdotm.android.e.d.b(this, "banner LeaveApplication");
        a.onLeaveApplication();
    }

    public void onLeaveApplicationFromInterstitial()
    {
        com.mdotm.android.e.d.b(this, "interstitial  LeaveApplication");
    }

    public void onReceiveBannerAd()
    {
        if (b != null)
        {
            com.etermax.a.a.c("MoPub", "MdotM banner ad loaded successfully. Showing ad...");
            a.onBannerLoaded(b);
            return;
        } else
        {
            onFailedToReceiveBannerAd();
            return;
        }
    }

    public void onReceiveInterstitialAd()
    {
    }

    public void willShowInterstitial()
    {
        com.mdotm.android.e.d.b(this, "will show interstitial");
    }
}
