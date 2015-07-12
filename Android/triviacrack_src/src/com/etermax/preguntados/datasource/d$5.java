// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d, b

class b
    implements c
{

    final Language a;
    final Language b;
    final d c;

    public QuestionDTO a()
    {
        return c.c.a(d.m(c).e(), a, b);
    }

    public Object b()
    {
        return a();
    }

    ge(d d1, Language language, Language language1)
    {
        c = d1;
        a = language;
        b = language1;
        super();
    }
}
