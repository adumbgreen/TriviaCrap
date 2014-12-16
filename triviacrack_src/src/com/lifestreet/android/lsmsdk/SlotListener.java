// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.view.View;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            BannerAdapter, InterstitialAdapter, SlotView

public interface SlotListener
{

    public abstract void onClick(BannerAdapter banneradapter, View view);

    public abstract void onClickInterstitialAd(InterstitialAdapter interstitialadapter, Object obj);

    public abstract void onClose(BannerAdapter banneradapter, View view);

    public abstract void onDestroyCustomEventBannerAdapter(BannerAdapter banneradapter, String s);

    public abstract void onDestroyCustomEventInterstitialAdapter(InterstitialAdapter interstitialadapter, String s);

    public abstract void onDismissInterstitialScreen(InterstitialAdapter interstitialadapter, Object obj);

    public abstract void onDismissScreen(BannerAdapter banneradapter, View view);

    public abstract void onFailedToLoadSlotView(SlotView slotview);

    public abstract void onFailedToReceiveAd(BannerAdapter banneradapter, View view);

    public abstract void onFailedToReceiveInterstitialAd(InterstitialAdapter interstitialadapter, Object obj);

    public abstract void onLeaveApplication(BannerAdapter banneradapter, View view);

    public abstract void onLeaveApplicationInterstitial(InterstitialAdapter interstitialadapter, Object obj);

    public abstract void onPresentInterstitialScreen(InterstitialAdapter interstitialadapter, Object obj);

    public abstract void onPresentScreen(BannerAdapter banneradapter, View view);

    public abstract void onReceiveAd(BannerAdapter banneradapter, View view);

    public abstract void onReceiveInterstitialAd(InterstitialAdapter interstitialadapter, Object obj);
}
