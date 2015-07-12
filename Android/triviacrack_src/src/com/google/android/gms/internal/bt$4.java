// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            bt, bm, fx

class a
    implements Runnable
{

    final bt a;

    public void run()
    {
        try
        {
            bt.a(a).d();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdOpened.", remoteexception);
        }
    }

    (bt bt1)
    {
        a = bt1;
        super();
    }
}
