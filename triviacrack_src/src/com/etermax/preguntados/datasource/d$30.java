// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.preguntados.datasource.dto.RoomDTO;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d, b

class a
    implements c
{

    final long a;
    final d b;

    public RoomDTO a()
    {
        return b.c.e(d.F(b).e(), a);
    }

    public Object b()
    {
        return a();
    }

    oomDTO(d d1, long l)
    {
        b = d1;
        a = l;
        super();
    }
}
