// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import java.io.Closeable;
import java.io.InputStream;

// Referenced classes of package com.mopub.common:
//            DiskLruCacheUtil, DiskLruCache

public final class <init>
    implements Closeable
{

    final DiskLruCache a;
    private final String b;
    private final long c;
    private final InputStream d[];
    private final long e[];

    public void close()
    {
        InputStream ainputstream[] = d;
        int i = ainputstream.length;
        for (int j = 0; j < i; j++)
        {
            DiskLruCacheUtil.a(ainputstream[j]);
        }

    }

    public d edit()
    {
        return DiskLruCache.a(a, b, c);
    }

    public InputStream getInputStream(int i)
    {
        return d[i];
    }

    public long getLength(int i)
    {
        return e[i];
    }

    public String getString(int i)
    {
        return DiskLruCache.a(getInputStream(i));
    }

    private (DiskLruCache disklrucache, String s, long l, InputStream ainputstream[], long al[])
    {
        a = disklrucache;
        super();
        b = s;
        c = l;
        d = ainputstream;
        e = al;
    }

    e(DiskLruCache disklrucache, String s, long l, InputStream ainputstream[], long al[], e e1)
    {
        this(disklrucache, s, l, ainputstream, al);
    }
}
