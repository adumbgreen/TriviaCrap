// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            io, ip

public final class in
{

    private final byte a[];
    private final int b;
    private int c;

    private in(byte abyte0[], int i, int j)
    {
        a = abyte0;
        c = i;
        b = i + j;
    }

    public static in a(byte abyte0[])
    {
        return a(abyte0, 0, abyte0.length);
    }

    public static in a(byte abyte0[], int i, int j)
    {
        return new in(abyte0, i, j);
    }

    public int a()
    {
        return b - c;
    }

    public void a(byte byte0)
    {
        if (c == b)
        {
            throw new io(c, b);
        } else
        {
            byte abyte0[] = a;
            int i = c;
            c = i + 1;
            abyte0[i] = byte0;
            return;
        }
    }

    public void a(int i)
    {
        a((byte)i);
    }

    public void a(int i, int j)
    {
        b(ip.a(i, j));
    }

    public void a(int i, long l)
    {
        a(i, 0);
        a(l);
    }

    public void a(int i, String s)
    {
        a(i, 2);
        a(s);
    }

    public void a(long l)
    {
        b(l);
    }

    public void a(String s)
    {
        byte abyte0[] = s.getBytes("UTF-8");
        b(abyte0.length);
        b(abyte0);
    }

    public void b(int i)
    {
        do
        {
            if ((i & 0xffffff80) == 0)
            {
                a(i);
                return;
            }
            a(0x80 | i & 0x7f);
            i >>>= 7;
        } while (true);
    }

    public void b(long l)
    {
        do
        {
            if ((-128L & l) == 0L)
            {
                a((int)l);
                return;
            }
            a(0x80 | 0x7f & (int)l);
            l >>>= 7;
        } while (true);
    }

    public void b(byte abyte0[])
    {
        b(abyte0, 0, abyte0.length);
    }

    public void b(byte abyte0[], int i, int j)
    {
        if (b - c >= j)
        {
            System.arraycopy(abyte0, i, a, c, j);
            c = j + c;
            return;
        } else
        {
            throw new io(c, b);
        }
    }
}
