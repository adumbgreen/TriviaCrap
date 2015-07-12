// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.amazon;

import android.app.Activity;
import com.amazon.device.ads.AdLayout;
import com.amazon.device.ads.AdSize;
import com.amazon.device.ads.AdTargetingOptions;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventBanner;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.amazon:
//            AmazonCustomCommon

public class AmazonCustomBanner extends BaseCustomEventBanner
{

    private AdLayout mAmazonBanner;
    private CustomEventBannerListener mBannerListener;

    public AmazonCustomBanner()
    {
    }

    public void destroy()
    {
        if (mAmazonBanner != null)
        {
            mAmazonBanner.setListener(null);
            mAmazonBanner.destroy();
            mAmazonBanner = null;
        }
    }

    protected void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, com.google.ads.AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        AdSize adsize1;
        mBannerListener = customeventbannerlistener;
        adsize1 = AdSize.SIZE_320x50;
        String s1 = jsonobject.getString("appId");
        if (activity == null || s1 == null)
        {
            android.widget.FrameLayout.LayoutParams layoutparams;
            AdTargetingOptions adtargetingoptions;
            try
            {
                mBannerListener.onFailedToReceiveAd();
                return;
            }
            catch (Exception exception)
            {
                a.c("MoPub", "Amazon banner ad failed to load.");
            }
            break MISSING_BLOCK_LABEL_164;
        }
        AmazonCustomCommon.init(s1, false);
        a.c("MoPub", (new StringBuilder()).append("Amazon Banner - Loading (").append(s1).append(", ").append(adsize1).append(")").toString());
        mAmazonBanner = new AdLayout(activity, adsize1);
        layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2);
        mAmazonBanner.setLayoutParams(layoutparams);
        adtargetingoptions = new AdTargetingOptions();
        mAmazonBanner.setListener(new AmazonBannerAdListener());
        mAmazonBanner.loadAd(adtargetingoptions);
        return;
        mBannerListener.onFailedToReceiveAd();
        return;
    }


    private class AmazonBannerAdListener
        implements AdListener
    {

        final AmazonCustomBanner this$0;

        public void onAdCollapsed(Ad ad)
        {
            a.c("MoPub", "Amazon banner collapsed");
        }

        public void onAdDismissed(Ad ad)
        {
            a.c("MoPub", "Amazon banner dismissed");
        }

        public void onAdExpanded(Ad ad)
        {
            a.c("MoPub", "Amazon banner expanded");
            mBannerListener.onClick();
        }

        public void onAdFailedToLoad(Ad ad, AdError aderror)
        {
            a.c("MoPub", (new StringBuilder()).append("Amazon banner failed - ").append(aderror.getMessage()).toString());
            mBannerListener.onFailedToReceiveAd();
        }

        public void onAdLoaded(Ad ad, AdProperties adproperties)
        {
            a.c("MoPub", "Amazon banner loaded");
            mBannerListener.onReceivedAd((AdLayout)ad);
        }

        AmazonBannerAdListener()
        {
            this$0 = AmazonCustomBanner.this;
            super();
        }
    }

}
