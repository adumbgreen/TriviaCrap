// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import com.etermax.gamescommon.gifting.e;
import com.etermax.gamescommon.menu.a;
import com.etermax.preguntados.datasource.d;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity

class a
    implements e
{

    final DashboardActivity a;

    public void a(boolean flag)
    {
        a.e.z();
        if (flag)
        {
            a.e.h();
            a.o();
            return;
        } else
        {
            a.b.c();
            return;
        }
    }

    (DashboardActivity dashboardactivity)
    {
        a = dashboardactivity;
        super();
    }
}
