// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            o

public final class a extends s
{

    public static final t a = new t() {

        public s a(e e1, com.millennialmedia.a.a.c.a a1)
        {
            java.lang.reflect.Type type = a1.b();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class)type).isArray()))
            {
                return null;
            } else
            {
                java.lang.reflect.Type type1 = com.millennialmedia.a.a.b.b.g(type);
                return new a(e1, e1.a(com.millennialmedia.a.a.c.a.a(type1)), com.millennialmedia.a.a.b.b.e(type1));
            }
        }

    };
    private final Class b;
    private final s c;

    public a(e e, s s1, Class class1)
    {
        c = new o(e, s1, class1);
        b = class1;
    }

    public void a(c c1, Object obj)
    {
        if (obj == null)
        {
            c1.f();
            return;
        }
        c1.b();
        int i = 0;
        for (int j = Array.getLength(obj); i < j; i++)
        {
            Object obj1 = Array.get(obj, i);
            c.a(c1, obj1);
        }

        c1.c();
    }

    public Object b(com.millennialmedia.a.a.d.a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        ArrayList arraylist = new ArrayList();
        a1.a();
        for (; a1.e(); arraylist.add(c.b(a1))) { }
        a1.b();
        Object obj = Array.newInstance(b, arraylist.size());
        for (int i = 0; i < arraylist.size(); i++)
        {
            Array.set(obj, i, arraylist.get(i));
        }

        return obj;
    }

}
