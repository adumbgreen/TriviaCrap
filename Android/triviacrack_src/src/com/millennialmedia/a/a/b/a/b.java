// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.f;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.util.Collection;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            c

public final class b
    implements t
{

    private final f a;

    public b(f f1)
    {
        a = f1;
    }

    public s a(e e1, a a1)
    {
        java.lang.reflect.Type type = a1.b();
        Class class1 = a1.a();
        if (!java/util/Collection.isAssignableFrom(class1))
        {
            return null;
        } else
        {
            java.lang.reflect.Type type1 = com.millennialmedia.a.a.b.b.a(type, class1);
            return new c(e1, type1, e1.a(com.millennialmedia.a.a.c.a.a(type1)), a.a(a1));
        }
    }
}
