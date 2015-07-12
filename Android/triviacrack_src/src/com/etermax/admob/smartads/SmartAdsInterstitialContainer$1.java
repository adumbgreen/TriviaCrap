// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import com.etermax.a.a;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.smartadserver.android.library.ui.c;
import com.smartadserver.android.library.ui.d;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsInterstitialContainer

class lListener
    implements c
{

    final SmartAdsInterstitialContainer this$0;
    final CustomEventInterstitialListener val$listener;

    public void onStateChanged(d d1)
    {
        switch (d1.a())
        {
        default:
            return;

        case 1: // '\001'
            a.a("admob ads", "SmartAdsInterstitialContainer - Interstitial view default.");
            return;

        case 0: // '\0'
            a.a("admob ads", "SmartAdsInterstitialContainer - Interstitial view expanded.");
            val$listener.onPresentScreen();
            return;

        case 2: // '\002'
            a.a("admob ads", "SmartAdsInterstitialContainer - Interstitial view hidden.");
            break;
        }
        val$listener.onDismissScreen();
    }

    lListener()
    {
        this$0 = final_smartadsinterstitialcontainer;
        val$listener = CustomEventInterstitialListener.this;
        super();
    }
}
