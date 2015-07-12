// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.datasource.m;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.social.g;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.sharing.o;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileActivity

public final class ProfileActivity_ extends ProfileActivity
    implements a
{

    private final c k = new c();

    public ProfileActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        c();
        d = g.a(this);
        j = m.a(this);
        e = d.c(this);
        f = e.a(this);
        i = j.a(this);
        h = o.a(this);
        g = b.a(this);
    }

    private void c()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("userId"))
            {
                a = bundle.getLong("userId");
            }
            if (bundle.containsKey("from"))
            {
                b = bundle.getString("from");
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(k);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
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
