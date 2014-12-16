// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.preguntados.datasource.d;
import com.etermax.tools.i.a;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            f, g

class a extends a
{

    final f a;

    public Object a()
    {
        return a.a.f(a.b.e());
    }

    public void a(f f1, UserListDTO userlistdto)
    {
        super.a(f1, userlistdto);
        if (com.etermax.preguntados.ui.newgame.duelmode.f.a(a) == null)
        {
            com.etermax.preguntados.ui.newgame.duelmode.f.a(a, new ArrayList());
        } else
        {
            com.etermax.preguntados.ui.newgame.duelmode.f.a(a).clear();
        }
        if (userlistdto.getList() != null)
        {
            com.etermax.preguntados.ui.newgame.duelmode.f.a(a).addAll(com.etermax.preguntados.ui.newgame.duelmode.f.a(a, userlistdto.getList()));
        }
        if (f1.isResumed())
        {
            f1.a(com.etermax.preguntados.ui.newgame.duelmode.f.a(a));
        }
    }

    protected void a(f f1, Exception exception)
    {
        super.a(f1, exception);
        ((g)f.b(f1)).c();
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((f)obj, exception);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((f)obj, (UserListDTO)obj1);
    }

    rListDTO(f f1, String s)
    {
        a = f1;
        super(s);
    }
}
