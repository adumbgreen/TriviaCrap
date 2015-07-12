// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.social.g;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            LoginActivity

public final class LoginActivity_ extends LoginActivity
    implements a
{

    private final c f = new c();

    public LoginActivity_()
    {
    }

    private void b(Bundle bundle)
    {
        a = j.a(this);
        d = com.etermax.gamescommon.login.datasource.b.a(this);
        c = d.c(this);
        e = g.a(this);
        b = com.etermax.gamescommon.c.a(this);
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(f);
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
        f.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        f.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        f.a(this);
    }
}
