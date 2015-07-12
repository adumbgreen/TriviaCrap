// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.mopub.nativeads:
//            e, i, ai

class f
    implements com.mopub.common.CacheService.DiskLruCacheGetListener
{

    final e a;
    private final int b;

    f(e e1, int j)
    {
        a = e1;
        super();
        b = j;
    }

    public void onComplete(String s, byte abyte0[])
    {
        if (s == null)
        {
            a.b();
        } else
        {
            android.graphics.Bitmap bitmap = null;
            if (abyte0 != null)
            {
                bitmap = i.byteArrayToBitmap(abyte0, b);
            }
            a.c.put(s, bitmap);
            if (a.d.incrementAndGet() == a.b)
            {
                a.a.onSuccess(a.c);
                return;
            }
        }
    }
}
