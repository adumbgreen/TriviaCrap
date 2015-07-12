// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import com.etermax.gamescommon.b.au;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            a, h, ProfileUserHeader

class a extends a
{

    final long a;
    final com.etermax.gamescommon.profile.ui.a b;

    public Object a()
    {
        return b();
    }

    protected void a(com.etermax.gamescommon.profile.ui.a a1, Exception exception)
    {
        super.a(a1, exception);
    }

    protected void a(com.etermax.gamescommon.profile.ui.a a1, Void void1)
    {
        super.a(a1, void1);
        b.g.setBlocked(false);
        b.h.d();
        au au1 = new au();
        au1.a("profile");
        b.c.a(au1);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((com.etermax.gamescommon.profile.ui.a)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.gamescommon.profile.ui.a)obj, (Void)obj1);
    }

    public Void b()
    {
        b.d.d(a);
        return null;
    }

    ileUserHeader(com.etermax.gamescommon.profile.ui.a a1, String s, long l)
    {
        b = a1;
        a = l;
        super(s);
    }
}
