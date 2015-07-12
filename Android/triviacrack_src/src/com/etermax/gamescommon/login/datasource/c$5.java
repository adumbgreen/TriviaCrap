// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource;

import com.etermax.gamescommon.login.datasource.a.a;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.login.datasource:
//            c, a

class d
    implements c
{

    final UserInfo a;
    final String b;
    final String c;
    final String d;
    final com.etermax.gamescommon.login.datasource.c e;

    public Void a()
    {
        e.c.a(Long.valueOf(e.d.e()), a);
        if (!e.d.g().equals(b))
        {
            e.d.(b);
        }
        if (c != null && !c.equals(e.d.f()))
        {
            e.d.b(c);
        }
        if (d != null && d.length() > 0)
        {
            e.d.(true);
        }
        e.a();
        return null;
    }

    public Object b()
    {
        return a();
    }

    UserInfo(com.etermax.gamescommon.login.datasource.c c1, UserInfo userinfo, String s, String s1, String s2)
    {
        e = c1;
        a = userinfo;
        b = s;
        c = s1;
        d = s2;
        super();
    }
}
