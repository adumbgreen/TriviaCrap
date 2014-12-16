// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.q;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            o

final class c extends s
{

    private final s a;
    private final q b;

    public c(e e, Type type, s s1, q q1)
    {
        a = new o(e, s1, type);
        b = q1;
    }

    public Collection a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        Collection collection = (Collection)b.a();
        a1.a();
        for (; a1.e(); collection.add(a.b(a1))) { }
        a1.b();
        return collection;
    }

    public volatile void a(com.millennialmedia.a.a.d.c c1, Object obj)
    {
        a(c1, (Collection)obj);
    }

    public void a(com.millennialmedia.a.a.d.c c1, Collection collection)
    {
        if (collection == null)
        {
            c1.f();
            return;
        }
        c1.b();
        Object obj;
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); a.a(c1, obj))
        {
            obj = iterator.next();
        }

        c1.c();
    }

    public Object b(a a1)
    {
        return a(a1);
    }
}
