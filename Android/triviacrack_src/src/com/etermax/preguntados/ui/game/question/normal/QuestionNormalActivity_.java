// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.normal;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.datasource.k;
import com.etermax.gamescommon.mediation.MediationManager_;
import com.etermax.gamescommon.shop.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.d.j;
import com.etermax.preguntados.ui.game.a.b;
import com.etermax.preguntados.ui.withoutcoins.h;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.question.normal:
//            QuestionNormalActivity

public final class QuestionNormalActivity_ extends QuestionNormalActivity
    implements a
{

    private final c q = new c();

    public QuestionNormalActivity_()
    {
    }

    private void b()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("mCoins"))
            {
                d = bundle.getInt("mCoins");
            }
            if (bundle.containsKey("mGameDTO"))
            {
                c = (GameDTO)bundle.getSerializable("mGameDTO");
            }
            if (bundle.containsKey("mExtraShots"))
            {
                e = bundle.getInt("mExtraShots");
            }
            if (bundle.containsKey("mPowerUpFree"))
            {
                f = (PowerUp)bundle.getSerializable("mPowerUpFree");
            }
        }
    }

    private void b(Bundle bundle)
    {
        b();
        g = e.a(this);
        o = h.a(this);
        m = MediationManager_.getInstance_(this);
        j = com.etermax.preguntados.ui.game.a.b.a(this);
        n = d.b(this);
        h = com.etermax.tools.f.d.c(this);
        l = com.etermax.preguntados.e.d.a(this);
        i = com.etermax.gamescommon.login.datasource.b.a(this);
        k = k.a(this);
        b = com.etermax.preguntados.c.a.c.a(this);
        a = j.g(this);
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
        b();
    }
}
