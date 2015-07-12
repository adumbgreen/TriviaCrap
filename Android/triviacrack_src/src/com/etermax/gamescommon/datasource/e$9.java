// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.gifting.dto.GiftActionDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            e

class b
    implements c
{

    final long a;
    final GiftActionDTO b;
    final e c;

    public Void a()
    {
        c.c.a(Long.valueOf(e.q(c).e()), a, b);
        return null;
    }

    public Object b()
    {
        return a();
    }

    tActionDTO(e e1, long l, GiftActionDTO giftactiondto)
    {
        c = e1;
        a = l;
        b = giftactiondto;
        super();
    }
}
