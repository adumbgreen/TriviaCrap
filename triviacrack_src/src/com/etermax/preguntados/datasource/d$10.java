// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.preguntados.datasource.dto.CodeDTO;
import com.etermax.preguntados.datasource.dto.CouponDTO;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d, b

class a
    implements c
{

    final CodeDTO a;
    final d b;

    public CouponDTO a()
    {
        return b.c.a(d.r(b).e(), a);
    }

    public Object b()
    {
        return a();
    }

    odeDTO(d d1, CodeDTO codedto)
    {
        b = d1;
        a = codedto;
        super();
    }
}
