// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.d;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.b.d:
//            a, h, d

public abstract class c
{

    public static h a(h h1)
    {
        org.b.d.a.a(h1, "'map' must not be null");
        LinkedHashMap linkedhashmap = new LinkedHashMap(h1.size());
        java.util.Map.Entry entry;
        List list;
        for (Iterator iterator = h1.entrySet().iterator(); iterator.hasNext(); linkedhashmap.put(entry.getKey(), list))
        {
            entry = (java.util.Map.Entry)iterator.next();
            list = Collections.unmodifiableList((List)entry.getValue());
        }

        return b(Collections.unmodifiableMap(linkedhashmap));
    }

    public static boolean a(Collection collection)
    {
        return collection == null || collection.isEmpty();
    }

    public static boolean a(Map map)
    {
        return map == null || map.isEmpty();
    }

    public static h b(Map map)
    {
        return new d(map);
    }
}
