// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.s;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public Boolean a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        if (a1.f() == b.f)
        {
            return Boolean.valueOf(Boolean.parseBoolean(a1.h()));
        } else
        {
            return Boolean.valueOf(a1.i());
        }
    }

    public void a(c c1, Boolean boolean1)
    {
        if (boolean1 == null)
        {
            c1.f();
            return;
        } else
        {
            c1.a(boolean1.booleanValue());
            return;
        }
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Boolean)obj);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
