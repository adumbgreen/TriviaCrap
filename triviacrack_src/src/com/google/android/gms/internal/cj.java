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
//            ck, fx, bx, co, 
//            cm, cp, cl

public final class cj extends e
{

    private static final cj a = new cj();

    private cj()
    {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public static cl a(Activity activity)
    {
        cl cl;
        try
        {
            if (b(activity))
            {
                fx.a("Using AdOverlay from the client jar.");
                return new bx(activity);
            }
            cl = a.c(activity);
        }
        catch (ck ck1)
        {
            com.google.android.gms.internal.fx.e(ck1.getMessage());
            return null;
        }
        return cl;
    }

    private static boolean b(Activity activity)
    {
        Intent intent = activity.getIntent();
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar"))
        {
            throw new ck("Ad overlay requires the useClientJar flag in intent extras.");
        } else
        {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
    }

    private cl c(Activity activity)
    {
        cl cl;
        try
        {
            com.google.android.gms.a.a a1 = d.a(activity);
            cl = cm.a(((co)a(activity)).a(a1));
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not create remote AdOverlay.", remoteexception);
            return null;
        }
        catch (f f1)
        {
            fx.c("Could not create remote AdOverlay.", f1);
            return null;
        }
        return cl;
    }

    protected Object a(IBinder ibinder)
    {
        return b(ibinder);
    }

    protected co b(IBinder ibinder)
    {
        return cp.a(ibinder);
    }

}
