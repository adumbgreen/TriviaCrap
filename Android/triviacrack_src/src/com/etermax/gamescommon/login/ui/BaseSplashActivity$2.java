// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.login.datasource.a;
import java.util.TimerTask;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            BaseSplashActivity

class a extends TimerTask
{

    final BaseSplashActivity a;

    public void run()
    {
        if (a.b.q())
        {
            com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a, new ad("autologin"));
            a.finish();
            a.a();
            ad ad1 = new ad();
            ad1.b("user_auto");
            com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a, ad1);
            return;
        } else
        {
            a.c();
            return;
        }
    }

    (BaseSplashActivity basesplashactivity)
    {
        a = basesplashactivity;
        super();
    }
}
