// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.flurry.sdk:
//            dp, ew, ec, fd, 
//            el, fc

public class ed
{

    private static final String a = com/flurry/sdk/ed.getSimpleName();
    private final dp b = new dp();
    private final HashMap c = new HashMap();
    private final HashMap d = new HashMap();
    private final ThreadPoolExecutor e;

    public ed(String s, int i, int j, long l, TimeUnit timeunit, BlockingQueue blockingqueue)
    {
        e = new ThreadPoolExecutor(i, j, l, timeunit, blockingqueue) {

            final ed a;

            protected void afterExecute(Runnable runnable, Throwable throwable)
            {
                super.afterExecute(runnable, throwable);
                fd fd1 = ed.a(a, runnable);
                if (fd1 == null)
                {
                    return;
                }
                synchronized (ed.a(a))
                {
                    ed.a(a).remove(fd1);
                }
                ed.a(a, fd1);
                (new fc(this, fd1) {

                    final fd a;
                    final _cls1 b;

                    public void a()
                    {
                        a.k();
                    }

            
            {
                b = _pcls1;
                a = fd1;
                super();
            }
                }).run();
                return;
                exception;
                hashmap;
                JVM INSTR monitorexit ;
                throw exception;
            }

            protected void beforeExecute(Thread thread, Runnable runnable)
            {
                super.beforeExecute(thread, runnable);
                fd fd1 = ed.a(a, runnable);
                if (fd1 == null)
                {
                    return;
                } else
                {
                    (new fc(this, fd1) {

                        final fd a;
                        final _cls1 b;

                        public void a()
                        {
                            a.j();
                        }

            
            {
                b = _pcls1;
                a = fd1;
                super();
            }
                    }).run();
                    return;
                }
            }

            protected RunnableFuture newTaskFor(Runnable runnable, Object obj)
            {
                ec ec1 = new ec(runnable, obj);
                synchronized (ed.a(a))
                {
                    ed.a(a).put((fd)runnable, ec1);
                }
                return ec1;
                exception;
                hashmap;
                JVM INSTR monitorexit ;
                throw exception;
            }

            protected RunnableFuture newTaskFor(Callable callable)
            {
                throw new UnsupportedOperationException("Callable not supported");
            }

            
            {
                a = ed.this;
                super(i, j, l, timeunit, blockingqueue);
            }
        };
        e.setRejectedExecutionHandler(new java.util.concurrent.ThreadPoolExecutor.DiscardPolicy() {

            final ed a;

            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadpoolexecutor)
            {
                super.rejectedExecution(runnable, threadpoolexecutor);
                fd fd1 = ed.a(a, runnable);
                if (fd1 == null)
                {
                    return;
                }
                synchronized (ed.a(a))
                {
                    ed.a(a).remove(fd1);
                }
                ed.a(a, fd1);
                (new fc(this, fd1) {

                    final fd a;
                    final _cls2 b;

                    public void a()
                    {
                        a.l();
                    }

            
            {
                b = _pcls2;
                a = fd1;
                super();
            }
                }).run();
                return;
                exception;
                hashmap;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                a = ed.this;
                super();
            }
        });
        ew ew1 = new ew(s, 1);
        e.setThreadFactory(ew1);
    }

    static fd a(ed ed1, Runnable runnable)
    {
        return ed1.a(runnable);
    }

    private fd a(Runnable runnable)
    {
        if (runnable instanceof ec)
        {
            return (fd)((ec)runnable).a();
        }
        if (runnable instanceof fd)
        {
            return (fd)runnable;
        } else
        {
            el.a(6, a, (new StringBuilder()).append("Unknown runnable class: ").append(runnable.getClass().getName()).toString());
            return null;
        }
    }

    static HashMap a(ed ed1)
    {
        return ed1.d;
    }

    static void a(ed ed1, fd fd1)
    {
        ed1.b(fd1);
    }

    private void b(fd fd1)
    {
        this;
        JVM INSTR monitorenter ;
        c(c.get(fd1), fd1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(Object obj, fd fd1)
    {
        this;
        JVM INSTR monitorenter ;
        b.a(obj, fd1);
        c.put(fd1, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void c(Object obj, fd fd1)
    {
        this;
        JVM INSTR monitorenter ;
        b.b(obj, fd1);
        c.remove(fd1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(fd fd1)
    {
        this;
        JVM INSTR monitorenter ;
        if (fd1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Future future;
        synchronized (d)
        {
            future = (Future)d.remove(fd1);
        }
        b(fd1);
        if (future == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        future.cancel(true);
        (new fc(fd1) {

            final fd a;
            final ed b;

            public void a()
            {
                a.h();
            }

            
            {
                b = ed.this;
                a = fd1;
                super();
            }
        }).run();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
        exception1;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void a(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (obj != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        HashSet hashset = new HashSet();
        hashset.addAll(b.a(obj));
        Iterator iterator = hashset.iterator();
        while (iterator.hasNext()) 
        {
            a((fd)iterator.next());
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void a(Object obj, fd fd1)
    {
        this;
        JVM INSTR monitorenter ;
        if (obj != null && fd1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        b(obj, fd1);
        e.submit(fd1);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public long b(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (obj != null) goto _L2; else goto _L1
_L1:
        long l = 0L;
_L4:
        this;
        JVM INSTR monitorexit ;
        return l;
_L2:
        int i = b.a(obj).size();
        l = i;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

}
