// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.chat;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.datasource.m;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.menu.a.j;
import com.etermax.gamescommon.menu.d;
import com.etermax.gamescommon.notification.e;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.chat:
//            ChatActivity

public final class ChatActivity_ extends ChatActivity
    implements a
{

    private final c w = new c();

    public ChatActivity_()
    {
    }

    private void b(Bundle bundle)
    {
        k = d.a(this);
        m = com.etermax.tools.f.d.c(this);
        l = com.etermax.gamescommon.login.datasource.b.a(this);
        n = j.a(this);
        o = i.a(this);
        j = e.a(this);
        i = com.etermax.gamescommon.datasource.d.a(this);
        h = com.etermax.chat.a.e.a(this);
        u = com.etermax.preguntados.g.b.a(this);
        v = m.a(this);
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(w);
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
        w.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        w.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        w.a(this);
    }
}
