// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


// Referenced classes of package com.lifestreet.android.lsmsdk:
//            Adapter, InterstitialAdapterListener, SlotContext

public interface InterstitialAdapter
    extends Adapter
{

    public abstract void getInterstitialAd(InterstitialAdapterListener interstitialadapterlistener, SlotContext slotcontext, Object obj);

    public abstract void showInterstitial();
}
