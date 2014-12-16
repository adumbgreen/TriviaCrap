// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

// Referenced classes of package com.google.android.gms.internal:
//            p

public final class i extends p
{

    private final AdListener a;

    public i(AdListener adlistener)
    {
        a = adlistener;
    }

    public void a()
    {
        a.onAdClosed();
    }

    public void a(int j)
    {
        a.onAdFailedToLoad(j);
    }

    public void b()
    {
        a.onAdLeftApplication();
    }

    public void c()
    {
        a.onAdLoaded();
    }

    public void d()
    {
        a.onAdOpened();
    }
}
