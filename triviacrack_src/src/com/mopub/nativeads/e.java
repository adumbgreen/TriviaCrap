// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import com.mopub.common.CacheService;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.mopub.nativeads:
//            ah, ai, f

class e extends ah
{

    private final List f;
    private final int g;

    e(List list, ai ai1, int i)
    {
        super(list, ai1);
        g = i;
        f = list;
    }

    void a()
    {
        if (f.isEmpty())
        {
            a.onSuccess(c);
        }
        f f1 = new f(this, g);
        for (Iterator iterator = f.iterator(); iterator.hasNext(); CacheService.getFromDiskCacheAsync((String)iterator.next(), f1)) { }
    }

    void b()
    {
        if (e.compareAndSet(false, true))
        {
            a.onFail();
        }
    }
}
