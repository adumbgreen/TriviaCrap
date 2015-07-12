// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import com.etermax.preguntados.ui.rankings.m;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity

class a extends a
{

    final DashboardActivity a;

    public Object a()
    {
        return b();
    }

    protected void a(DashboardActivity dashboardactivity, UserRankDTO userrankdto)
    {
        dashboardactivity.a(m.a(userrankdto), "Weekly Ranking", true);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((DashboardActivity)obj, (UserRankDTO)obj1);
    }

    public UserRankDTO b()
    {
        return a.e.D();
    }

    (DashboardActivity dashboardactivity)
    {
        a = dashboardactivity;
        super();
    }
}
