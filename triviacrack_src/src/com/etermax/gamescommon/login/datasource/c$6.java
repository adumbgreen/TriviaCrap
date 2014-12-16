// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource;

import com.etermax.gamescommon.login.datasource.a.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import com.etermax.tools.a.a.c;
import org.b.c.l;

// Referenced classes of package com.etermax.gamescommon.login.datasource:
//            c, a

class a
    implements c
{

    final UserInfo a;
    final com.etermax.gamescommon.login.datasource.c b;

    public Void a()
    {
        l l1 = b.c.b(Long.valueOf(b.d.e()), a);
        b.f();
        com.etermax.gamescommon.login.datasource.c.a(b, l1.a(), (UserDTO)l1.b(), null);
        return null;
    }

    public Object b()
    {
        return a();
    }

    UserInfo(com.etermax.gamescommon.login.datasource.c c1, UserInfo userinfo)
    {
        b = c1;
        a = userinfo;
        super();
    }
}
