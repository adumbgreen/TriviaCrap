// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            cu, cx, dc, cy, 
//            du, fx

class b
    implements Runnable
{

    final cx a;
    final Intent b;
    final cu c;

    public void run()
    {
        if (cu.a(c).a(a.b, -1, b))
        {
            cu.c(c).a(new cy(cu.b(c), a.c, true, -1, b, a));
            return;
        }
        try
        {
            cu.c(c).a(new cy(cu.b(c), a.c, false, -1, b, a));
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.e("Fail to verify and dispatch pending transaction");
        }
        return;
    }

    (cu cu1, cx cx1, Intent intent)
    {
        c = cu1;
        a = cx1;
        b = intent;
        super();
    }
}
