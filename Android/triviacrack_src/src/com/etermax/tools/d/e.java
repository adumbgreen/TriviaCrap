// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.d;

import java.io.Closeable;
import java.io.InputStream;

// Referenced classes of package com.etermax.tools.d:
//            a

public final class e
    implements Closeable
{

    final a a;
    private final String b;
    private final long c;
    private final InputStream d[];

    private e(a a1, String s, long l, InputStream ainputstream[])
    {
        a = a1;
        super();
        b = s;
        c = l;
        d = ainputstream;
    }

    e(a a1, String s, long l, InputStream ainputstream[], a._cls1 _pcls1)
    {
        this(a1, s, l, ainputstream);
    }

    public InputStream a(int i)
    {
        return d[i];
    }

    public void close()
    {
        InputStream ainputstream[] = d;
        int i = ainputstream.length;
        for (int j = 0; j < i; j++)
        {
            com.etermax.tools.d.a.a(ainputstream[j]);
        }

    }
}
