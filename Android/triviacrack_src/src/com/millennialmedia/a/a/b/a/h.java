// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.q;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.j;
import com.millennialmedia.a.a.o;
import com.millennialmedia.a.a.s;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            o, g

final class h extends s
{

    final g a;
    private final s b;
    private final s c;
    private final q d;

    public h(g g1, e e, Type type, s s1, Type type1, s s2, q q1)
    {
        a = g1;
        super();
        b = new com.millennialmedia.a.a.b.a.o(e, s1, type);
        c = new com.millennialmedia.a.a.b.a.o(e, s2, type1);
        d = q1;
    }

    private String a(j j1)
    {
        if (j1.i())
        {
            o o1 = j1.m();
            if (o1.p())
            {
                return String.valueOf(o1.a());
            }
            if (o1.o())
            {
                return Boolean.toString(o1.f());
            }
            if (o1.q())
            {
                return o1.b();
            } else
            {
                throw new AssertionError();
            }
        }
        if (j1.j())
        {
            return "null";
        } else
        {
            throw new AssertionError();
        }
    }

    public Map a(a a1)
    {
        b b1 = a1.f();
        if (b1 == b.i)
        {
            a1.j();
            return null;
        }
        Map map = (Map)d.a();
        if (b1 == b.a)
        {
            a1.a();
            for (; a1.e(); a1.b())
            {
                a1.a();
                Object obj1 = b.b(a1);
                if (map.put(obj1, c.b(a1)) != null)
                {
                    throw new com.millennialmedia.a.a.q((new StringBuilder()).append("duplicate key: ").append(obj1).toString());
                }
            }

            a1.b();
            return map;
        }
        a1.c();
        while (a1.e()) 
        {
            com.millennialmedia.a.a.b.h.a.a(a1);
            Object obj = b.b(a1);
            if (map.put(obj, c.b(a1)) != null)
            {
                throw new com.millennialmedia.a.a.q((new StringBuilder()).append("duplicate key: ").append(obj).toString());
            }
        }
        a1.d();
        return map;
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Map)obj);
    }

    public void a(c c1, Map map)
    {
        int i = 0;
        if (map == null)
        {
            c1.f();
            return;
        }
        if (!com.millennialmedia.a.a.b.a.g.a(a))
        {
            c1.d();
            java.util.Map.Entry entry1;
            for (Iterator iterator1 = map.entrySet().iterator(); iterator1.hasNext(); c.a(c1, entry1.getValue()))
            {
                entry1 = (java.util.Map.Entry)iterator1.next();
                c1.a(String.valueOf(entry1.getKey()));
            }

            c1.e();
            return;
        }
        ArrayList arraylist = new ArrayList(map.size());
        ArrayList arraylist1 = new ArrayList(map.size());
        Iterator iterator = map.entrySet().iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            j j1 = b.a(entry.getKey());
            arraylist.add(j1);
            arraylist1.add(entry.getValue());
            boolean flag1;
            if (j1.g() || j1.h())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag = flag1 | flag;
        }
        if (flag)
        {
            c1.b();
            for (; i < arraylist.size(); i++)
            {
                c1.b();
                com.millennialmedia.a.a.b.s.a((j)arraylist.get(i), c1);
                c.a(c1, arraylist1.get(i));
                c1.c();
            }

            c1.c();
            return;
        }
        c1.d();
        for (; i < arraylist.size(); i++)
        {
            c1.a(a((j)arraylist.get(i)));
            c.a(c1, arraylist1.get(i));
        }

        c1.e();
    }

    public Object b(a a1)
    {
        return a(a1);
    }
}
