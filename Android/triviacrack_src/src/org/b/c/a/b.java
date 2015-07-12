// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.b.c.c;
import org.b.d.a;

// Referenced classes of package org.b.c.a:
//            e, i

public abstract class b
    implements e
{

    private final c a = new c();
    private boolean b;
    private OutputStream c;

    public b()
    {
        b = false;
    }

    private OutputStream a(OutputStream outputstream)
    {
        if (c == null)
        {
            c = new GZIPOutputStream(outputstream);
        }
        return c;
    }

    private void f()
    {
        boolean flag;
        if (!b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        org.b.d.a.b(flag, "ClientHttpRequest already executed");
    }

    private boolean g()
    {
        for (Iterator iterator = a.a().iterator(); iterator.hasNext();)
        {
            if (((org.b.c.a)iterator.next()).equals(org.b.c.a.c))
            {
                return true;
            }
        }

        return false;
    }

    public final OutputStream a()
    {
        f();
        OutputStream outputstream = a(a);
        if (g())
        {
            outputstream = a(outputstream);
        }
        return outputstream;
    }

    protected abstract OutputStream a(c c1);

    protected abstract i b(c c1);

    public final c d()
    {
        if (b)
        {
            return org.b.c.c.a(a);
        } else
        {
            return a;
        }
    }

    public final i e()
    {
        f();
        if (c != null)
        {
            c.close();
        }
        i i = b(a);
        b = true;
        return i;
    }
}
