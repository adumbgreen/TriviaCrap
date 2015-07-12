// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.datasource.k;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.mediation.MediationManager_;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.withoutcoins.h;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            DuelModeActivity, a, g

public final class DuelModeActivity_ extends DuelModeActivity
    implements a
{

    private final c q = new c();

    public DuelModeActivity_()
    {
    }

    public static com.etermax.preguntados.ui.game.duelmode.a a(Context context)
    {
        return new com.etermax.preguntados.ui.game.duelmode.a(context);
    }

    private void b(Bundle bundle)
    {
        f();
        h = d.c(this);
        k = k.a(this);
        n = com.etermax.gamescommon.shop.d.b(this);
        i = com.etermax.gamescommon.login.datasource.b.a(this);
        j = com.etermax.preguntados.ui.game.a.b.a(this);
        m = MediationManager_.getInstance_(this);
        l = com.etermax.preguntados.e.d.a(this);
        o = h.a(this);
        g = e.a(this);
        b = com.etermax.preguntados.c.a.c.a(this);
        b();
    }

    private void f()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("mCoins"))
            {
                d = bundle.getInt("mCoins");
            }
            if (bundle.containsKey("mExtraShots"))
            {
                e = bundle.getInt("mExtraShots");
            }
            if (bundle.containsKey("mPowerUpFree"))
            {
                f = (PowerUp)bundle.getSerializable("mPowerUpFree");
            }
            if (bundle.containsKey("mGameDTO"))
            {
                c = (GameDTO)bundle.getSerializable("mGameDTO");
            }
            if (bundle.containsKey("mTheme"))
            {
                a = (g)bundle.getSerializable("mTheme");
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(q);
        b(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && i == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(i, keyevent);
    }

    public void setContentView(int i)
    {
        super.setContentView(i);
        q.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        q.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        q.a(this);
    }

    public void setIntent(Intent intent)
    {
        super.setIntent(intent);
        f();
    }
}
