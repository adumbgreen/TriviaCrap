// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.millennialmedia.a.a.b:
//            a

public final class r
{

    private static final Map a;
    private static final Map b;

    public static Class a(Class class1)
    {
        Class class2 = (Class)a.get(com.millennialmedia.a.a.b.a.a(class1));
        if (class2 == null)
        {
            return class1;
        } else
        {
            return class2;
        }
    }

    private static void a(Map map, Map map1, Class class1, Class class2)
    {
        map.put(class1, class2);
        map1.put(class2, class1);
    }

    public static boolean a(Type type)
    {
        return a.containsKey(type);
    }

    static 
    {
        HashMap hashmap = new HashMap(16);
        HashMap hashmap1 = new HashMap(16);
        a(hashmap, hashmap1, Boolean.TYPE, java/lang/Boolean);
        a(hashmap, hashmap1, Byte.TYPE, java/lang/Byte);
        a(hashmap, hashmap1, Character.TYPE, java/lang/Character);
        a(hashmap, hashmap1, Double.TYPE, java/lang/Double);
        a(hashmap, hashmap1, Float.TYPE, java/lang/Float);
        a(hashmap, hashmap1, Integer.TYPE, java/lang/Integer);
        a(hashmap, hashmap1, Long.TYPE, java/lang/Long);
        a(hashmap, hashmap1, Short.TYPE, java/lang/Short);
        a(hashmap, hashmap1, Void.TYPE, java/lang/Void);
        a = Collections.unmodifiableMap(hashmap);
        b = Collections.unmodifiableMap(hashmap1);
    }
}
