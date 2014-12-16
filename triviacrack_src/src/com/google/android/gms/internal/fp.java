// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.google.android.gms.internal:
//            fx

public final class fp
{

    private static final ThreadFactory a;
    private static final ThreadPoolExecutor b;

    public static int a()
    {
        return b.getPoolSize();
    }

    public static void a(Runnable runnable)
    {
        try
        {
            b.execute(new Runnable(runnable) {

                final Runnable a;

                public void run()
                {
                    Process.setThreadPriority(10);
                    a.run();
                }

            
            {
                a = runnable;
                super();
            }
            });
            return;
        }
        catch (RejectedExecutionException rejectedexecutionexception)
        {
            fx.c((new StringBuilder()).append("Too many background threads already running. Aborting task.  Current pool size: ").append(a()).toString(), rejectedexecutionexception);
        }
    }

    static 
    {
        a = new ThreadFactory() {

            private final AtomicInteger a = new AtomicInteger(1);

            public Thread newThread(Runnable runnable)
            {
                return new Thread(runnable, (new StringBuilder()).append("AdWorker #").append(a.getAndIncrement()).toString());
            }

        };
        b = new ThreadPoolExecutor(0, 10, 65L, TimeUnit.SECONDS, new SynchronousQueue(true), a);
    }
}
