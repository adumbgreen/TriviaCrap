// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.i;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.q;
import com.millennialmedia.a.a.s;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public Number a(a a1)
    {
        b b1 = a1.f();
        switch (com.millennialmedia.a.a.b.a..a[b1.ordinal()])
        {
        case 2: // '\002'
        case 3: // '\003'
        default:
            throw new q((new StringBuilder()).append("Expecting number, got: ").append(b1).toString());

        case 4: // '\004'
            a1.j();
            return null;

        case 1: // '\001'
            return new i(a1.h());
        }
    }

    public void a(c c1, Number number)
    {
        c1.a(number);
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Number)obj);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
