// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.etermax.mopubads.custom.BaseCustomEventInterstitial;
import com.mdotm.android.c.d;
import com.mdotm.android.d.a;
import com.mdotm.android.view.b;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class MdotmInterstitialCustomEvent extends BaseCustomEventInterstitial
    implements d
{

    b a;
    Activity b;
    private CustomEventInterstitial.CustomEventInterstitialListener c;

    public MdotmInterstitialCustomEvent()
    {
        b = null;
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject)
    {
        c = customeventinterstitiallistener;
        if (context instanceof Activity)
        {
            b = (Activity)context;
        }
        if (b == null)
        {
            c.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
        try
        {
            String s = jsonobject.getString("key");
            if (android.os.Build.VERSION.SDK_INT >= 7)
            {
                a a1 = new a();
                a1.b(s);
                a1.a("0");
                a1.a(true);
                a = new b(b);
                a.a(this, a1);
                return;
            }
        }
        catch (Exception exception)
        {
            com.etermax.a.a.b("MdotMAdapter", "Android api version is less than 7 (i.e 2.1)");
            onFailedToReceiveInterstitialAd();
            return;
        }
        onFailedToReceiveInterstitialAd();
        return;
    }

    public void didShowInterstitial()
    {
        com.etermax.a.a.a("MoPub", "did show interstitial");
        c.onInterstitialShown();
    }

    public void onBannerAdClick()
    {
        com.etermax.a.a.a("MoPub", " banner AdClick");
    }

    public void onDismissScreen()
    {
        com.etermax.a.a.a("MoPub", "banner Dismiss");
    }

    public void onFailedToReceiveBannerAd()
    {
        com.etermax.a.a.a("MoPub", "Failed to receive banner ad");
    }

    public void onFailedToReceiveInterstitialAd()
    {
        com.etermax.a.a.c("MoPub", "MdotM interstitial ad failed to load.");
        c.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
    }

    public void onInterstitialAdClick()
    {
        c.onInterstitialClicked();
    }

    public void onInterstitialDismiss()
    {
        com.etermax.a.a.c("MoPub", "MdotM interstitial ad dismissed.");
        c.onInterstitialDismissed();
    }

    public void onInvalidate()
    {
    }

    public void onLeaveApplicationFromBanner()
    {
        com.etermax.a.a.a("MoPub", "banner LeaveApplication");
    }

    public void onLeaveApplicationFromInterstitial()
    {
        c.onLeaveApplication();
    }

    public void onReceiveBannerAd()
    {
    }

    public void onReceiveInterstitialAd()
    {
        c.onInterstitialLoaded();
    }

    public void showInterstitial()
    {
        com.etermax.a.a.c("MoPub", "Showing MdotM interstitial ad.");
        if (a != null && b != null)
        {
            a.a(b);
        }
    }

    public void willShowInterstitial()
    {
        com.etermax.a.a.a("MoPub", "will show interstitial");
    }
}
