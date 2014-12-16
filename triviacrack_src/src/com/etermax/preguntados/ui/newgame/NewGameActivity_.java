// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.h;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.g.b;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            NewGameActivity

public final class NewGameActivity_ extends NewGameActivity
    implements a
{

    private final c k = new c();

    public NewGameActivity_()
    {
    }

    private void b(Bundle bundle)
    {
        c();
        f = com.etermax.preguntados.g.b.a(this);
        e = d.c(this);
        i = h.a(this);
        h = com.etermax.gamescommon.login.datasource.b.a(this);
        g = com.etermax.gamescommon.c.b.b(this);
        d = j.a(this);
        j = i.a(this);
        c = e.a(this);
    }

    private void c()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("mCoins"))
            {
                a = bundle.getInt("mCoins");
            }
            if (bundle.containsKey("mExtraShots"))
            {
                b = bundle.getInt("mExtraShots");
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(k);
        b(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public boolean onKeyDown(int l, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && l == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(l, keyevent);
    }

    public void setContentView(int l)
    {
        super.setContentView(l);
        k.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        k.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        k.a(this);
    }

    public void setIntent(Intent intent)
    {
        super.setIntent(intent);
        c();
    }
}
