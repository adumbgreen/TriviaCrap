// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.j;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class i extends s
{

    public static final t a = new t() {

        public s a(e e1, com.millennialmedia.a.a.c.a a1)
        {
            if (a1.a() == java/lang/Object)
            {
                return new i(e1);
            } else
            {
                return null;
            }
        }

    };
    private final e b;

    private i(e e1)
    {
        b = e1;
    }


    public void a(c c1, Object obj)
    {
        if (obj == null)
        {
            c1.f();
            return;
        }
        s s1 = b.a(obj.getClass());
        if (s1 instanceof i)
        {
            c1.d();
            c1.e();
            return;
        } else
        {
            s1.a(c1, obj);
            return;
        }
    }

    public Object b(a a1)
    {
        b b1 = a1.f();
        class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[com.millennialmedia.a.a.d.b.values().length];
                try
                {
                    a[b.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[b.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[b.f.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[b.g.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[b.h.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[b.i.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        switch (com.millennialmedia.a.a.b.a._cls2.a[b1.ordinal()])
        {
        default:
            throw new IllegalStateException();

        case 1: // '\001'
            ArrayList arraylist = new ArrayList();
            a1.a();
            for (; a1.e(); arraylist.add(b(a1))) { }
            a1.b();
            return arraylist;

        case 2: // '\002'
            j j1 = new j();
            a1.c();
            for (; a1.e(); j1.put(a1.g(), b(a1))) { }
            a1.d();
            return j1;

        case 3: // '\003'
            return a1.h();

        case 4: // '\004'
            return Double.valueOf(a1.k());

        case 5: // '\005'
            return Boolean.valueOf(a1.i());

        case 6: // '\006'
            a1.j();
            return null;
        }
    }

}
