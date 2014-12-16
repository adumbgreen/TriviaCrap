// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            CachedAd, HandShake, AdCache, AdCacheThreadPool

class e
    implements Comparable, Runnable
{

    final AdCacheThreadPool a;
    private WeakReference b;
    private String c;
    private CachedAd d;
    private WeakReference e;

    public int compareTo(e e1)
    {
        return d.e - e1.d.e;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((compareTo)obj);
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof compareTo))
        {
            return false;
        } else
        {
            compareTo compareto = (compareTo)obj;
            return d.equals(compareto.d);
        }
    }

    public void run()
    {
        d d1;
        boolean flag;
        if (e != null)
        {
            d1 = (e)e.get();
        } else
        {
            d1 = null;
        }
        if (d1 != null)
        {
            d1.wnloadStart(d);
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
        if (d1 != null)
        {
            d1.wnloadCompleted(d, flag);
        }
    }

    (AdCacheThreadPool adcachethreadpool, Context context, String s, CachedAd cachedad,  )
    {
        a = adcachethreadpool;
        super();
        b = new WeakReference(context.getApplicationContext());
        c = s;
        d = cachedad;
        if ( != null)
        {
            e = new WeakReference();
        }
    }
}
