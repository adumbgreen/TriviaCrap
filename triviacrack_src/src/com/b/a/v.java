// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

final class v extends InputStream
{

    private final InputStream a;
    private long b;
    private long c;
    private long d;
    private long e;

    public v(InputStream inputstream)
    {
        this(inputstream, 4096);
    }

    public v(InputStream inputstream, int i)
    {
        e = -1L;
        if (!inputstream.markSupported())
        {
            inputstream = new BufferedInputStream(inputstream, i);
        }
        a = inputstream;
    }

    private void a(long l, long l1)
    {
        do
        {
            long l2;
label0:
            {
label1:
                {
                    if (l < l1)
                    {
                        l2 = a.skip(l1 - l);
                        if (l2 != 0L)
                        {
                            break label0;
                        }
                        if (read() != -1)
                        {
                            break label1;
                        }
                    }
                    return;
                }
                l2 = 1L;
            }
            l += l2;
        } while (true);
    }

    private void b(long l)
    {
        if (c >= b || b > d)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        a.reset();
        a.mark((int)(l - c));
        a(c, b);
_L1:
        d = l;
        return;
        try
        {
            c = b;
            a.mark((int)(l - b));
        }
        catch (IOException ioexception)
        {
            throw new IllegalStateException((new StringBuilder()).append("Unable to mark: ").append(ioexception).toString());
        }
          goto _L1
    }

    public long a(int i)
    {
        long l = b + (long)i;
        if (d < l)
        {
            b(l);
        }
        return b;
    }

    public void a(long l)
    {
        if (b > d || l < c)
        {
            throw new IOException("Cannot reset");
        } else
        {
            a.reset();
            a(c, l);
            b = l;
            return;
        }
    }

    public int available()
    {
        return a.available();
    }

    public void close()
    {
        a.close();
    }

    public void mark(int i)
    {
        e = a(i);
    }

    public boolean markSupported()
    {
        return a.markSupported();
    }

    public int read()
    {
        int i = a.read();
        if (i != -1)
        {
            b = 1L + b;
        }
        return i;
    }

    public int read(byte abyte0[])
    {
        int i = a.read(abyte0);
        if (i != -1)
        {
            b = b + (long)i;
        }
        return i;
    }

    public int read(byte abyte0[], int i, int j)
    {
        int k = a.read(abyte0, i, j);
        if (k != -1)
        {
            b = b + (long)k;
        }
        return k;
    }

    public void reset()
    {
        a(e);
    }

    public long skip(long l)
    {
        long l1 = a.skip(l);
        b = l1 + b;
        return l1;
    }
}
