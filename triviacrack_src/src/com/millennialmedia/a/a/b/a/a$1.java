// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.b;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.lang.reflect.GenericArrayType;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            a

final class pe
    implements t
{

    public s a(e e1, a a1)
    {
        java.lang.reflect.Type type = a1.b();
        if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class)type).isArray()))
        {
            return null;
        } else
        {
            java.lang.reflect.Type type1 = b.g(type);
            return new com.millennialmedia.a.a.b.a.a(e1, e1.a(com.millennialmedia.a.a.c.a.a(type1)), b.e(type1));
        }
    }

    pe()
    {
    }
}
