// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.d;
import com.google.android.gms.a.e;
import com.google.android.gms.a.f;
import com.google.android.gms.common.GooglePlayServicesUtil;

// Referenced classes of package com.google.android.gms.internal:
//            fx, ja, ew, u, 
//            s, v, am, bf, 
//            r

public final class j extends e
{

    private static final j a = new j();

    private j()
    {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public static r a(Context context, am am, String s1, bf bf)
    {
        Object obj;
label0:
        {
            if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) == 0)
            {
                obj = a.b(context, am, s1, bf);
                if (obj != null)
                {
                    break label0;
                }
            }
            fx.a("Using AdManager from the client jar.");
            obj = new ja(context, am, s1, bf, new ew(0x4d7808, 0x4d7808, true));
        }
        return ((r) (obj));
    }

    private r b(Context context, am am, String s1, bf bf)
    {
        r r;
        try
        {
            com.google.android.gms.a.a a1 = d.a(context);
            r = s.a(((u)a(context)).a(a1, am, s1, bf, 0x4d7808));
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not create remote AdManager.", remoteexception);
            return null;
        }
        catch (f f1)
        {
            fx.c("Could not create remote AdManager.", f1);
            return null;
        }
        return r;
    }

    protected Object a(IBinder ibinder)
    {
        return b(ibinder);
    }

    protected u b(IBinder ibinder)
    {
        return v.a(ibinder);
    }

}
