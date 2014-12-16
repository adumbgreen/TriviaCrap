// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            av, bc, bj, fx

class a
    implements Runnable
{

    final bc a;
    final av b;

    public void run()
    {
        try
        {
            a.c.c();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not destroy mediation adapter.", remoteexception);
        }
    }

    (av av1, bc bc1)
    {
        b = av1;
        a = bc1;
        super();
    }
}
