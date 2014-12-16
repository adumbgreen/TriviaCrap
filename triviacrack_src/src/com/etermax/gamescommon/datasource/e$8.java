// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.gifting.dto.GiftActionDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            e

class a
    implements c
{

    final GiftActionDTO a;
    final e b;

    public Void a()
    {
        b.c.a(Long.valueOf(e.p(b).e()), a);
        return null;
    }

    public Object b()
    {
        return a();
    }

    tActionDTO(e e1, GiftActionDTO giftactiondto)
    {
        b = e1;
        a = giftactiondto;
        super();
    }
}
