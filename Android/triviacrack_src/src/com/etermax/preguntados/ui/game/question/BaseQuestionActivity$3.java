// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import com.etermax.adsinterface.d;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            BaseQuestionActivity

class a
    implements d
{

    final GameDTO a;
    final BaseQuestionActivity b;

    public void a()
    {
        b.b(a);
    }

    (BaseQuestionActivity basequestionactivity, GameDTO gamedto)
    {
        b = basequestionactivity;
        a = gamedto;
        super();
    }
}
