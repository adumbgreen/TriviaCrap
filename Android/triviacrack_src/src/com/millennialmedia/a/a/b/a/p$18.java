// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.i;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.h;
import com.millennialmedia.a.a.j;
import com.millennialmedia.a.a.l;
import com.millennialmedia.a.a.m;
import com.millennialmedia.a.a.o;
import com.millennialmedia.a.a.s;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class n extends s
{

    public j a(a a1)
    {
        m m1;
        switch (com.millennialmedia.a.a.b.a.a[a1.f().ordinal()])
        {
        default:
            throw new IllegalArgumentException();

        case 3: // '\003'
            return new o(a1.h());

        case 1: // '\001'
            return new o(new i(a1.h()));

        case 2: // '\002'
            return new o(Boolean.valueOf(a1.i()));

        case 4: // '\004'
            a1.j();
            return l.a;

        case 5: // '\005'
            h h1 = new h();
            a1.a();
            for (; a1.e(); h1.a(a(a1))) { }
            a1.b();
            return h1;

        case 6: // '\006'
            m1 = new m();
            a1.c();
            break;
        }
        for (; a1.e(); m1.a(a1.g(), a(a1))) { }
        a1.d();
        return m1;
    }

    public void a(c c1, j j1)
    {
        if (j1 == null || j1.j())
        {
            c1.f();
            return;
        }
        if (j1.i())
        {
            o o1 = j1.m();
            if (o1.p())
            {
                c1.a(o1.a());
                return;
            }
            if (o1.o())
            {
                c1.a(o1.f());
                return;
            } else
            {
                c1.b(o1.b());
                return;
            }
        }
        if (j1.g())
        {
            c1.b();
            for (Iterator iterator1 = j1.l().iterator(); iterator1.hasNext(); a(c1, (j)iterator1.next())) { }
            c1.c();
            return;
        }
        if (j1.h())
        {
            c1.d();
            java.util.ntry ntry;
            for (Iterator iterator = j1.k().o().iterator(); iterator.hasNext(); a(c1, (j)ntry.getValue()))
            {
                ntry = (java.util.ntry)iterator.next();
                c1.a((String)ntry.getKey());
            }

            c1.e();
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Couldn't write ").append(j1.getClass()).toString());
        }
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (j)obj);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    n()
    {
    }
}
