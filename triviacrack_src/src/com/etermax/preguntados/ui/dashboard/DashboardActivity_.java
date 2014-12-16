// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.chat.a.e;
import com.etermax.gamescommon.achievements.ui.m;
import com.etermax.gamescommon.c.b;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.datasource.k;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.mediation.MediationManager_;
import com.etermax.gamescommon.menu.a.j;
import com.etermax.gamescommon.promotion.PromotionsManager_;
import com.etermax.preguntados.e.d;
import com.etermax.preguntados.sharing.o;
import com.etermax.preguntados.ui.newgame.f;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity

public final class DashboardActivity_ extends DashboardActivity
    implements a
{

    private final c z = new c();

    public DashboardActivity_()
    {
    }

    private void d(Bundle bundle)
    {
        k = h.a(this);
        j = b.b(this);
        r = com.etermax.preguntados.e.d.a(this);
        i = j.a(this);
        d = com.etermax.tools.social.a.j.a(this);
        n = i.a(this);
        c = com.etermax.gamescommon.login.datasource.b.a(this);
        v = com.etermax.preguntados.ui.d.j.g(this);
        g = com.etermax.preguntados.ui.game.a.b.a(this);
        t = f.a(this);
        w = com.etermax.chat.a.e.a(this);
        l = m.a(this);
        p = PromotionsManager_.getInstance_(this);
        h = com.etermax.tools.f.d.c(this);
        s = MediationManager_.getInstance_(this);
        x = com.etermax.gamescommon.datasource.m.a(this);
        b = com.etermax.gamescommon.menu.d.a(this);
        o = k.a(this);
        f = com.etermax.gamescommon.shop.d.b(this);
        m = com.etermax.preguntados.f.c.a(this);
        u = o.a(this);
        e = com.etermax.preguntados.datasource.e.a(this);
        q = com.etermax.gamescommon.social.j.a(this);
        e(bundle);
    }

    private void e(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            a = bundle.getBoolean("mIsShowingDialog");
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(z);
        d(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public boolean onKeyDown(int l, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && l == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(l, keyevent);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("mIsShowingDialog", a);
    }

    public void setContentView(int l)
    {
        super.setContentView(l);
        z.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        z.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        z.a(this);
    }
}
