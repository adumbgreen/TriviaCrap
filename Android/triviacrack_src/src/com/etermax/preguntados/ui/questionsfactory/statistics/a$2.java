// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsListDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics:
//            a, b

class a extends a
{

    final com.etermax.preguntados.ui.questionsfactory.statistics.a a;

    public Object a()
    {
        return b();
    }

    public void a(com.etermax.preguntados.ui.questionsfactory.statistics.a a1, UserFactoryStatsListDTO userfactorystatslistdto)
    {
        super.a(a1, userfactorystatslistdto);
        a.a(userfactorystatslistdto);
        ((b)com.etermax.preguntados.ui.questionsfactory.statistics.a.a(a)).a(userfactorystatslistdto);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.preguntados.ui.questionsfactory.statistics.a)obj, (UserFactoryStatsListDTO)obj1);
    }

    public UserFactoryStatsListDTO b()
    {
        return a.a.p();
    }

    DTO(com.etermax.preguntados.ui.questionsfactory.statistics.a a1, String s)
    {
        a = a1;
        super(s);
    }
}
