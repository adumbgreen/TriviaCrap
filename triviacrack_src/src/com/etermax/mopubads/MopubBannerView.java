// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads;

import android.content.Context;
import android.util.AttributeSet;
import com.etermax.a.a;
import com.etermax.adsinterface.AdBannerDefaultView;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;

public class MopubBannerView extends AdBannerDefaultView
    implements com.mopub.mobileads.MoPubView.BannerAdListener
{

    private MoPubView a;

    public MopubBannerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    private void b(Context context, String s)
    {
        a = new MoPubView(context);
        a.setAdUnitId(s);
        a.setBannerAdListener(this);
        addView(a, -1, -2);
    }

    public void a()
    {
    }

    public void a(Context context, String s)
    {
        com.etermax.a.a.c("MOPUB", "start");
        if (a == null)
        {
            a(context);
            b(context, s);
        }
        a.loadAd();
    }

    public void b()
    {
        com.etermax.a.a.c("MOPUB", "destroy");
        a.destroy();
        a = null;
    }

    public void onBannerClicked(MoPubView mopubview)
    {
    }

    public void onBannerCollapsed(MoPubView mopubview)
    {
    }

    public void onBannerExpanded(MoPubView mopubview)
    {
    }

    public void onBannerFailed(MoPubView mopubview, MoPubErrorCode mopuberrorcode)
    {
        com.etermax.a.a.c("MOPUB", "onBannerFailed");
        Context context = getContext();
        if (context != null)
        {
            a(context);
        }
    }

    public void onBannerLoaded(MoPubView mopubview)
    {
        com.etermax.a.a.c("MOPUB", "onBannerLoaded");
        c();
    }
}
