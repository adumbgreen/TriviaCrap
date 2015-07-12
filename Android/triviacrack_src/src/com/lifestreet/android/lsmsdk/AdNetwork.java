// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdNetworkController, AdType, TransitionAnimation

public final class AdNetwork
{

    private final AdNetworkController mAdNetworkController = new AdNetworkController(this);
    private final AdType mAdType;
    private final String mClickUrl;
    private final String mImpressionUrl;
    private final String mNetworkType;
    private final String mNoBidUrl;
    private final Map mParameters;
    private final int mRefreshRate;
    private final TransitionAnimation mTransitionAnimation;

    public AdNetwork(String s, AdType adtype, TransitionAnimation transitionanimation, String s1, String s2, String s3, Map map, 
            int i)
    {
        mNetworkType = s.toUpperCase(Locale.US);
        mAdType = adtype;
        mTransitionAnimation = transitionanimation;
        mImpressionUrl = s1;
        mNoBidUrl = s2;
        mClickUrl = s3;
        mParameters = map;
        mRefreshRate = i;
    }

    public AdNetworkController getAdNetworkController()
    {
        return mAdNetworkController;
    }

    public AdType getAdType()
    {
        return mAdType;
    }

    public String getClickUrl()
    {
        return mClickUrl;
    }

    public String getImpressionUrl()
    {
        return mImpressionUrl;
    }

    public String getNetworkType()
    {
        return mNetworkType;
    }

    public String getNoBidUrl()
    {
        return mNoBidUrl;
    }

    public Map getParameters()
    {
        return mParameters;
    }

    public int getRefreshRate()
    {
        return mRefreshRate;
    }

    public TransitionAnimation getTransitionAnimation()
    {
        return mTransitionAnimation;
    }

    public String toString()
    {
        return (new StringBuilder()).append("\nNetworkType = ").append(mNetworkType).append("\n").append("AdType = ").append(mAdType).append("\n").append("TransitionAnimation = ").append(mTransitionAnimation).append("\n").append("RefreshRate = ").append(String.valueOf(mRefreshRate)).append(" secs\n").append("ImpressionUrl = ").append(mImpressionUrl).append("\n").append("NoBidUrl = ").append(mNoBidUrl).append("\n").append("ClickUrl = ").append(mClickUrl).toString();
    }
}
