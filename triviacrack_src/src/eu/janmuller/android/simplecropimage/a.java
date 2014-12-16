// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import java.util.Iterator;
import java.util.WeakHashMap;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            d, c, b

public class a
{

    private static a b = null;
    private final WeakHashMap a = new WeakHashMap();

    private a()
    {
    }

    public static a a()
    {
        eu/janmuller/android/simplecropimage/a;
        JVM INSTR monitorenter ;
        a a1;
        if (b == null)
        {
            b = new a();
        }
        a1 = b;
        eu/janmuller/android/simplecropimage/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    private d b(Thread thread)
    {
        this;
        JVM INSTR monitorenter ;
        d d1 = (d)a.get(thread);
        if (d1 != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        d1 = new d();
        a.put(thread, d1);
        this;
        JVM INSTR monitorexit ;
        return d1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(c c1)
    {
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c1.iterator(); iterator.hasNext(); a((Thread)iterator.next())) { }
        break MISSING_BLOCK_LABEL_37;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void a(Thread thread)
    {
        this;
        JVM INSTR monitorenter ;
        d d1 = b(thread);
        d1.a = b.a;
        if (d1.b != null)
        {
            d1.b.requestCancelDecode();
        }
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
