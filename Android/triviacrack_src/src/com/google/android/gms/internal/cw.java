// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            dl, cz, cr, cy, 
//            du, fx, ct, db, 
//            dc, de, cx

public class cw extends dl
    implements ServiceConnection
{

    private final Activity a;
    private final cz b;
    private Context c;
    private du d;
    private de e;
    private ct f;
    private cx g;
    private dc h;
    private String i;

    public cw(Activity activity)
    {
        i = null;
        a = activity;
        b = cz.a(a.getApplicationContext());
    }

    public static void a(Context context, boolean flag, cr cr1)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
        intent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", flag);
        cr.a(intent, cr1);
        context.startActivity(intent);
    }

    private void a(String s, boolean flag, int j, Intent intent)
    {
        try
        {
            d.a(new cy(c, s, flag, j, intent, g));
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.e("Fail to invoke PlayStorePurchaseListener.");
        }
    }

    public void a()
    {
        cr cr1 = cr.a(a.getIntent());
        d = cr1.b;
        h = cr1.c;
        e = cr1.d;
        f = new ct(a.getApplicationContext());
        c = cr1.e;
        Activity activity = a;
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        a.getApplicationContext();
        activity.bindService(intent, this, 1);
    }

    public void a(int j, int k, Intent intent)
    {
        if (j != 1001) goto _L2; else goto _L1
_L1:
        int l = db.a(intent);
        if (k != -1 || l != 0)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (!h.a(i, k, intent)) goto _L4; else goto _L3
_L3:
        a(e.a(), true, k, intent);
_L5:
        e.c(l);
        i = null;
        a.finish();
_L2:
        return;
_L4:
        a(e.a(), false, k, intent);
          goto _L5
        RemoteException remoteexception;
        remoteexception;
        fx.e("Fail to process purchase result.");
        i = null;
        a.finish();
        return;
        b.a(g);
        a(e.a(), false, k, intent);
          goto _L5
        Exception exception;
        exception;
        i = null;
        a.finish();
        throw exception;
    }

    public void b()
    {
        a.unbindService(this);
        f.a();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        f.a(ibinder);
        Bundle bundle;
        PendingIntent pendingintent;
        i = h.a();
        bundle = f.a(a.getPackageName(), e.a(), i);
        pendingintent = (PendingIntent)bundle.getParcelable("BUY_INTENT");
        if (pendingintent != null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        int j = db.a(bundle);
        e.c(j);
        a(e.a(), false, j, null);
        a.finish();
        return;
        g = new cx(e.a(), i);
        b.b(g);
        a.startIntentSenderForResult(pendingintent.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        return;
        Object obj;
        obj;
_L2:
        fx.c("Error when connecting in-app billing service", ((Throwable) (obj)));
        a.finish();
        return;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        fx.c("In-app billing service disconnected.");
        f.a();
    }
}
