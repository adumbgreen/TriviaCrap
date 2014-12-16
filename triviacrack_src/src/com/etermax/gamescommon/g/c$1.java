// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.a.a.a.a;
import com.a.a.a.b;

// Referenced classes of package com.etermax.gamescommon.g:
//            c, i, g

class a
    implements ServiceConnection
{

    final g a;
    final c b;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        String s;
        b.c("Billing service connected.");
        b.i = com.a.a.a.b.a(ibinder);
        s = b.h.getPackageName();
        int j;
        b.c("Checking for in-app billing 3 support.");
        j = b.i.a(3, s, "inapp");
        if (j != 0)
        {
            int k;
            try
            {
                if (a != null)
                {
                    a.a(new i(j, "Error checking for billing v3 support."));
                }
                b.e = false;
                return;
            }
            catch (RemoteException remoteexception)
            {
                if (a != null)
                {
                    a.a(new i(-1001, "RemoteException while setting up in-app billing."));
                }
                remoteexception.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_273;
        }
        b.c((new StringBuilder()).append("In-app billing version 3 supported for ").append(s).toString());
        k = b.i.a(3, s, "subs");
        if (k != 0)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        b.c("Subscriptions AVAILABLE.");
        b.e = true;
_L1:
        b.d = true;
        b.c = true;
        if (a != null)
        {
            a.a(new i(0, "Setup successful."));
            return;
        }
        break MISSING_BLOCK_LABEL_273;
        b.c((new StringBuilder()).append("Subscriptions NOT AVAILABLE. Response: ").append(k).toString());
          goto _L1
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        b.c("Billing service disconnected.");
        b.i = null;
    }

    ion(c c1, g g1)
    {
        b = c1;
        a = g1;
        super();
    }
}
