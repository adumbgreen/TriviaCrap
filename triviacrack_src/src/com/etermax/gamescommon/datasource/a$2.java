// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.datasource.dto.MessageDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            a

class b
    implements c
{

    final String a;
    final long b;
    final com.etermax.gamescommon.datasource.a c;

    public Void a()
    {
        MessageDTO messagedto = new MessageDTO();
        messagedto.setMessage(a);
        c.c.a(Long.valueOf(com.etermax.gamescommon.datasource.a.b(c).e()), Long.valueOf(b), messagedto);
        return null;
    }

    public Object b()
    {
        return a();
    }

    e.a(com.etermax.gamescommon.datasource.a a1, String s, long l)
    {
        c = a1;
        a = s;
        b = l;
        super();
    }
}
