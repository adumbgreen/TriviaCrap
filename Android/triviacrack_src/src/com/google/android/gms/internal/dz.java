// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.d;
import com.google.android.gms.a.e;
import com.google.android.gms.a.f;

// Referenced classes of package com.google.android.gms.internal:
//            ea, fx, cw, dn, 
//            dl, do, dk

public final class dz extends e
{

    private static final dz a = new dz();

    private dz()
    {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    public static dk a(Activity activity)
    {
        dk dk;
        try
        {
            if (b(activity))
            {
                fx.a("Using AdOverlay from the client jar.");
                return new cw(activity);
            }
            dk = a.c(activity);
        }
        catch (ea ea1)
        {
            com.google.android.gms.internal.fx.e(ea1.getMessage());
            return null;
        }
        return dk;
    }

    private static boolean b(Activity activity)
    {
        Intent intent = activity.getIntent();
        if (!intent.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar"))
        {
            throw new ea("InAppPurchaseManager requires the useClientJar flag in intent extras.");
        } else
        {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
        }
    }

    private dk c(Activity activity)
    {
        dk dk;
        try
        {
            com.google.android.gms.a.a a1 = d.a(activity);
            dk = dl.a(((dn)a(activity)).a(a1));
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not create remote InAppPurchaseManager.", remoteexception);
            return null;
        }
        catch (f f1)
        {
            fx.c("Could not create remote InAppPurchaseManager.", f1);
            return null;
        }
        return dk;
    }

    protected Object a(IBinder ibinder)
    {
        return b(ibinder);
    }

    protected dn b(IBinder ibinder)
    {
        return com.google.android.gms.internal.do.a(ibinder);
    }

}
