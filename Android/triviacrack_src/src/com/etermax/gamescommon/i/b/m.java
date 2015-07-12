// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.widget.ToggleButton;
import com.etermax.gamescommon.datasource.dto.PreferencesDTO;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            g

class m extends a
{

    final g a;
    private ToggleButton b;

    public m(g g1, ToggleButton togglebutton)
    {
        a = g1;
        super();
        b = togglebutton;
        if (g1.a.j() != null)
        {
            g1.a.b(g.k(g1).isChecked());
            g1.a.c(g.l(g1).isChecked());
        }
    }

    public Object a()
    {
        return b();
    }

    protected void a(g g1, Exception exception)
    {
        ToggleButton togglebutton = b;
        boolean flag;
        if (!b.isChecked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        togglebutton.setChecked(flag);
        super.a(g1, exception);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((g)obj, exception);
    }

    public Void b()
    {
        PreferencesDTO preferencesdto = new PreferencesDTO();
        preferencesdto.setFavoritesOnly(g.m(a).isChecked());
        preferencesdto.setMailNews(g.n(a).isChecked());
        if (a.a.j() != null)
        {
            preferencesdto.setFBShowName(g.k(a).isChecked());
            preferencesdto.setFBShowPicture(g.l(a).isChecked());
            preferencesdto.setAllowOGPosts(g.o(a).isChecked());
        }
        a.c.a(preferencesdto);
        return null;
    }
}
