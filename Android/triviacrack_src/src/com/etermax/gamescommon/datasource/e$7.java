// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            e

class a
    implements c
{

    final e a;

    public GiftsDTO a()
    {
        return a.c.b(Long.valueOf(e.o(a).e()));
    }

    public Object b()
    {
        return a();
    }

    tsDTO(e e1)
    {
        a = e1;
        super();
    }
}
