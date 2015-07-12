// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.net.Uri;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.b.a:
//            ar

public final class ai
{

    private static final long o;
    int a;
    long b;
    public final Uri c;
    public final int d;
    public final List e;
    public final int f;
    public final int g;
    public final boolean h;
    public final boolean i;
    public final float j;
    public final float k;
    public final float l;
    public final boolean m;
    public final android.graphics.Bitmap.Config n;

    private ai(Uri uri, int i1, List list, int j1, int k1, boolean flag, boolean flag1, 
            float f1, float f2, float f3, boolean flag2, android.graphics.Bitmap.Config config)
    {
        c = uri;
        d = i1;
        if (list == null)
        {
            e = null;
        } else
        {
            e = Collections.unmodifiableList(list);
        }
        f = j1;
        g = k1;
        h = flag;
        i = flag1;
        j = f1;
        k = f2;
        l = f3;
        m = flag2;
        n = config;
    }


    String a()
    {
        long l1 = System.nanoTime() - b;
        if (l1 > o)
        {
            return (new StringBuilder()).append(b()).append('+').append(TimeUnit.NANOSECONDS.toSeconds(l1)).append('s').toString();
        } else
        {
            return (new StringBuilder()).append(b()).append('+').append(TimeUnit.NANOSECONDS.toMillis(l1)).append("ms").toString();
        }
    }

    String b()
    {
        return (new StringBuilder()).append("[R").append(a).append(']').toString();
    }

    String c()
    {
        if (c != null)
        {
            return c.getPath();
        } else
        {
            return Integer.toHexString(d);
        }
    }

    public boolean d()
    {
        return f != 0;
    }

    boolean e()
    {
        return f() || g();
    }

    boolean f()
    {
        return f != 0 || j != 0.0F;
    }

    boolean g()
    {
        return e != null;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Request{");
        if (d > 0)
        {
            stringbuilder.append(d);
        } else
        {
            stringbuilder.append(c);
        }
        if (e != null && !e.isEmpty())
        {
            ar ar1;
            for (Iterator iterator = e.iterator(); iterator.hasNext(); stringbuilder.append(' ').append(ar1.a()))
            {
                ar1 = (ar)iterator.next();
            }

        }
        if (f > 0)
        {
            stringbuilder.append(" resize(").append(f).append(',').append(g).append(')');
        }
        if (h)
        {
            stringbuilder.append(" centerCrop");
        }
        if (i)
        {
            stringbuilder.append(" centerInside");
        }
        if (j != 0.0F)
        {
            stringbuilder.append(" rotation(").append(j);
            if (m)
            {
                stringbuilder.append(" @ ").append(k).append(',').append(l);
            }
            stringbuilder.append(')');
        }
        if (n != null)
        {
            stringbuilder.append(' ').append(n);
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        o = TimeUnit.SECONDS.toNanos(5L);
    }
}
