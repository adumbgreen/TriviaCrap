// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.mopub.nativeads:
//            ai

abstract class ah
{

    protected final ai a;
    protected final int b;
    protected final Map c;
    protected final AtomicInteger d;
    protected final AtomicBoolean e;

    ah(List list, ai ai)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("Urls list cannot be null");
        }
        if (list.contains(null))
        {
            throw new IllegalArgumentException("Urls list cannot contain null");
        }
        if (ai == null)
        {
            throw new IllegalArgumentException("ImageTaskManagerListener cannot be null");
        } else
        {
            b = list.size();
            a = ai;
            d = new AtomicInteger(0);
            e = new AtomicBoolean(false);
            c = Collections.synchronizedMap(new HashMap(b));
            return;
        }
    }
}
