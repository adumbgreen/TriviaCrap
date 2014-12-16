// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            k

final class o extends s
{

    private final e a;
    private final s b;
    private final Type c;

    o(e e1, s s1, Type type)
    {
        a = e1;
        b = s1;
        c = type;
    }

    private Type a(Type type, Object obj)
    {
        if (obj != null && (type == java/lang/Object || (type instanceof TypeVariable) || (type instanceof Class)))
        {
            type = obj.getClass();
        }
        return type;
    }

    public void a(c c1, Object obj)
    {
        s s1;
        s1 = b;
        Type type = a(c, obj);
        if (type != c)
        {
            s1 = a.a(com.millennialmedia.a.a.c.a.a(type));
            break MISSING_BLOCK_LABEL_38;
        }
_L1:
        s1.a(c1, obj);
        return;
        if ((s1 instanceof k) && !(b instanceof k))
        {
            s1 = b;
        }
          goto _L1
    }

    public Object b(com.millennialmedia.a.a.d.a a1)
    {
        return b.b(a1);
    }
}
