// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            fx, ay, aw, bc, 
//            bb, dt, fw, bg, 
//            bj

public final class av
{

    private final dt a;
    private final bg b;
    private final Context c;
    private final Object d = new Object();
    private final ay e;
    private boolean f;
    private bb g;

    public av(Context context, dt dt1, bg bg, ay ay1)
    {
        f = false;
        c = context;
        a = dt1;
        b = bg;
        e = ay1;
    }

    public bc a(long l, long l1)
    {
        Iterator iterator;
        fx.a("Starting mediation.");
        iterator = e.a.iterator();
_L4:
        aw aw1;
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_247;
        }
        aw1 = (aw)iterator.next();
        fx.c((new StringBuilder()).append("Trying mediation network: ").append(aw1.b).toString());
        iterator1 = aw1.c.iterator();
_L2:
        String s;
label0:
        {
            if (!iterator1.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            s = (String)iterator1.next();
            bc bc1;
            synchronized (d)
            {
                if (!f)
                {
                    break label0;
                }
                bc1 = new bc(-1);
            }
            return bc1;
        }
        g = new bb(c, s, b, e, aw1, a.c, a.d, a.k);
        obj;
        JVM INSTR monitorexit ;
        bc bc2;
        bc2 = g.a(l, l1);
        if (bc2.a == 0)
        {
            fx.a("Adapter succeeded.");
            return bc2;
        }
        break MISSING_BLOCK_LABEL_219;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (bc2.c != null)
        {
            fw.a.post(new Runnable(bc2) {

                final bc a;
                final av b;

                public void run()
                {
                    try
                    {
                        a.c.c();
                        return;
                    }
                    catch (RemoteException remoteexception)
                    {
                        fx.c("Could not destroy mediation adapter.", remoteexception);
                    }
                }

            
            {
                b = av.this;
                a = bc1;
                super();
            }
            });
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        return new bc(1);
    }

    public void a()
    {
        synchronized (d)
        {
            f = true;
            if (g != null)
            {
                g.a();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
