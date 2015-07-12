// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.tools.i.a;
import com.etermax.tools.j.h;
import java.util.Date;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity

class a extends a
{

    final long a;
    final DashboardActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(DashboardActivity dashboardactivity, GameDTO gamedto)
    {
        super.a(dashboardactivity, gamedto);
        Date date;
        long l;
        if (gamedto.getGameType() == null || gamedto.getGameType() == GameType.DUEL_GAME)
        {
            date = h.a(dashboardactivity);
        } else
        {
            date = gamedto.getEnded_date();
        }
        l = (date.getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
        com.etermax.preguntados.ui.dashboard.DashboardActivity.a(b, "rejected", Integer.valueOf(gamedto.getRound_number()), Long.valueOf(l));
        DashboardActivity.f(b);
        b.o();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((DashboardActivity)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return b.e.b(a);
    }

    (DashboardActivity dashboardactivity, long l)
    {
        b = dashboardactivity;
        a = l;
        super();
    }
}
