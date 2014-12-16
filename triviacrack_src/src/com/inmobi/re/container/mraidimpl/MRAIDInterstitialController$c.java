// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.re.container.mraidimpl;

import android.view.View;

// Referenced classes of package com.inmobi.re.container.mraidimpl:
//            MRAIDInterstitialController

class a
    implements android.view.rstitialController.c
{

    final MRAIDInterstitialController a;

    public void onClick(View view)
    {
        a.handleInterstitialClose();
    }

    (MRAIDInterstitialController mraidinterstitialcontroller)
    {
        a = mraidinterstitialcontroller;
        super();
    }
}
