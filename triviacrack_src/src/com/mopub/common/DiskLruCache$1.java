// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import java.util.concurrent.Callable;

// Referenced classes of package com.mopub.common:
//            DiskLruCache

class a
    implements Callable
{

    final DiskLruCache a;

    public volatile Object call()
    {
        return call();
    }

    public Void call()
    {
label0:
        {
            synchronized (a)
            {
                if (DiskLruCache.a(a) != null)
                {
                    break label0;
                }
            }
            return null;
        }
        DiskLruCache.b(a);
        if (DiskLruCache.c(a))
        {
            DiskLruCache.d(a);
            DiskLruCache.a(a, 0);
        }
        disklrucache;
        JVM INSTR monitorexit ;
        return null;
        exception;
        disklrucache;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (DiskLruCache disklrucache)
    {
        a = disklrucache;
        super();
    }
}
