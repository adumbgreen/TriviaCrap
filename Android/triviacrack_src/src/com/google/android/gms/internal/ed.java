// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

// Referenced classes of package com.google.android.gms.internal:
//            dw, eb, dq

public final class ed extends dw
{

    private final PlayStorePurchaseListener a;

    public ed(PlayStorePurchaseListener playstorepurchaselistener)
    {
        a = playstorepurchaselistener;
    }

    public void a(dq dq)
    {
        a.onInAppPurchaseFinished(new eb(dq));
    }

    public boolean a(String s)
    {
        return a.isValidPurchase(s);
    }
}
