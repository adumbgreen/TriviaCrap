// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.a.a;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package org.a.a:
//            b

public class a
{

    public static Executor a;
    private static Executor b;
    private static final List c = new ArrayList();

    public a()
    {
    }

    static List a()
    {
        return c;
    }

    private static Future a(Runnable runnable, int i)
    {
        if (i > 0)
        {
            if (!(b instanceof ScheduledExecutorService))
            {
                throw new IllegalArgumentException("The executor set does not support scheduling");
            } else
            {
                return ((ScheduledExecutorService)b).schedule(runnable, i, TimeUnit.MILLISECONDS);
            }
        }
        if (b instanceof ExecutorService)
        {
            return ((ExecutorService)b).submit(runnable);
        } else
        {
            b.execute(runnable);
            return null;
        }
    }

    static b a(String s)
    {
        return c(s);
    }

    public static void a(String s, boolean flag)
    {
        org/a/a/a;
        JVM INSTR monitorenter ;
        int i = -1 + c.size();
_L2:
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        b b1;
        b1 = (b)c.get(i);
        if (!s.equals(org.a.a.b.c(b1)))
        {
            break MISSING_BLOCK_LABEL_152;
        }
        if (org.a.a.b.d(b1) != null)
        {
            org.a.a.b.d(b1).cancel(flag);
            if (!org.a.a.b.e(b1).getAndSet(true))
            {
                org.a.a.b.f(b1);
            }
            break MISSING_BLOCK_LABEL_152;
        }
        if (org.a.a.b.g(b1))
        {
            Log.w("BackgroundExecutor", (new StringBuilder()).append("A task with id ").append(org.a.a.b.c(b1)).append(" cannot be cancelled (the executor set does not support it)").toString());
            break MISSING_BLOCK_LABEL_152;
        }
        break MISSING_BLOCK_LABEL_135;
        Exception exception;
        exception;
        throw exception;
        c.remove(i);
        break MISSING_BLOCK_LABEL_152;
        org/a/a/a;
        JVM INSTR monitorexit ;
        return;
        i--;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(b b1)
    {
        org/a/a/a;
        JVM INSTR monitorenter ;
        boolean flag;
        if (org.a.a.b.a(b1) == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        flag = b(org.a.a.b.a(b1));
        Future future;
        future = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        org.a.a.b.a(b1, true);
        future = a(((Runnable) (b1)), org.a.a.b.b(b1));
        if (org.a.a.b.c(b1) != null || org.a.a.b.a(b1) != null)
        {
            org.a.a.b.a(b1, future);
            c.add(b1);
        }
        org/a/a/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static boolean b(String s)
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext();)
        {
            b b1 = (b)iterator.next();
            if (org.a.a.b.g(b1) && s.equals(org.a.a.b.a(b1)))
            {
                return true;
            }
        }

        return false;
    }

    private static b c(String s)
    {
        int i = c.size();
        for (int j = 0; j < i; j++)
        {
            if (s.equals(org.a.a.b.a((b)c.get(j))))
            {
                return (b)c.remove(j);
            }
        }

        return null;
    }

    static 
    {
        a = Executors.newScheduledThreadPool(2 * Runtime.getRuntime().availableProcessors());
        b = a;
    }
}
