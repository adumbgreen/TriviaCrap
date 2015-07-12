// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

// Referenced classes of package com.mopub.common:
//            DiskLruCacheUtil

class f
    implements Closeable
{

    private final InputStream a;
    private final Charset b;
    private byte c[];
    private int d;
    private int e;

    public f(InputStream inputstream, int i, Charset charset)
    {
        if (inputstream == null || charset == null)
        {
            throw new NullPointerException();
        }
        if (i < 0)
        {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(DiskLruCacheUtil.a))
        {
            throw new IllegalArgumentException("Unsupported encoding");
        } else
        {
            a = inputstream;
            b = charset;
            c = new byte[i];
            return;
        }
    }

    public f(InputStream inputstream, Charset charset)
    {
        this(inputstream, 8192, charset);
    }

    static Charset a(f f1)
    {
        return f1.b;
    }

    private void a()
    {
        int i = a.read(c, 0, c.length);
        if (i == -1)
        {
            throw new EOFException();
        } else
        {
            d = 0;
            e = i;
            return;
        }
    }

    public void close()
    {
        synchronized (a)
        {
            if (c != null)
            {
                c = null;
                a.close();
            }
        }
        return;
        exception;
        inputstream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String readLine()
    {
        InputStream inputstream = a;
        inputstream;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            throw new IOException("LineReader is closed");
        }
        break MISSING_BLOCK_LABEL_29;
        Exception exception;
        exception;
        inputstream;
        JVM INSTR monitorexit ;
        throw exception;
        int i;
        if (d >= e)
        {
            a();
        }
        i = d;
_L9:
        if (i == e) goto _L2; else goto _L1
_L1:
        if (c[i] != 10)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        ByteArrayOutputStream bytearrayoutputstream;
        int j;
        String s;
        int k;
        String s1;
        if (i != d && c[i - 1] == 13)
        {
            k = i - 1;
        } else
        {
            k = i;
        }
        s1 = new String(c, d, k - d, b.name());
        d = i + 1;
        inputstream;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        bytearrayoutputstream = new ByteArrayOutputStream(80 + (e - d)) {

            final f a;

            public String toString()
            {
                int l;
                String s2;
                if (count > 0 && buf[-1 + count] == 13)
                {
                    l = -1 + count;
                } else
                {
                    l = count;
                }
                try
                {
                    s2 = new String(buf, 0, l, f.a(a).name());
                }
                catch (UnsupportedEncodingException unsupportedencodingexception)
                {
                    throw new AssertionError(unsupportedencodingexception);
                }
                return s2;
            }

            
            {
                a = f.this;
                super(i);
            }
        };
_L8:
        bytearrayoutputstream.write(c, d, e - d);
        e = -1;
        a();
        j = d;
_L6:
        if (j == e)
        {
            break; /* Loop/switch isn't completed */
        }
        if (c[j] != 10) goto _L4; else goto _L3
_L3:
        if (j != d)
        {
            bytearrayoutputstream.write(c, d, j - d);
        }
        d = j + 1;
        s = bytearrayoutputstream.toString();
        inputstream;
        JVM INSTR monitorexit ;
        return s;
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
        i++;
          goto _L9
    }
}
