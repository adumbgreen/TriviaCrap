// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            fo, ct, cz, fx, 
//            fw, cx, db, du, 
//            dc, cy

public class cu extends fo
    implements ServiceConnection
{

    private final Object a = new Object();
    private boolean b;
    private Context c;
    private du d;
    private ct e;
    private cz f;
    private List g;
    private dc h;

    public cu(Context context, du du, dc dc)
    {
        b = false;
        g = null;
        c = context;
        d = du;
        h = dc;
        e = new ct(context);
        f = cz.a(c);
        g = f.a(10L);
    }

    static dc a(cu cu1)
    {
        return cu1.h;
    }

    private void a(long l)
    {
        do
        {
            if (!b(l))
            {
                fx.e("Timeout waiting for pending transaction to be processed.");
            }
        } while (!b);
    }

    private void a(cx cx1, String s, String s1)
    {
        Intent intent = new Intent();
        intent.putExtra("RESPONSE_CODE", 0);
        intent.putExtra("INAPP_PURCHASE_DATA", s);
        intent.putExtra("INAPP_DATA_SIGNATURE", s1);
        fw.a.post(new Runnable(cx1, intent) {

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

            
            {
                c = cu.this;
                a = cx1;
                b = intent;
                super();
            }
        });
    }

    static Context b(cu cu1)
    {
        return cu1.c;
    }

    private boolean b(long l)
    {
        long l1 = 60000L - (SystemClock.elapsedRealtime() - l);
        if (l1 <= 0L)
        {
            return false;
        }
        try
        {
            a.wait(l1);
        }
        catch (InterruptedException interruptedexception)
        {
            fx.e("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    static du c(cu cu1)
    {
        return cu1.d;
    }

    private void c()
    {
        if (!g.isEmpty()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap;
        String s;
        hashmap = new HashMap();
        cx cx2;
        for (Iterator iterator = g.iterator(); iterator.hasNext(); hashmap.put(cx2.c, cx2))
        {
            cx2 = (cx)iterator.next();
        }

        s = null;
_L7:
        Bundle bundle = e.b(c.getPackageName(), s);
          goto _L3
_L5:
        Iterator iterator1 = hashmap.keySet().iterator();
        while (iterator1.hasNext()) 
        {
            String s2 = (String)iterator1.next();
            f.a((cx)hashmap.get(s2));
        }
          goto _L1
_L3:
        if (bundle == null || db.a(bundle) != 0) goto _L5; else goto _L4
_L4:
        String s1;
        ArrayList arraylist = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList arraylist1 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList arraylist2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        s1 = bundle.getString("INAPP_CONTINUATION_TOKEN");
        for (int i = 0; i < arraylist.size(); i++)
        {
            if (!hashmap.containsKey(arraylist.get(i)))
            {
                continue;
            }
            String s3 = (String)arraylist.get(i);
            String s4 = (String)arraylist1.get(i);
            String s5 = (String)arraylist2.get(i);
            cx cx1 = (cx)hashmap.get(s3);
            String s6 = db.a(s4);
            if (cx1.b.equals(s6))
            {
                a(cx1, s4, s5);
                hashmap.remove(s3);
            }
        }

        if (s1 == null || hashmap.isEmpty()) goto _L5; else goto _L6
_L6:
        s = s1;
          goto _L7
    }

    public void a()
    {
        synchronized (a)
        {
            Context context = c;
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            c;
            context.bindService(intent, this, 1);
            a(SystemClock.elapsedRealtime());
            c.unbindService(this);
            e.a();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        synchronized (a)
        {
            c.unbindService(this);
            e.a();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        synchronized (a)
        {
            e.a(ibinder);
            c();
            b = true;
            a.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        fx.c("In-app billing service disconnected.");
        e.a();
    }
}
