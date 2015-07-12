// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            BaseQuestionActivity, k, c

class b extends a
{

    final long a;
    final Exception b;
    final BaseQuestionActivity c;

    public Object a()
    {
        return b();
    }

    protected void a(BaseQuestionActivity basequestionactivity, GameDTO gamedto)
    {
        super.a(basequestionactivity, gamedto);
        if (gamedto == null || gamedto.getStatusVersion() == c.c.getStatusVersion())
        {
            break MISSING_BLOCK_LABEL_105;
        }
        c.j.t();
        c.j.s();
        com.etermax.a.a.a("BaseQuestionActivity", "Estado corrupto, borrando...");
        if (!(com.etermax.preguntados.ui.game.question.BaseQuestionActivity.d(c) instanceof k)) goto _L2; else goto _L1
_L1:
        ((k)BaseQuestionActivity.e(c)).a(gamedto);
_L4:
        return;
_L2:
        if (!(BaseQuestionActivity.f(c) instanceof c)) goto _L4; else goto _L3
_L3:
        c.a(gamedto);
        return;
        a(basequestionactivity, b);
        return;
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((BaseQuestionActivity)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return c.g.d(a);
    }

    (BaseQuestionActivity basequestionactivity, String s, long l, Exception exception)
    {
        c = basequestionactivity;
        a = l;
        b = exception;
        super(s);
    }
}
