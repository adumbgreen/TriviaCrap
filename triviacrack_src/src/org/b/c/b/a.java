// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.b.c.c;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;

// Referenced classes of package org.b.c.b:
//            f

public abstract class a
    implements f
{

    private List a;

    protected a(k k1)
    {
        a = Collections.emptyList();
        a(Collections.singletonList(k1));
    }

    protected transient a(k ak[])
    {
        a = Collections.emptyList();
        a(Arrays.asList(ak));
    }

    protected Long a(Object obj, k k1)
    {
        return null;
    }

    public final Object a(Class class1, d d)
    {
        return b(class1, d);
    }

    public List a()
    {
        return Collections.unmodifiableList(a);
    }

    protected k a(Object obj)
    {
        List list = a();
        if (!list.isEmpty())
        {
            return (k)list.get(0);
        } else
        {
            return null;
        }
    }

    protected abstract void a(Object obj, g g1);

    public final void a(Object obj, k k1, g g1)
    {
        c c1 = g1.d();
        if (c1.c() == null)
        {
            if (k1 == null || k1.b() || k1.d())
            {
                k1 = a(obj);
            }
            if (k1 != null)
            {
                c1.a(k1);
            }
        }
        if (c1.b() == -1L)
        {
            Long long1 = a(obj, c1.c());
            if (long1 != null)
            {
                c1.a(long1.longValue());
            }
        }
        a(obj, g1);
        g1.a().flush();
    }

    public void a(List list)
    {
        org.b.d.a.a(list, "'supportedMediaTypes' must not be empty");
        a = new ArrayList(list);
    }

    protected abstract boolean a(Class class1);

    public boolean a(Class class1, k k1)
    {
        return a(class1) && a(k1);
    }

    protected boolean a(k k1)
    {
        if (k1 == null)
        {
            return true;
        }
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            if (((k)iterator.next()).a(k1))
            {
                return true;
            }
        }

        return false;
    }

    protected abstract Object b(Class class1, d d);

    public boolean b(Class class1, k k1)
    {
        return a(class1) && b(k1);
    }

    protected boolean b(k k1)
    {
        if (k1 == null || k.a.equals(k1))
        {
            return true;
        }
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            if (((k)iterator.next()).b(k1))
            {
                return true;
            }
        }

        return false;
    }
}
