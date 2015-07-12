// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.amazon;

import android.app.Activity;
import com.amazon.device.ads.AdTargetingOptions;
import com.amazon.device.ads.InterstitialAd;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventInterstitial;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.amazon:
//            AmazonCustomCommon

public class AmazonCustomInterstitial extends BaseCustomEventInterstitial
{

    private InterstitialAd mAmazonInterstitial;
    private CustomEventInterstitialListener mInterstitialListener;

    public AmazonCustomInterstitial()
    {
    }

    public void destroy()
    {
        if (mAmazonInterstitial != null)
        {
            mAmazonInterstitial.setListener(null);
            mAmazonInterstitial = null;
        }
        super.destroy();
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        mInterstitialListener = customeventinterstitiallistener;
        String s1 = jsonobject.getString("appId");
        if (activity == null || s1 == null)
        {
            AdTargetingOptions adtargetingoptions;
            try
            {
                mInterstitialListener.onFailedToReceiveAd();
                return;
            }
            catch (Exception exception)
            {
                a.c("MoPub", "Amazon Interstitial ad failed to load.");
            }
            break MISSING_BLOCK_LABEL_125;
        }
        AmazonCustomCommon.init(s1, false);
        a.c("MoPub", (new StringBuilder()).append("Amazon Interstitial - Loading (").append(s1).append(")").toString());
        mAmazonInterstitial = new InterstitialAd(activity);
        adtargetingoptions = new AdTargetingOptions();
        mAmazonInterstitial.setListener(new AmazonInterstitialAdListener());
        mAmazonInterstitial.loadAd(adtargetingoptions);
        return;
        mInterstitialListener.onFailedToReceiveAd();
        return;
    }

    public void showInterstitial()
    {
        if (mAmazonInterstitial != null && !mAmazonInterstitial.isLoading() && !mAmazonInterstitial.isShowing())
        {
            if (mAmazonInterstitial.showAd())
            {
                a.c("MoPub", "Amazon interstitial shown");
                mInterstitialListener.onPresentScreen();
                return;
            } else
            {
                a.c("MoPub", "Amazon interstitial failed to show");
                return;
            }
        } else
        {
            a.c("MoPub", "Tried to show an Amazon interstitial ad before it finished loading. Please try again.");
            return;
        }
    }


    private class AmazonInterstitialAdListener
        implements AdListener
    {

        final AmazonCustomInterstitial this$0;

        public void onAdCollapsed(Ad ad)
        {
            a.c("MoPub", "Amazon interstitial collapsed");
        }

        public void onAdDismissed(Ad ad)
        {
            a.c("MoPub", "Amazon interstitial dismissed");
            mInterstitialListener.onDismissScreen();
        }

        public void onAdExpanded(Ad ad)
        {
            a.c("MoPub", "Amazon interstitial expanded");
        }

        public void onAdFailedToLoad(Ad ad, AdError aderror)
        {
            a.c("MoPub", (new StringBuilder()).append("Amazon interstitial failed - ").append(aderror.getMessage()).toString());
            mInterstitialListener.onFailedToReceiveAd();
        }

        public void onAdLoaded(Ad ad, AdProperties adproperties)
        {
            a.c("MoPub", "Amazon interstitial loaded");
            mInterstitialListener.onReceivedAd();
        }

        AmazonInterstitialAdListener()
        {
            this$0 = AmazonCustomInterstitial.this;
            super();
        }
    }

}
