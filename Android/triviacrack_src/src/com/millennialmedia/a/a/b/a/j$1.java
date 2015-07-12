// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import java.lang.reflect.Field;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            l, j, o

class c extends l
{

    final s a;
    final e b;
    final a c;
    final Field d;
    final boolean e;
    final j f;

    void a(com.millennialmedia.a.a.d.a a1, Object obj)
    {
        Object obj1 = a.b(a1);
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

    (j j1, String s1, boolean flag, boolean flag1, e e1, a a1, Field field, 
            boolean flag2)
    {
        f = j1;
        b = e1;
        c = a1;
        d = field;
        e = flag2;
        super(s1, flag, flag1);
        a = b.a(c);
    }
}
