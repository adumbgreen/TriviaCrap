// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.mediation.customevent;

import android.view.View;
import com.google.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.fx;

// Referenced classes of package com.google.ads.mediation.customevent:
//            CustomEventBannerListener, CustomEventAdapter

final class a
    implements CustomEventBannerListener
{

    private final CustomEventAdapter a;
    private final MediationBannerListener b;

    public a(CustomEventAdapter customeventadapter, MediationBannerListener mediationbannerlistener)
    {
        a = customeventadapter;
        b = mediationbannerlistener;
    }

    public void onClick()
    {
        fx.a("Custom event adapter called onFailedToReceiveAd.");
        b.onClick(a);
    }

    public void onDismissScreen()
    {
        fx.a("Custom event adapter called onFailedToReceiveAd.");
        b.onDismissScreen(a);
    }

    public void onFailedToReceiveAd()
    {
        fx.a("Custom event adapter called onFailedToReceiveAd.");
        b.onFailedToReceiveAd(a, com.google.ads.AdRequest.ErrorCode.NO_FILL);
    }

    public void onLeaveApplication()
    {
        fx.a("Custom event adapter called onFailedToReceiveAd.");
        b.onLeaveApplication(a);
    }

    public void onPresentScreen()
    {
        fx.a("Custom event adapter called onFailedToReceiveAd.");
        b.onPresentScreen(a);
    }

    public void onReceivedAd(View view)
    {
        fx.a("Custom event adapter called onReceivedAd.");
        CustomEventAdapter.a(a, view);
        b.onReceivedAd(a);
    }
}
