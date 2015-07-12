// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import android.view.View;
import com.etermax.a.a;
import com.google.ads.mediation.customevent.CustomEventBannerListener;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsBannerContainer

class rListener
    implements android.view.erContainer._cls1
{

    final SmartAdsBannerContainer this$0;
    final CustomEventBannerListener val$listener;

    public void onClick(View view)
    {
        a.c("admob ads", "SmartAdsBannerContainer - onClick");
        val$listener.onClick();
    }

    rListener()
    {
        this$0 = final_smartadsbannercontainer;
        val$listener = CustomEventBannerListener.this;
        super();
    }
}
