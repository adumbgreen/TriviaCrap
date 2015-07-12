// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.c;


public interface d
{

    public abstract void didShowInterstitial();

    public abstract void onBannerAdClick();

    public abstract void onDismissScreen();

    public abstract void onFailedToReceiveBannerAd();

    public abstract void onFailedToReceiveInterstitialAd();

    public abstract void onInterstitialAdClick();

    public abstract void onInterstitialDismiss();

    public abstract void onLeaveApplicationFromBanner();

    public abstract void onLeaveApplicationFromInterstitial();

    public abstract void onReceiveBannerAd();

    public abstract void onReceiveInterstitialAd();

    public abstract void willShowInterstitial();
}
