// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.lifestreet.android.lsmsdk.ads.AbstractAdActivity;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDViewListener, MRAIDView

public final class MRAIDInterstitialActivity extends AbstractAdActivity
    implements MRAIDViewListener
{

    public static final String CATEGORY_MRAID = "com.lifestreet.category.MRAID";
    private MRAIDView mAdView;

    public MRAIDInterstitialActivity()
    {
    }

    private void onEvent(String s)
    {
        onEvent(s, "com.lifestreet.category.MRAID");
    }

    public static void show(Context context, String s, String s1)
    {
        startActivity(context, com/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity, s, saveToCache(context, s1, "lifestreet_mraid_ad", "html"));
    }

    public void onClick(MRAIDView mraidview)
    {
        onEvent("com.lifestreet.action.CLICK");
    }

    public void onClose(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onClose");
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        onEvent("com.lifestreet.action.PRESENT_SCREEN");
        mAdView = new MRAIDView(this, -1, -1, MRAIDController.MRAIDPlacementType.INTERSTITIAL);
        mAdView.setListener(this);
        setContentView(mAdView);
        String s = getIntent().getStringExtra("com.lifestreet.BaseUrl");
        String s1 = getIntent().getStringExtra("com.lifestreet.HtmlPath");
        mAdView.loadHTML(s, readFromCache(s1));
    }

    protected void onDestroy()
    {
        if (mAdView != null)
        {
            mAdView.destroy();
            mAdView = null;
        }
        onEvent("com.lifestreet.action.DISMISS_SCREEN");
        super.onDestroy();
    }

    public void onExpand(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.warning("Impossible to expand interstitial ad");
    }

    public void onFailedToReceiveAd(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onFailedToReceiveAd");
        finish();
    }

    public void onLeaveApplication(MRAIDView mraidview)
    {
        onEvent("com.lifestreet.action.LEAVE_APPLICATION");
        finish();
    }

    public void onReceiveAd(MRAIDView mraidview)
    {
        LSMLogger.LOGGER.info("onReceiveAd");
    }
}
