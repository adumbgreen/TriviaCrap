// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import com.etermax.preguntados.datasource.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.RankingsDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            e

class a extends a
{

    final e a;

    public Object a()
    {
        return b();
    }

    protected void a(e e1, RankingsDTO rankingsdto)
    {
        super.a(e1, rankingsdto);
        com.etermax.preguntados.ui.rankings.e.a(a, rankingsdto);
    }

    protected void a(e e1, Exception exception)
    {
        if ((exception instanceof b) && ((b)exception).c() == 2014)
        {
            b(false);
            com.etermax.preguntados.ui.rankings.e.a(a);
        }
        super.a(e1, exception);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((e)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((e)obj, (RankingsDTO)obj1);
    }

    public RankingsDTO b()
    {
        return a.a.C();
    }

    ankingsDTO(e e1, String s)
    {
        a = e1;
        super(s);
    }
}
