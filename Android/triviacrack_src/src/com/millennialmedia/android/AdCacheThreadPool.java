// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.millennialmedia.android:
//            CachedAd

final class AdCacheThreadPool
{

    private static AdCacheThreadPool a;
    private PriorityBlockingQueue b;
    private ThreadPoolExecutor c;

    private AdCacheThreadPool()
    {
        TimeUnit timeunit = TimeUnit.SECONDS;
        PriorityBlockingQueue priorityblockingqueue = new PriorityBlockingQueue(32);
        b = priorityblockingqueue;
        c = new ThreadPoolExecutor(1, 2, 30L, timeunit, priorityblockingqueue);
    }

    static AdCacheThreadPool a()
    {
        com/millennialmedia/android/AdCacheThreadPool;
        JVM INSTR monitorenter ;
        AdCacheThreadPool adcachethreadpool;
        if (a == null)
        {
            a = new AdCacheThreadPool();
        }
        adcachethreadpool = a;
        com/millennialmedia/android/AdCacheThreadPool;
        JVM INSTR monitorexit ;
        return adcachethreadpool;
        Exception exception;
        exception;
        throw exception;
    }

    boolean a(Context context, String s, CachedAd cachedad, AdCache.AdCacheTaskListener adcachetasklistener)
    {
        this;
        JVM INSTR monitorenter ;
        if (context == null || cachedad == null) goto _L2; else goto _L1
_L1:
        AdCacheTask adcachetask = new AdCacheTask(context, s, cachedad, adcachetasklistener);
        if (b.contains(adcachetask) || cachedad.d(context)) goto _L2; else goto _L3
_L3:
        c.execute(adcachetask);
        boolean flag = true;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    private class AdCacheTask
        implements Comparable, Runnable
    {

        final AdCacheThreadPool a;
        private WeakReference b;
        private String c;
        private CachedAd d;
        private WeakReference e;

        public int compareTo(AdCacheTask adcachetask)
        {
            return d.e - adcachetask.d.e;
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((AdCacheTask)obj);
        }

        public boolean equals(Object obj)
        {
            if (this == obj)
            {
                return true;
            }
            if (!(obj instanceof AdCacheTask))
            {
                return false;
            } else
            {
                AdCacheTask adcachetask = (AdCacheTask)obj;
                return d.equals(adcachetask.d);
            }
        }

        public void run()
        {
            AdCache.AdCacheTaskListener adcachetasklistener;
            boolean flag;
            if (e != null)
            {
                adcachetasklistener = (AdCache.AdCacheTaskListener)e.get();
            } else
            {
                adcachetasklistener = null;
            }
            if (adcachetasklistener != null)
            {
                adcachetasklistener.downloadStart(d);
            }
            HandShake.a((Context)b.get()).d(c);
            flag = d.b((Context)b.get());
            HandShake.a((Context)b.get()).e(c);
            if (!flag)
            {
                String s = AdCache.e((Context)b.get(), c);
                if (s != null && d.e().equals(s))
                {
                    d.c((Context)b.get());
                    AdCache.b((Context)b.get(), c, null);
                } else
                {
                    Context context = (Context)b.get();
                    String s1 = c;
                    boolean flag1 = d.f;
                    String s2 = null;
                    if (!flag1)
                    {
                        s2 = d.e();
                    }
                    AdCache.b(context, s1, s2);
                }
            } else
            {
                AdCache.b((Context)b.get(), c, null);
            }
            if (adcachetasklistener != null)
            {
                adcachetasklistener.downloadCompleted(d, flag);
            }
        }

        AdCacheTask(Context context, String s, CachedAd cachedad, AdCache.AdCacheTaskListener adcachetasklistener)
        {
            a = AdCacheThreadPool.this;
            super();
            b = new WeakReference(context.getApplicationContext());
            c = s;
            d = cachedad;
            if (adcachetasklistener != null)
            {
                e = new WeakReference(adcachetasklistener);
            }
        }
    }

}
