// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import com.etermax.adsinterface.c;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            BaseQuestionActivity

class a
    implements c
{

    final BaseQuestionActivity a;
    private GameDTO b;

    private a(BaseQuestionActivity basequestionactivity)
    {
        a = basequestionactivity;
        super();
    }

    a(BaseQuestionActivity basequestionactivity, BaseQuestionActivity._cls1 _pcls1)
    {
        this(basequestionactivity);
    }

    public void a()
    {
    }

    public void a(GameDTO gamedto)
    {
        b = gamedto;
    }

    public void b()
    {
    }

    public void c()
    {
        if (b != null)
        {
            a.b(b);
            b = null;
        }
    }

    public void d()
    {
        if (b != null)
        {
            a.b(b);
            b = null;
        }
    }
}
