// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.d;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.b.d:
//            h, a

class d
    implements Serializable, h
{

    private final Map a;

    public d(Map map)
    {
        org.b.d.a.a(map, "'map' must not be null");
        a = map;
    }

    public List a(Object obj)
    {
        return (List)a.get(obj);
    }

    public List a(Object obj, List list)
    {
        return (List)a.put(obj, list);
    }

    public void a(Object obj, Object obj1)
    {
        Object obj2 = (List)a.get(obj);
        if (obj2 == null)
        {
            obj2 = new LinkedList();
            a.put(obj, obj2);
        }
        ((List) (obj2)).add(obj1);
    }

    public List b(Object obj)
    {
        return (List)a.remove(obj);
    }

    public void clear()
    {
        a.clear();
    }

    public boolean containsKey(Object obj)
    {
        return a.containsKey(obj);
    }

    public boolean containsValue(Object obj)
    {
        return a.containsValue(obj);
    }

    public Set entrySet()
    {
        return a.entrySet();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        } else
        {
            return a.equals(obj);
        }
    }

    public Object get(Object obj)
    {
        return a(obj);
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public boolean isEmpty()
    {
        return a.isEmpty();
    }

    public Set keySet()
    {
        return a.keySet();
    }

    public Object put(Object obj, Object obj1)
    {
        return a(obj, (List)obj1);
    }

    public void putAll(Map map)
    {
        a.putAll(map);
    }

    public Object remove(Object obj)
    {
        return b(obj);
    }

    public int size()
    {
        return a.size();
    }

    public String toString()
    {
        return a.toString();
    }

    public Collection values()
    {
        return a.values();
    }
}
