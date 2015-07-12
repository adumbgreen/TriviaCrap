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

class j extends a
{

    final g a;

    private j(g g1)
    {
        a = g1;
        super();
    }

    j(g g1, g._cls1 _pcls1)
    {
        this(g1);
    }

    public Object a()
    {
        return b();
    }

    protected void a(g g1, PreferencesDTO preferencesdto)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        if (preferencesdto.isFavoritesOnly() != null)
        {
            flag1 = preferencesdto.isFavoritesOnly().booleanValue();
        } else
        {
            flag1 = false;
        }
        if (preferencesdto.isMailNews() != null)
        {
            flag2 = preferencesdto.isMailNews().booleanValue();
        } else
        {
            flag2 = flag;
        }
        if (preferencesdto.isFBShowName() != null)
        {
            flag3 = preferencesdto.isFBShowName().booleanValue();
        } else
        {
            flag3 = flag;
        }
        if (preferencesdto.isFBShowPicture() != null)
        {
            flag4 = preferencesdto.isFBShowPicture().booleanValue();
        } else
        {
            flag4 = flag;
        }
        if (preferencesdto.allowOGPosts() != null)
        {
            flag = preferencesdto.allowOGPosts().booleanValue();
        }
        g.m(a).setChecked(flag1);
        g.n(a).setChecked(flag2);
        g.k(a).setChecked(flag3);
        g.l(a).setChecked(flag4);
        g.o(a).setChecked(flag);
        super.a(g1, preferencesdto);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((g)obj, (PreferencesDTO)obj1);
    }

    public PreferencesDTO b()
    {
        return a.c.h();
    }
}
