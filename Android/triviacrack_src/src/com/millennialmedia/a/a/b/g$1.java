// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;

// Referenced classes of package com.millennialmedia.a.a.b:
//            g

class t> extends s
{

    final boolean a;
    final boolean b;
    final e c;
    final com.millennialmedia.a.a.c.a d;
    final g e;
    private s f;

    private s a()
    {
        s s1 = f;
        if (s1 != null)
        {
            return s1;
        } else
        {
            s s2 = c.a(e, d);
            f = s2;
            return s2;
        }
    }

    public void a(c c1, Object obj)
    {
        if (b)
        {
            c1.f();
            return;
        } else
        {
            a().a(c1, obj);
            return;
        }
    }

    public Object b(a a1)
    {
        if (a)
        {
            a1.n();
            return null;
        } else
        {
            return a().b(a1);
        }
    }

    (g g1, boolean flag, boolean flag1, e e1, com.millennialmedia.a.a.c.a a1)
    {
        e = g1;
        a = flag;
        b = flag1;
        c = e1;
        d = a1;
        super();
    }
}
