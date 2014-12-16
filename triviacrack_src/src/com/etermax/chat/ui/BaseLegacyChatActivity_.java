// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.datasource.d;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.menu.a.j;
import com.etermax.gamescommon.notification.e;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.chat.ui:
//            BaseLegacyChatActivity

public final class BaseLegacyChatActivity_ extends BaseLegacyChatActivity
    implements a
{

    private final c u = new c();

    public BaseLegacyChatActivity_()
    {
    }

    private void b(Bundle bundle)
    {
        n = j.a(this);
        o = i.a(this);
        i = d.a(this);
        k = com.etermax.gamescommon.menu.d.a(this);
        m = com.etermax.tools.f.d.c(this);
        j = e.a(this);
        h = com.etermax.chat.a.e.a(this);
        l = com.etermax.gamescommon.login.datasource.b.a(this);
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(u);
        b(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public boolean onKeyDown(int k, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && k == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(k, keyevent);
    }

    public void setContentView(int k)
    {
        super.setContentView(k);
        u.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        u.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        u.a(this);
    }
}
