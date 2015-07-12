// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.smartadserver.android.library.ui.a;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsBannerContainer

class rListener
    implements a
{

    final SmartAdsBannerContainer this$0;
    final CustomEventBannerListener val$listener;

    public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
    {
        com.etermax.a.a.c("admob ads", "SmartAdsBannerContainer - adLoadingCompleted");
        val$listener.onReceivedAd(mContainer);
    }

    public void adLoadingFailed(Exception exception)
    {
        com.etermax.a.a.b("admob ads", "SmartAdsBannerContainer - adLoadingFailed", exception);
        val$listener.onFailedToReceiveAd();
    }

    rListener()
    {
        this$0 = final_smartadsbannercontainer;
        val$listener = CustomEventBannerListener.this;
        super();
    }
}
