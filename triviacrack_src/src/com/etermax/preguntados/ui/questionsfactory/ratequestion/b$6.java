// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.ui.questionsfactory.e;
import com.etermax.preguntados.ui.questionsfactory.widget.a.c;
import com.etermax.preguntados.ui.questionsfactory.widget.a.g;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            b

class a
    implements c
{

    final b a;

    public void a(g g1)
    {
        a.i = g1.b();
        a.j = Country.GX;
        e.a(com.etermax.preguntados.ui.questionsfactory.ratequestion.b.e(a)).b(a.i);
        e.a(b.f(a)).a(a.j);
        b.b(a);
        b.d(a);
    }

    public volatile void a(Object obj)
    {
        a((g)obj);
    }

    (b b1)
    {
        a = b1;
        super();
    }
}
