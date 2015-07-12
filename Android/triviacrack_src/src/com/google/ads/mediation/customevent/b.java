// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.mediation.customevent;

import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.fx;

// Referenced classes of package com.google.ads.mediation.customevent:
//            CustomEventInterstitialListener, CustomEventAdapter

class b
    implements CustomEventInterstitialListener
{

    final CustomEventAdapter a;
    private final CustomEventAdapter b;
    private final MediationInterstitialListener c;

    public b(CustomEventAdapter customeventadapter, CustomEventAdapter customeventadapter1, MediationInterstitialListener mediationinterstitiallistener)
    {
        a = customeventadapter;
        super();
        b = customeventadapter1;
        c = mediationinterstitiallistener;
    }

    public void onDismissScreen()
    {
        fx.a("Custom event adapter called onDismissScreen.");
        c.onDismissScreen(b);
    }

    public void onFailedToReceiveAd()
    {
        fx.a("Custom event adapter called onFailedToReceiveAd.");
        c.onFailedToReceiveAd(b, com.google.ads.AdRequest.ErrorCode.NO_FILL);
    }

    public void onLeaveApplication()
    {
        fx.a("Custom event adapter called onLeaveApplication.");
        c.onLeaveApplication(b);
    }

    public void onPresentScreen()
    {
        fx.a("Custom event adapter called onPresentScreen.");
        c.onPresentScreen(b);
    }

    public void onReceivedAd()
    {
        fx.a("Custom event adapter called onReceivedAd.");
        c.onReceivedAd(a);
    }
}
