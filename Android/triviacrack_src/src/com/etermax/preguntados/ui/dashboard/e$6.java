// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import com.etermax.gamescommon.j.a;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.OpponentListDTO;
import com.etermax.tools.social.a.b;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            e

class a extends a
{

    final e a;

    protected void a(e e1, OpponentListDTO opponentlistdto)
    {
        super.a(e1, opponentlistdto);
        com.etermax.preguntados.ui.dashboard.e.a(a, opponentlistdto);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((e)obj, (OpponentListDTO)obj1);
    }

    protected OpponentListDTO b()
    {
        return a.c.A();
    }

    protected Object d()
    {
        return b();
    }

    ponentListDTO(e e1, b b1)
    {
        a = e1;
        super(b1);
    }
}
