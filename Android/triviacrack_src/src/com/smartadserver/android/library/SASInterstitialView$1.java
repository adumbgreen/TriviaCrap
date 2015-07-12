// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library;

import com.smartadserver.android.library.ui.c;
import com.smartadserver.android.library.ui.d;

// Referenced classes of package com.smartadserver.android.library:
//            SASInterstitialView

class a
    implements c
{

    final SASInterstitialView a;

    public void onStateChanged(d d1)
    {
        this;
        JVM INSTR monitorenter ;
        if (d1.a() == 0)
        {
            notifyAll();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    (SASInterstitialView sasinterstitialview)
    {
        a = sasinterstitialview;
        super();
    }
}
