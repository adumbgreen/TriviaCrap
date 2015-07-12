// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            e

class a
    implements c
{

    final Long a;
    final e b;

    public Void a()
    {
        UserDTO userdto = new UserDTO(a);
        b.c.c(e.w(b).e(), userdto);
        return null;
    }

    public Object b()
    {
        return a();
    }

    .a(e e1, Long long1)
    {
        b = e1;
        a = long1;
        super();
    }
}
