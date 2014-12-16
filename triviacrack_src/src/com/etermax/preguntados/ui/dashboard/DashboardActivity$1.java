// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity

class a extends a
{

    final GameRequestDTO a;
    final DashboardActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(DashboardActivity dashboardactivity, GameDTO gamedto)
    {
        super.a(dashboardactivity, gamedto);
        b.j.b();
        dashboardactivity.startActivity(CategoryActivity.a(dashboardactivity, gamedto, com.etermax.preguntados.ui.dashboard.DashboardActivity.a(b), DashboardActivity.b(b), false));
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((DashboardActivity)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return b.e.a(a);
    }

    (DashboardActivity dashboardactivity, String s, GameRequestDTO gamerequestdto)
    {
        b = dashboardactivity;
        a = gamerequestdto;
        super(s);
    }
}
