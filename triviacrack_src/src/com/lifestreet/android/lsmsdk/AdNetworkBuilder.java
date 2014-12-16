// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import java.util.Map;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdNetwork, AdType, TransitionAnimation

public final class AdNetworkBuilder
{

    private AdType mAdType;
    private String mClickUrl;
    private String mImpressionUrl;
    private String mNetworkType;
    private String mNoBidUrl;
    private Map mParameters;
    private int mRefreshRate;
    private TransitionAnimation mTransitionAnimation;

    public AdNetworkBuilder()
    {
    }

    public AdNetworkBuilder adType(AdType adtype)
    {
        mAdType = adtype;
        return this;
    }

    public AdNetwork build()
    {
        return new AdNetwork(mNetworkType, mAdType, mTransitionAnimation, mImpressionUrl, mNoBidUrl, mClickUrl, mParameters, mRefreshRate);
    }

    public AdNetworkBuilder clickUrl(String s)
    {
        mClickUrl = s;
        return this;
    }

    public AdNetworkBuilder impressionUrl(String s)
    {
        mImpressionUrl = s;
        return this;
    }

    public AdNetworkBuilder networkType(String s)
    {
        mNetworkType = s;
        return this;
    }

    public AdNetworkBuilder noBidUrl(String s)
    {
        mNoBidUrl = s;
        return this;
    }

    public AdNetworkBuilder parameters(Map map)
    {
        mParameters = map;
        return this;
    }

    public AdNetworkBuilder refreshRate(int i)
    {
        mRefreshRate = i;
        return this;
    }

    public AdNetworkBuilder transitionAnimation(TransitionAnimation transitionanimation)
    {
        mTransitionAnimation = transitionanimation;
        return this;
    }
}
