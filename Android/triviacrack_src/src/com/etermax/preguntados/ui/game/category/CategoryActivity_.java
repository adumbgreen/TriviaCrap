// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.achievements.ui.m;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.social.g;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.sharing.o;
import com.etermax.preguntados.ui.newgame.f;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            CategoryActivity

public final class CategoryActivity_ extends CategoryActivity
    implements a
{

    private final c q = new c();

    public CategoryActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        k();
        i = m.a(this);
        h = d.c(this);
        l = g.a(this);
        m = j.a(this);
        n = e.a(this);
        g = e.a(this);
        f = f.a(this);
        p = o.a(this);
        j = com.etermax.gamescommon.shop.d.b(this);
        o = b.a(this);
        k = com.etermax.preguntados.ui.d.j.g(this);
    }

    private void k()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("mCoins"))
            {
                b = bundle.getInt("mCoins");
            }
            if (bundle.containsKey("mSelectedCrown"))
            {
                e = (QuestionCategory)bundle.getSerializable("mSelectedCrown");
            }
            if (bundle.containsKey("mGameDTO"))
            {
                a = (GameDTO)bundle.getSerializable("mGameDTO");
            }
            if (bundle.containsKey("mStartsFromDashboard"))
            {
                d = bundle.getBoolean("mStartsFromDashboard");
            }
            if (bundle.containsKey("mExtraShots"))
            {
                c = bundle.getInt("mExtraShots");
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(q);
        a(bundle);
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
        k();
    }
}
