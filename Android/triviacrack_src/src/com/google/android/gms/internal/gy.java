// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.e;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            hj, ib, hh, ha, 
//            hc, hf, hg, ht, 
//            hd, hk, he, hb, 
//            hs

public abstract class gy
    implements hj
{

    public static final String d[] = {
        "service_esmobile", "service_googleme"
    };
    private final Context a;
    final Handler b;
    boolean c;
    private final Looper e;
    private IInterface f;
    private final ArrayList g;
    private he h;
    private volatile int i;
    private final String j[];
    private final hh k;

    protected transient gy(Context context, Looper looper, c c1, d d1, String as[])
    {
        g = new ArrayList();
        i = 1;
        c = false;
        a = (Context)ib.a(context);
        e = (Looper)ib.a(looper, "Looper must not be null");
        k = new hh(context, looper, this);
        b = new ha(this, looper);
        a(as);
        j = as;
        a((c)ib.a(c1));
        a((d)ib.a(d1));
    }

    protected transient gy(Context context, com.google.android.gms.common.d d1, e e1, String as[])
    {
        this(context, context.getMainLooper(), ((c) (new hc(d1))), ((d) (new hf(e1))), as);
    }

    static IInterface a(gy gy1, IInterface iinterface)
    {
        gy1.f = iinterface;
        return iinterface;
    }

    static he a(gy gy1, he he1)
    {
        gy1.h = he1;
        return he1;
    }

    static hh a(gy gy1)
    {
        return gy1.k;
    }

    private void a(int i1)
    {
        int j1 = i;
        i = i1;
        if (j1 != i1)
        {
            if (i1 == 3)
            {
                d();
            } else
            if (j1 == 3 && i1 == 1)
            {
                e();
                return;
            }
        }
    }

    static void a(gy gy1, int i1)
    {
        gy1.a(i1);
    }

    static ArrayList b(gy gy1)
    {
        return gy1.g;
    }

    static IInterface c(gy gy1)
    {
        return gy1.f;
    }

    static he d(gy gy1)
    {
        return gy1.h;
    }

    static Context e(gy gy1)
    {
        return gy1.a;
    }

    protected abstract String a();

    protected void a(int i1, IBinder ibinder, Bundle bundle)
    {
        b.sendMessage(b.obtainMessage(1, new hg(this, i1, ibinder, bundle)));
    }

    public void a(c c1)
    {
        k.a(c1);
    }

    public void a(d d1)
    {
        k.a(d1);
    }

    protected abstract void a(hs hs, hd hd1);

    protected transient void a(String as[])
    {
    }

    protected abstract IInterface b(IBinder ibinder);

    protected abstract String b();

    protected final void c(IBinder ibinder)
    {
        try
        {
            a(ht.a(ibinder), new hd(this));
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("GmsClient", "service died");
        }
    }

    protected void d()
    {
    }

    protected void e()
    {
    }

    public void f()
    {
        c = true;
        a(2);
        int i1 = GooglePlayServicesUtil.isGooglePlayServicesAvailable(a);
        if (i1 != 0)
        {
            a(1);
            b.sendMessage(b.obtainMessage(3, Integer.valueOf(i1)));
        } else
        {
            if (h != null)
            {
                Log.e("GmsClient", "Calling connect() while still connected, missing disconnect().");
                f = null;
                hk.a(a).b(a(), h);
            }
            h = new he(this);
            if (!hk.a(a).a(a(), h))
            {
                Log.e("GmsClient", (new StringBuilder()).append("unable to connect to service: ").append(a()).toString());
                b.sendMessage(b.obtainMessage(3, Integer.valueOf(9)));
                return;
            }
        }
    }

    public boolean g()
    {
        return i == 3;
    }

    public boolean h()
    {
        return i == 2;
    }

    public void i()
    {
        c = false;
        ArrayList arraylist = g;
        arraylist;
        JVM INSTR monitorenter ;
        int i1 = g.size();
        int j1 = 0;
_L2:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        ((hb)g.get(j1)).d();
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
        g.clear();
        arraylist;
        JVM INSTR monitorexit ;
        a(1);
        f = null;
        if (h != null)
        {
            hk.a(a).b(a(), h);
            h = null;
        }
        return;
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final Context j()
    {
        return a;
    }

    protected final void k()
    {
        if (!g())
        {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        } else
        {
            return;
        }
    }

    public Bundle l()
    {
        return null;
    }

    public final IInterface m()
    {
        k();
        return f;
    }

    public boolean n()
    {
        return c;
    }

}
