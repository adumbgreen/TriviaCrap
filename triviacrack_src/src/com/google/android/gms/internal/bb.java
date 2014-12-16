// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;

// Referenced classes of package com.google.android.gms.internal:
//            bd, ay, aw, fx, 
//            ew, am, bj, bg, 
//            ba, fw, bc, aj

public final class bb
    implements bd
{

    private final String a;
    private final bg b;
    private final long c;
    private final aw d;
    private final aj e;
    private final am f;
    private final Context g;
    private final Object h = new Object();
    private final ew i;
    private bj j;
    private int k;

    public bb(Context context, String s, bg bg1, ay ay1, aw aw1, aj aj, am am1, 
            ew ew1)
    {
        k = -2;
        g = context;
        long l;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(s))
        {
            a = a(aw1);
        } else
        {
            a = s;
        }
        b = bg1;
        if (ay1.b != -1L)
        {
            l = ay1.b;
        } else
        {
            l = 10000L;
        }
        c = l;
        d = aw1;
        e = aj;
        f = am1;
        i = ew1;
    }

    static bj a(bb bb1, bj bj1)
    {
        bb1.j = bj1;
        return bj1;
    }

    static Object a(bb bb1)
    {
        return bb1.h;
    }

    private String a(aw aw1)
    {
        if (!TextUtils.isEmpty(aw1.e) && com/google/android/gms/ads/mediation/customevent/CustomEvent.isAssignableFrom(Class.forName(aw1.e, false, com/google/android/gms/internal/bb.getClassLoader())))
        {
            return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
        }
        break MISSING_BLOCK_LABEL_40;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        fx.e("Could not create custom event adapter.");
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private void a(long l, long l1, long l2, long l3)
    {
        do
        {
            if (k != -2)
            {
                return;
            }
            b(l, l1, l2, l3);
        } while (true);
    }

    private void a(ba ba1)
    {
        if (i.d >= 0x3e8fa0)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (f.e)
        {
            j.a(com.google.android.gms.a.d.a(g), e, d.g, ba1);
            return;
        }
        try
        {
            j.a(com.google.android.gms.a.d.a(g), f, e, d.g, ba1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not request ad from mediation adapter.", remoteexception);
        }
        a(5);
        return;
        if (f.e)
        {
            j.a(com.google.android.gms.a.d.a(g), e, d.g, d.a, ba1);
            return;
        }
        j.a(com.google.android.gms.a.d.a(g), f, e, d.g, d.a, ba1);
        return;
    }

    static void a(bb bb1, ba ba1)
    {
        bb1.a(ba1);
    }

    static int b(bb bb1)
    {
        return bb1.k;
    }

    private bj b()
    {
        fx.c((new StringBuilder()).append("Instantiating mediation adapter: ").append(a).toString());
        bj bj1;
        try
        {
            bj1 = b.a(a);
        }
        catch (RemoteException remoteexception)
        {
            fx.a((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(a).toString(), remoteexception);
            return null;
        }
        return bj1;
    }

    private void b(long l, long l1, long l2, long l3)
    {
        long l4 = SystemClock.elapsedRealtime();
        long l5 = l1 - (l4 - l);
        long l6 = l3 - (l4 - l2);
        if (l5 <= 0L || l6 <= 0L)
        {
            fx.c("Timed out waiting for adapter.");
            k = 3;
            return;
        }
        try
        {
            h.wait(Math.min(l5, l6));
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            k = -1;
        }
    }

    static bj c(bb bb1)
    {
        return bb1.b();
    }

    static bj d(bb bb1)
    {
        return bb1.j;
    }

    public bc a(long l, long l1)
    {
        bc bc1;
        synchronized (h)
        {
            long l2 = SystemClock.elapsedRealtime();
            ba ba1 = new ba();
            fw.a.post(new Runnable(ba1) {

                final ba a;
                final bb b;

                public void run()
                {
label0:
                    {
                        synchronized (bb.a(b))
                        {
                            if (bb.b(b) == -2)
                            {
                                break label0;
                            }
                        }
                        return;
                    }
                    bb.a(b, bb.c(b));
                    if (com.google.android.gms.internal.bb.d(b) != null)
                    {
                        break MISSING_BLOCK_LABEL_66;
                    }
                    b.a(4);
                    obj1;
                    JVM INSTR monitorexit ;
                    return;
                    exception1;
                    obj1;
                    JVM INSTR monitorexit ;
                    throw exception1;
                    a.a(b);
                    bb.a(b, a);
                    obj1;
                    JVM INSTR monitorexit ;
                }

            
            {
                b = bb.this;
                a = ba1;
                super();
            }
            });
            a(l2, c, l, l1);
            bc1 = new bc(d, j, a, ba1, k);
        }
        return bc1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        if (j != null)
        {
            j.c();
        }
_L1:
        k = -1;
        h.notify();
        return;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Could not destroy mediation adapter.", remoteexception);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int l)
    {
        synchronized (h)
        {
            k = l;
            h.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
