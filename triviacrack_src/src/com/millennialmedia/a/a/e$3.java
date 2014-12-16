// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;

// Referenced classes of package com.millennialmedia.a.a:
//            s, e

class nit> extends s
{

    final e a;

    public Double a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        } else
        {
            return Double.valueOf(a1.k());
        }
    }

    public void a(c c1, Number number)
    {
        if (number == null)
        {
            c1.f();
            return;
        } else
        {
            double d = number.doubleValue();
            com.millennialmedia.a.a.e.a(a, d);
            c1.a(number);
            return;
        }
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Number)obj);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    (e e1)
    {
        a = e1;
        super();
    }
}
