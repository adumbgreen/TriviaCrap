// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.amazon.device.ads:
//            AndroidTargetUtils

class ThreadUtils
{

    private static RunnableExecutor mainThreadExecutor = new MainThreadRunnableExecutor();
    private static RunnableExecutor runnableExecutor = new ThreadPoolRunnableExecutor();

    ThreadUtils()
    {
    }

    public static final transient void executeAsyncTask(final AsyncTask task, final Object params[])
    {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            AndroidTargetUtils.executeAsyncTask(task, params);
            return;
        } else
        {
            (new Handler(Looper.getMainLooper())).post(new Runnable() {

                final Object val$params[];
                final AsyncTask val$task;

                public void run()
                {
                    AndroidTargetUtils.executeAsyncTask(task, params);
                }

            
            {
                task = asynctask;
                params = aobj;
                super();
            }
            });
            return;
        }
    }

    public static void executeOnMainThread(Runnable runnable)
    {
        if (isOnMainThread())
        {
            runnable.run();
            return;
        } else
        {
            scheduleOnMainThread(runnable);
            return;
        }
    }

    public static void executeRunnable(Runnable runnable)
    {
        runnableExecutor.execute(runnable);
    }

    public static void executeRunnableWithThreadCheck(Runnable runnable)
    {
        if (isOnMainThread())
        {
            executeRunnable(runnable);
            return;
        } else
        {
            runnable.run();
            return;
        }
    }

    public static boolean isOnMainThread()
    {
        return ThreadVerify.getInstance().isOnMainThread();
    }

    public static void scheduleOnMainThread(Runnable runnable)
    {
        mainThreadExecutor.execute(runnable);
    }


    private class RunnableExecutor
    {

        public abstract void execute(Runnable runnable);
    }


    private class ThreadVerify
    {

        private static ThreadVerify instance = new ThreadVerify();

        static ThreadVerify getInstance()
        {
            return instance;
        }

        boolean isOnMainThread()
        {
            return Looper.getMainLooper().getThread() == Thread.currentThread();
        }


        ThreadVerify()
        {
        }
    }


    private class ThreadPoolRunnableExecutor
        implements RunnableExecutor
    {

        private static final int keepAliveTimeSeconds = 30;
        private static final int maxNumberThreads = 3;
        private static final int numberThreads = 1;
        private ExecutorService executorService;

        public void execute(Runnable runnable)
        {
            executorService.submit(runnable);
        }

        public ThreadPoolRunnableExecutor()
        {
            executorService = new ThreadPoolExecutor(1, 3, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }
    }


    private class MainThreadRunnableExecutor
        implements RunnableExecutor
    {

        public void execute(Runnable runnable)
        {
            (new Handler(Looper.getMainLooper())).post(runnable);
        }

        public MainThreadRunnableExecutor()
        {
        }
    }

}
