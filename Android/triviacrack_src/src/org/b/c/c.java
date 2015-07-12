// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;

import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.b.d.a;
import org.b.d.f;
import org.b.d.h;

// Referenced classes of package org.b.c:
//            a, k

public class c
    implements h
{

    private static final String a[] = {
        "EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM dd HH:mm:ss yyyy"
    };
    private static TimeZone b = TimeZone.getTimeZone("GMT");
    private final Map c;

    public c()
    {
        this(((Map) (new f(8, Locale.ENGLISH))), false);
    }

    private c(Map map, boolean flag)
    {
        org.b.d.a.a(map, "'headers' must not be null");
        if (flag)
        {
            f f1 = new f(map.size(), Locale.ENGLISH);
            java.util.Map.Entry entry;
            List list;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); f1.put(entry.getKey(), list))
            {
                entry = (java.util.Map.Entry)iterator.next();
                list = Collections.unmodifiableList((List)entry.getValue());
            }

            c = Collections.unmodifiableMap(f1);
            return;
        } else
        {
            c = map;
            return;
        }
    }

    public static c a(c c1)
    {
        return new c(c1, true);
    }

    public String a(String s)
    {
        List list = (List)c.get(s);
        if (list != null)
        {
            return (String)list.get(0);
        } else
        {
            return null;
        }
    }

    public List a()
    {
        String s = a("Content-Encoding");
        if (s != null)
        {
            return org.b.c.a.d(s);
        } else
        {
            return Collections.emptyList();
        }
    }

    public List a(Object obj)
    {
        return (List)c.get(obj);
    }

    public List a(String s, List list)
    {
        return (List)c.put(s, list);
    }

    public void a(long l)
    {
        c("Content-Length", Long.toString(l));
    }

    public void a(Object obj, Object obj1)
    {
        b((String)obj, (String)obj1);
    }

    public void a(String s, String s1)
    {
        org.b.d.a.a(s, "'name' must not be null");
        StringBuilder stringbuilder = new StringBuilder("form-data; name=\"");
        stringbuilder.append(s).append('"');
        if (s1 != null)
        {
            stringbuilder.append("; filename=\"");
            stringbuilder.append(s1).append('"');
        }
        c("Content-Disposition", stringbuilder.toString());
    }

    public void a(List list)
    {
        c("Accept", org.b.c.k.a(list));
    }

    public void a(org.b.c.a a1)
    {
        c(Collections.singletonList(a1));
    }

    public void a(k k1)
    {
        boolean flag = true;
        boolean flag1;
        if (!k1.b())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        org.b.d.a.a(flag1, "'Content-Type' cannot contain wildcard type '*'");
        if (k1.d())
        {
            flag = false;
        }
        org.b.d.a.a(flag, "'Content-Type' cannot contain wildcard subtype '*'");
        c("Content-Type", k1.toString());
    }

    public long b()
    {
        String s = a("Content-Length");
        if (s != null)
        {
            return Long.parseLong(s);
        } else
        {
            return -1L;
        }
    }

    public List b(Object obj)
    {
        return (List)c.remove(obj);
    }

    public void b(String s, String s1)
    {
        Object obj = (List)c.get(s);
        if (obj == null)
        {
            obj = new LinkedList();
            c.put(s, obj);
        }
        ((List) (obj)).add(s1);
    }

    public void b(List list)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            stringbuilder.append(((Charset)iterator.next()).name().toLowerCase(Locale.ENGLISH));
            if (iterator.hasNext())
            {
                stringbuilder.append(", ");
            }
        } while (true);
        c("Accept-Charset", stringbuilder.toString());
    }

    public k c()
    {
        String s = a("Content-Type");
        if (s != null)
        {
            return k.c(s);
        } else
        {
            return null;
        }
    }

    public void c(String s, String s1)
    {
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(s1);
        c.put(s, linkedlist);
    }

    public void c(List list)
    {
        c("Accept-Encoding", org.b.c.a.a(list));
    }

    public void clear()
    {
        c.clear();
    }

    public boolean containsKey(Object obj)
    {
        return c.containsKey(obj);
    }

    public boolean containsValue(Object obj)
    {
        return c.containsValue(obj);
    }

    public Set entrySet()
    {
        return c.entrySet();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof c))
        {
            return false;
        } else
        {
            c c1 = (c)obj;
            return c.equals(c1.c);
        }
    }

    public Object get(Object obj)
    {
        return a(obj);
    }

    public int hashCode()
    {
        return c.hashCode();
    }

    public boolean isEmpty()
    {
        return c.isEmpty();
    }

    public Set keySet()
    {
        return c.keySet();
    }

    public Object put(Object obj, Object obj1)
    {
        return a((String)obj, (List)obj1);
    }

    public void putAll(Map map)
    {
        c.putAll(map);
    }

    public Object remove(Object obj)
    {
        return b(obj);
    }

    public int size()
    {
        return c.size();
    }

    public String toString()
    {
        return c.toString();
    }

    public Collection values()
    {
        return c.values();
    }

}
