// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.a;

// Referenced classes of package com.google.android.gms.internal:
//            hb, gy, hk, hh

public final class hg extends hb
{

    public final int b;
    public final Bundle c;
    public final IBinder d;
    final gy e;

    public hg(gy gy1, int i, IBinder ibinder, Bundle bundle)
    {
        e = gy1;
        super(gy1, Boolean.valueOf(true));
        b = i;
        d = ibinder;
        c = bundle;
    }

    protected void a()
    {
    }

    protected void a(Boolean boolean1)
    {
        if (boolean1 == null)
        {
            com.google.android.gms.internal.gy.a(e, 1);
            return;
        }
        switch (b)
        {
        default:
            RemoteException remoteexception;
            String s;
            PendingIntent pendingintent;
            if (c != null)
            {
                pendingintent = (PendingIntent)c.getParcelable("pendingIntent");
            } else
            {
                pendingintent = null;
            }
            if (gy.d(e) != null)
            {
                com.google.android.gms.internal.hk.a(gy.e(e)).b(e.a(), gy.d(e));
                com.google.android.gms.internal.gy.a(e, null);
            }
            com.google.android.gms.internal.gy.a(e, 1);
            com.google.android.gms.internal.gy.a(e, null);
            com.google.android.gms.internal.gy.a(e).a(new a(b, pendingintent));
            return;

        case 0: // '\0'
            try
            {
                s = d.getInterfaceDescriptor();
                if (e.b().equals(s))
                {
                    com.google.android.gms.internal.gy.a(e, e.b(d));
                    if (gy.c(e) != null)
                    {
                        com.google.android.gms.internal.gy.a(e, 3);
                        com.google.android.gms.internal.gy.a(e).a();
                        return;
                    }
                }
            }
            // Misplaced declaration of an exception variable
            catch (RemoteException remoteexception) { }
            com.google.android.gms.internal.hk.a(gy.e(e)).b(e.a(), gy.d(e));
            com.google.android.gms.internal.gy.a(e, null);
            com.google.android.gms.internal.gy.a(e, 1);
            com.google.android.gms.internal.gy.a(e, null);
            com.google.android.gms.internal.gy.a(e).a(new a(8, null));
            return;

        case 10: // '\n'
            com.google.android.gms.internal.gy.a(e, 1);
            throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
        }
    }

    protected void a(Object obj)
    {
        a((Boolean)obj);
    }
}
