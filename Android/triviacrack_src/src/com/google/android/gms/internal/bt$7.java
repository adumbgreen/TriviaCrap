// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            bt, bu, bm, fx

class a
    implements Runnable
{

    final com.google.ads.uest.ErrorCode a;
    final bt b;

    public void run()
    {
        try
        {
            bt.a(b).a(bu.a(a));
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    (bt bt1, com.google.ads.uest.ErrorCode errorcode)
    {
        b = bt1;
        a = errorcode;
        super();
    }
}
