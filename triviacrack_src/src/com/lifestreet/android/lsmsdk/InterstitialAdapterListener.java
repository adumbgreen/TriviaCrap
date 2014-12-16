// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdapterListener

public interface InterstitialAdapterListener
    extends AdapterListener
{

    public abstract void onClickInterstitialAd(Object obj);

    public abstract void onDismissInterstitialScreen(Object obj);

    public abstract void onFailedToReceiveInterstitialAd(Object obj);

    public abstract void onLeaveApplicationInterstitial(Object obj);

    public abstract void onPresentInterstitialScreen(Object obj);

    public abstract void onReceiveInterstitialAd(Object obj);
}
