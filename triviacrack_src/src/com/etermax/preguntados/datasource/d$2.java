// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d, b

class b
    implements c
{

    final long a;
    final AnswerListDTO b;
    final d c;

    public GameDTO a()
    {
        return c.c.a(d.j(c).e(), a, b);
    }

    public Object b()
    {
        return a();
    }

    AnswerListDTO(d d1, long l, AnswerListDTO answerlistdto)
    {
        c = d1;
        a = l;
        b = answerlistdto;
        super();
    }
}
