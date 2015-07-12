// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.widget.BaseAdapter;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.j;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            NewGameActivity

class c extends a
{

    final long a;
    final j b;
    final BaseAdapter c;
    final NewGameActivity d;

    public Object a()
    {
        return b();
    }

    protected void a(NewGameActivity newgameactivity, Exception exception)
    {
        super.a(newgameactivity, exception);
        b.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.Status.NOT_INVITED);
        c.notifyDataSetChanged();
    }

    protected void a(NewGameActivity newgameactivity, Void void1)
    {
        super.a(newgameactivity, void1);
        b.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.Status.INVITED);
        c.notifyDataSetChanged();
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((NewGameActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((NewGameActivity)obj, (Void)obj1);
    }

    public Void b()
    {
        d.j.a(Long.valueOf(a));
        return null;
    }

    InvitationStatus(NewGameActivity newgameactivity, long l, j j1, BaseAdapter baseadapter)
    {
        d = newgameactivity;
        a = l;
        b = j1;
        c = baseadapter;
        super();
    }
}
