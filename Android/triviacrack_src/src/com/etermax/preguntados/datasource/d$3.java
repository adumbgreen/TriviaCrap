// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d, b

class a
    implements c
{

    final long a;
    final d b;

    public GameDTO a()
    {
        return b.c.b(d.k(b).e(), a);
    }

    public Object b()
    {
        return a();
    }

    GameDTO(d d1, long l)
    {
        b = d1;
        a = l;
        super();
    }
}
