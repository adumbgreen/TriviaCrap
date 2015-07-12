// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            fo, et, fx, dv, 
//            el, dt

public abstract class em extends fo
{

    private final dt a;
    private final el b;

    public em(dt dt, el el1)
    {
        a = dt;
        b = el1;
    }

    private static dv a(et et1, dt dt)
    {
        dv dv1;
        try
        {
            dv1 = et1.a(dt);
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not fetch ad response from ad request service.", remoteexception);
            return null;
        }
        catch (NullPointerException nullpointerexception)
        {
            fx.c("Could not fetch ad response from ad request service due to an Exception.", nullpointerexception);
            return null;
        }
        catch (SecurityException securityexception)
        {
            fx.c("Could not fetch ad response from ad request service due to an Exception.", securityexception);
            return null;
        }
        return dv1;
    }

    public final void a()
    {
        et et1 = d();
        if (et1 != null) goto _L2; else goto _L1
_L1:
        dv dv1 = new dv(0);
_L4:
        c();
        b.a(dv1);
        return;
_L2:
        dv1 = a(et1, a);
        if (dv1 != null) goto _L4; else goto _L3
_L3:
        dv1 = new dv(0);
          goto _L4
        Exception exception;
        exception;
        c();
        throw exception;
    }

    public final void b()
    {
        c();
    }

    public abstract void c();

    public abstract et d();
}
