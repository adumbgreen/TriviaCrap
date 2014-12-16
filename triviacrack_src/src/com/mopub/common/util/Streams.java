// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Streams
{

    public Streams()
    {
    }

    public static void closeStream(Closeable closeable)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public static void copyContent(InputStream inputstream, OutputStream outputstream)
    {
        if (inputstream == null || outputstream == null)
        {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte abyte0[] = new byte[16384];
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                return;
            }
        } while (true);
    }

    public static void copyContent(InputStream inputstream, OutputStream outputstream, long l)
    {
        if (inputstream == null || outputstream == null)
        {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte abyte0[] = new byte[16384];
        long l1 = 0L;
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                l1 += i;
                if (l1 >= l)
                {
                    throw new IOException((new StringBuilder()).append("Error copying content: attempted to copy ").append(l1).append(" bytes, with ").append(l).append(" maximum.").toString());
                }
                outputstream.write(abyte0, 0, i);
            } else
            {
                return;
            }
        } while (true);
    }

    public static void readStream(InputStream inputstream, byte abyte0[])
    {
        int i = 0;
        int j = abyte0.length;
        do
        {
            int k = inputstream.read(abyte0, i, j);
            if (k == -1)
            {
                break;
            }
            i += k;
            j -= k;
        } while (j > 0);
    }
}
