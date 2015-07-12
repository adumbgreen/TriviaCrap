// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d, b

class c
    implements c
{

    final long a;
    final int b;
    final AnswerDTO c;
    final d d;

    public Void a()
    {
        d.c.a(a, b, c);
        return null;
    }

    public Object b()
    {
        return a();
    }

    nswerDTO(d d1, long l, int i, AnswerDTO answerdto)
    {
        d = d1;
        a = l;
        b = i;
        c = answerdto;
        super();
    }
}
