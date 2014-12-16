// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import com.etermax.a.b;
import com.etermax.gamescommon.b.av;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.o;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a, b

class a extends a
{

    final com.etermax.gamescommon.i.b.a a;

    public Object a()
    {
        a.c.a("Facebook", a.getActivity());
        return null;
    }

    protected void a(com.etermax.gamescommon.i.b.a a1, Void void1)
    {
        super.a(a1, void1);
        b.a(a1.getActivity(), o.facebook_unlink_success);
        ((com.etermax.gamescommon.i.b.b)com.etermax.gamescommon.i.b.a.n(a)).k_();
        com.etermax.gamescommon.i.b.a.o(a);
        av av1 = new av();
        com.etermax.gamescommon.i.b.a.a(a, av1);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.gamescommon.i.b.a)obj, (Void)obj1);
    }

    asource.c(com.etermax.gamescommon.i.b.a a1, String s)
    {
        a = a1;
        super(s);
    }
}
