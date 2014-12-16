// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

// Referenced classes of package com.mopub.common:
//            DiskLruCache

final class e
{

    final DiskLruCache a;
    private final String b;
    private final long c[];
    private boolean d;
    private DiskLruCache.Editor e;
    private long f;

    private e(DiskLruCache disklrucache, String s)
    {
        a = disklrucache;
        super();
        b = s;
        c = new long[DiskLruCache.e(disklrucache)];
    }

    e(DiskLruCache disklrucache, String s, DiskLruCache._cls1 _pcls1)
    {
        this(disklrucache, s);
    }

    static long a(e e1, long l)
    {
        e1.f = l;
        return l;
    }

    static DiskLruCache.Editor a(e e1)
    {
        return e1.e;
    }

    static DiskLruCache.Editor a(e e1, DiskLruCache.Editor editor)
    {
        e1.e = editor;
        return editor;
    }

    static void a(e e1, String as[])
    {
        e1.a(as);
    }

    private void a(String as[])
    {
        if (as.length != DiskLruCache.e(a))
        {
            throw b(as);
        }
        int i = 0;
        do
        {
            try
            {
                if (i >= as.length)
                {
                    break;
                }
                c[i] = Long.parseLong(as[i]);
            }
            catch (NumberFormatException numberformatexception)
            {
                throw b(as);
            }
            i++;
        } while (true);
    }

    static boolean a(e e1, boolean flag)
    {
        e1.d = flag;
        return flag;
    }

    private IOException b(String as[])
    {
        throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(Arrays.toString(as)).toString());
    }

    static long[] b(e e1)
    {
        return e1.c;
    }

    static String c(e e1)
    {
        return e1.b;
    }

    static boolean d(e e1)
    {
        return e1.d;
    }

    static long e(e e1)
    {
        return e1.f;
    }

    public File getCleanFile(int i)
    {
        return new File(DiskLruCache.f(a), (new StringBuilder()).append(b).append(".").append(i).toString());
    }

    public File getDirtyFile(int i)
    {
        return new File(DiskLruCache.f(a), (new StringBuilder()).append(b).append(".").append(i).append(".tmp").toString());
    }

    public String getLengths()
    {
        StringBuilder stringbuilder = new StringBuilder();
        long al[] = c;
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            long l = al[j];
            stringbuilder.append(' ').append(l);
        }

        return stringbuilder.toString();
    }
}
