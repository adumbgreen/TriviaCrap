// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.b.d;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity

class a extends a
{

    final UserDTO a;
    final DashboardActivity b;

    public Object a()
    {
        d d1 = new d();
        d1.a("mp_swipe");
        b.h.a(d1);
        b.n.e(a.getId().longValue());
        b.w.a(a.getId().longValue());
        return null;
    }

    protected void a(FragmentActivity fragmentactivity, Void void1)
    {
        super.a(fragmentactivity, void1);
        b.i.c(a.getId().longValue());
        b.b.e();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((FragmentActivity)obj, (Void)obj1);
    }

    (DashboardActivity dashboardactivity, UserDTO userdto)
    {
        b = dashboardactivity;
        a = userdto;
        super();
    }
}
