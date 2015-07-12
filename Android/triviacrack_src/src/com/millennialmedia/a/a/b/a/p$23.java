// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class c
    implements t
{

    final Class a;
    final Class b;
    final s c;

    public s a(e e, a a1)
    {
        Class class1 = a1.a();
        if (class1 == a || class1 == b)
        {
            return c;
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("Factory[type=").append(a.getName()).append("+").append(b.getName()).append(",adapter=").append(c).append("]").toString();
    }

    (Class class1, Class class2, s s)
    {
        a = class1;
        b = class2;
        c = s;
        super();
    }
}
