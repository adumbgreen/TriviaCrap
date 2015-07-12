// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.b;
import com.millennialmedia.a.a.b.f;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.lang.reflect.Type;
import java.util.Map;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p, h

public final class g
    implements t
{

    private final f a;
    private final boolean b;

    public g(f f1, boolean flag)
    {
        a = f1;
        b = flag;
    }

    private s a(e e1, Type type)
    {
        if (type == Boolean.TYPE || type == java/lang/Boolean)
        {
            return com.millennialmedia.a.a.b.a.p.f;
        } else
        {
            return e1.a(com.millennialmedia.a.a.c.a.a(type));
        }
    }

    static boolean a(g g1)
    {
        return g1.b;
    }

    public s a(e e1, a a1)
    {
        Type type = a1.b();
        if (!java/util/Map.isAssignableFrom(a1.a()))
        {
            return null;
        } else
        {
            Type atype[] = com.millennialmedia.a.a.b.b.b(type, com.millennialmedia.a.a.b.b.e(type));
            s s = a(e1, atype[0]);
            s s1 = e1.a(com.millennialmedia.a.a.c.a.a(atype[1]));
            com.millennialmedia.a.a.b.q q = a.a(a1);
            return new h(this, e1, atype[0], s, atype[1], s1, q);
        }
    }
}
