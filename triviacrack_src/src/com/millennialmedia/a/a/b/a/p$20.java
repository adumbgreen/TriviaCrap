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

final class b
    implements t
{

    final Class a;
    final s b;

    public s a(e e, a a1)
    {
        if (a1.a() == a)
        {
            return b;
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("Factory[type=").append(a.getName()).append(",adapter=").append(b).append("]").toString();
    }

    (Class class1, s s)
    {
        a = class1;
        b = s;
        super();
    }
}
