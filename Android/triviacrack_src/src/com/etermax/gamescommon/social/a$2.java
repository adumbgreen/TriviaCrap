// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import com.etermax.gamescommon.b.q;
import com.etermax.tools.f.a;
import com.etermax.tools.social.a.g;

// Referenced classes of package com.etermax.gamescommon.social:
//            a, d

class b
    implements g
{

    final String a;
    final d b;
    final com.etermax.gamescommon.social.a c;

    public void a()
    {
        q q1 = new q(false, a);
        c.f.a(q1);
        b.a();
    }

    public void a(String s)
    {
        q q1 = new q(true, a);
        c.f.a(q1);
        b.a();
    }

    public void b()
    {
        q q1 = new q(true, a);
        c.f.a(q1);
        b.a();
    }

    (com.etermax.gamescommon.social.a a1, String s, d d1)
    {
        c = a1;
        a = s;
        b = d1;
        super();
    }
}
