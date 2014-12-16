// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventInterstitial;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class FacebookCustomEventInterstitial extends BaseCustomEventInterstitial
    implements InterstitialAdListener
{

    private InterstitialAd a;
    private CustomEventInterstitial.CustomEventInterstitialListener b;

    public FacebookCustomEventInterstitial()
    {
    }

    private String a(JSONObject jsonobject)
    {
        String s;
        try
        {
            s = jsonobject.getString("placement_id");
        }
        catch (JSONException jsonexception)
        {
            com.etermax.a.a.a("MoPub", "Facebook interstitial extras error", jsonexception);
            return null;
        }
        return s;
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject)
    {
        b = customeventinterstitiallistener;
        String s = a(jsonobject);
        if (TextUtils.isEmpty(s))
        {
            b.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        } else
        {
            AdSettings.addTestDevice("A4B489B192C6FCD87350B61A1D916FC4");
            a = new InterstitialAd(context, s);
            a.setAdListener(this);
            a.loadAd();
            return;
        }
    }

    public void onAdClicked(Ad ad)
    {
        Log.d("MoPub", "Facebook interstitial ad clicked.");
        b.onInterstitialClicked();
    }

    public void onAdLoaded(Ad ad)
    {
        Log.d("MoPub", "Facebook interstitial ad loaded successfully.");
        b.onInterstitialLoaded();
    }

    public void onError(Ad ad, AdError aderror)
    {
        Log.d("MoPub", "Facebook interstitial ad failed to load.");
        if (aderror.getErrorCode() == AdError.NO_FILL.getErrorCode())
        {
            b.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        if (aderror.getErrorCode() == AdError.INTERNAL_ERROR.getErrorCode())
        {
            b.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        } else
        {
            b.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
    }

    public void onInterstitialDismissed(Ad ad)
    {
        Log.d("MoPub", "Facebook interstitial ad dismissed.");
        b.onInterstitialDismissed();
    }

    public void onInterstitialDisplayed(Ad ad)
    {
        Log.d("MoPub", "Showing Facebook interstitial ad.");
        b.onInterstitialShown();
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            a.destroy();
            a = null;
        }
    }

    protected void showInterstitial()
    {
        if (a != null && a.isAdLoaded())
        {
            a.show();
            return;
        } else
        {
            Log.d("MoPub", "Tried to show a Facebook interstitial ad before it finished loading. Please try again.");
            return;
        }
    }
}
