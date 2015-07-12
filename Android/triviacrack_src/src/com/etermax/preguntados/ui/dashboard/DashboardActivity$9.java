// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.support.v4.app.FragmentManager;
import com.etermax.gamescommon.gifting.f;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity, e

class a
    implements f
{

    final DashboardActivity a;

    public void a(boolean flag)
    {
        if (flag)
        {
            e e1 = (e)a.getSupportFragmentManager().findFragmentByTag("main_tag");
            if (e1 != null)
            {
                e1.l();
            }
        }
    }

    (DashboardActivity dashboardactivity)
    {
        a = dashboardactivity;
        super();
    }
}
