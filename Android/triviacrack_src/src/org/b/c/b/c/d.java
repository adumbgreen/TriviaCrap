// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b.c;

import java.io.OutputStream;

class d extends OutputStream
{

    private long a;

    private d()
    {
        a = 0L;
    }

    d(c._cls1 _pcls1)
    {
        this();
    }

    static long a(d d1)
    {
        return d1.a;
    }

    public void write(int i)
    {
        a = 1L + a;
    }

    public void write(byte abyte0[])
    {
        a = a + (long)abyte0.length;
    }

    public void write(byte abyte0[], int i, int j)
    {
        a = a + (long)j;
    }
}
