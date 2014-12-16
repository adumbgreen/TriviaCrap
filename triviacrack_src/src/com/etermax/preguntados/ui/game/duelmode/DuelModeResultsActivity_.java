// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.shop.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.sharing.o;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            DuelModeResultsActivity, b, g

public final class DuelModeResultsActivity_ extends DuelModeResultsActivity
    implements a
{

    private final c g = new c();

    public DuelModeResultsActivity_()
    {
    }

    public static com.etermax.preguntados.ui.game.duelmode.b a(Context context)
    {
        return new com.etermax.preguntados.ui.game.duelmode.b(context);
    }

    private void a(Bundle bundle)
    {
        d();
        a = b.a(this);
        d = com.etermax.gamescommon.shop.d.b(this);
        b = e.a(this);
        c = o.a(this);
    }

    private void d()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("mTheme"))
            {
                f = (g)bundle.getSerializable("mTheme");
            }
            if (bundle.containsKey("mGameDTO"))
            {
                e = (GameDTO)bundle.getSerializable("mGameDTO");
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(g);
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
        g.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        g.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        g.a(this);
    }

    public void setIntent(Intent intent)
    {
        super.setIntent(intent);
        d();
    }
}
