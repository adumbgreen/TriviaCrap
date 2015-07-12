// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

// Referenced classes of package com.google.android.gms.internal:
//            e, d, am, fg

public final class c
    implements e
{

    private final Object a = new Object();
    private WeakHashMap b;
    private ArrayList c;

    public c()
    {
        b = new WeakHashMap();
        c = new ArrayList();
    }

    public d a(am am, fg fg)
    {
label0:
        {
            d d2;
            synchronized (a)
            {
                if (!a(fg))
                {
                    break label0;
                }
                d2 = (d)b.get(fg);
            }
            return d2;
        }
        d d1;
        d1 = new d(am, fg);
        d1.a(this);
        b.put(fg, d1);
        c.add(d1);
        obj;
        JVM INSTR monitorexit ;
        return d1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((d)iterator.next()).j()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public void a(d d1)
    {
        synchronized (a)
        {
            if (!d1.e())
            {
                c.remove(d1);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(fg fg)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        d d1 = (d)b.get(fg);
        if (d1 == null) goto _L2; else goto _L1
_L1:
        if (!d1.e()) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void b()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((d)iterator.next()).k()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public void b(fg fg)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        d d1 = (d)b.get(fg);
        if (d1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        d1.c();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((d)iterator.next()).l()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }
}
