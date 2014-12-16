// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.d;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class f extends LinkedHashMap
{

    private final Map a;
    private final Locale b;

    public f()
    {
        this(null);
    }

    public f(int i, Locale locale)
    {
        super(i);
        a = new HashMap(i);
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        b = locale;
    }

    public f(Locale locale)
    {
        a = new HashMap();
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        b = locale;
    }

    public Object a(String s, Object obj)
    {
        a.put(a(s), s);
        return super.put(s, obj);
    }

    protected String a(String s)
    {
        return s.toLowerCase(b);
    }

    public void clear()
    {
        a.clear();
        super.clear();
    }

    public boolean containsKey(Object obj)
    {
        return (obj instanceof String) && a.containsKey(a((String)obj));
    }

    public Object get(Object obj)
    {
        if (obj instanceof String)
        {
            return super.get(a.get(a((String)obj)));
        } else
        {
            return null;
        }
    }

    public Object put(Object obj, Object obj1)
    {
        return a((String)obj, obj1);
    }

    public void putAll(Map map)
    {
        if (!map.isEmpty())
        {
            Iterator iterator = map.entrySet().iterator();
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                a((String)entry.getKey(), entry.getValue());
            }
        }
    }

    public Object remove(Object obj)
    {
        if (obj instanceof String)
        {
            return super.remove(a.remove(a((String)obj)));
        } else
        {
            return null;
        }
    }
}
