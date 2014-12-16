// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.ads:
//            AbstractAdActivity, AdListener, AdView

public final class InterstitialAdActivity extends AbstractAdActivity
    implements AdListener
{

    public static final String CATEGORY_ADS = "com.lifestreet.category.ADS";
    private AdView mAdView;
    private FrameLayout mLayout;

    public InterstitialAdActivity()
    {
    }

    private void onEvent(String s)
    {
        onEvent(s, "com.lifestreet.category.ADS");
    }

    public static void show(Context context, String s, String s1, boolean flag)
    {
        startActivity(context, com/lifestreet/android/lsmsdk/ads/InterstitialAdActivity, s, saveToCache(context, s1, "lifestreet_int_ad", "html"), flag);
    }

    public void onClick()
    {
        LSMLogger.LOGGER.info("onClick");
        onEvent("com.lifestreet.action.CLICK");
    }

    public void onClose()
    {
        LSMLogger.LOGGER.info("onClose");
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        onEvent("com.lifestreet.action.PRESENT_SCREEN");
        boolean flag = getIntent().getBooleanExtra("com.lifestreet.ShowCloseButton", false);
        mAdView = new AdView(this);
        mAdView.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        mAdView.setListener(this);
        mAdView.showCloseButton(flag);
        String s = getIntent().getStringExtra("com.lifestreet.BaseUrl");
        String s1 = getIntent().getStringExtra("com.lifestreet.HtmlPath");
        mAdView.loadHtmlWithBaseURL(s, readFromCache(s1));
        mLayout = new FrameLayout(this);
        mLayout.addView(mAdView);
        setContentView(mLayout);
    }

    protected void onDestroy()
    {
        if (mLayout != null && mAdView != null)
        {
            mLayout.removeAllViews();
            mLayout = null;
            mAdView.destroy();
            mAdView = null;
        }
        onEvent("com.lifestreet.action.DISMISS_SCREEN");
        super.onDestroy();
    }

    public void onDismissScreen(AdView adview)
    {
        finish();
    }

    public void onFailedToReceiveAd(AdView adview, String s)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("onFailedToReceiveAd: ").append(s).toString());
        finish();
    }

    public void onLeaveApplication(AdView adview)
    {
        LSMLogger.LOGGER.info("onLeaveApplication");
        onEvent("com.lifestreet.action.LEAVE_APPLICATION");
    }

    public void onPresentScreen(AdView adview)
    {
    }

    public void onReceiveAd(AdView adview)
    {
        LSMLogger.LOGGER.info("onReceiveAd");
    }
}
