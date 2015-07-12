// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.a.b;
import com.millennialmedia.a.a.b.f;
import com.millennialmedia.a.a.b.g;
import com.millennialmedia.a.a.b.r;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.d;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import java.util.Map;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            l, k, o

public final class j
    implements t
{

    private final f a;
    private final d b;
    private final g c;

    public j(f f1, d d1, g g1)
    {
        a = f1;
        b = d1;
        c = g1;
    }

    private l a(e e, Field field, String s, a a1, boolean flag, boolean flag1)
    {
        return new l(s, flag, flag1, e, a1, field, r.a(a1.a())) {

            final s a;
            final e b;
            final a c;
            final Field d;
            final boolean e;
            final j f;

            void a(com.millennialmedia.a.a.d.a a2, Object obj)
            {
                Object obj1 = a.b(a2);
                if (obj1 != null || !e)
                {
                    d.set(obj, obj1);
                }
            }

            void a(c c1, Object obj)
            {
                Object obj1 = d.get(obj);
                (new o(b, a, c.b())).a(c1, obj1);
            }

            
            {
                f = j.this;
                b = e1;
                c = a1;
                d = field;
                e = flag2;
                super(s1, flag, flag1);
                a = b.a(c);
            }
        };
    }

    private String a(Field field)
    {
        b b1 = (b)field.getAnnotation(com/millennialmedia/a/a/a/b);
        if (b1 == null)
        {
            return b.a(field);
        } else
        {
            return b1.a();
        }
    }

    private Map a(e e, a a1, Class class1)
    {
        LinkedHashMap linkedhashmap;
        java.lang.reflect.Type type;
        linkedhashmap = new LinkedHashMap();
        if (class1.isInterface())
        {
            return linkedhashmap;
        }
        type = a1.b();
_L6:
        Field afield[];
        int i;
        int i1;
        if (class1 == java/lang/Object)
        {
            break; /* Loop/switch isn't completed */
        }
        afield = class1.getDeclaredFields();
        i = afield.length;
        i1 = 0;
_L2:
        Field field;
        boolean flag;
        boolean flag1;
        if (i1 >= i)
        {
            break MISSING_BLOCK_LABEL_198;
        }
        field = afield[i1];
        flag = a(field, true);
        flag1 = a(field, false);
        if (flag || flag1)
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        l l2;
        field.setAccessible(true);
        java.lang.reflect.Type type1 = com.millennialmedia.a.a.b.b.a(a1.b(), class1, field.getGenericType());
        l l1 = a(e, field, a(field), com.millennialmedia.a.a.c.a.a(type1), flag, flag1);
        l2 = (l)linkedhashmap.put(l1.g, l1);
        if (l2 == null) goto _L4; else goto _L3
_L3:
        throw new IllegalArgumentException((new StringBuilder()).append(type).append(" declares multiple JSON fields named ").append(l2.g).toString());
        a1 = com.millennialmedia.a.a.c.a.a(com.millennialmedia.a.a.b.b.a(a1.b(), class1, class1.getGenericSuperclass()));
        class1 = a1.a();
        if (true) goto _L6; else goto _L5
_L5:
        return linkedhashmap;
    }

    public s a(e e, a a1)
    {
        Class class1 = a1.a();
        if (!java/lang/Object.isAssignableFrom(class1))
        {
            return null;
        } else
        {
            return new k(a.a(a1), a(e, a1, class1));
        }
    }

    public boolean a(Field field, boolean flag)
    {
        return !c.a(field.getType(), flag) && !c.a(field, flag);
    }
}
