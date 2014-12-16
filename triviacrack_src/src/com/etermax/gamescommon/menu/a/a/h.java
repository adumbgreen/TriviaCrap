// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.menu.a.b.l;
import com.etermax.gamescommon.menu.a.b.m;
import com.etermax.gamescommon.menu.a.o;

// Referenced classes of package com.etermax.gamescommon.menu.a.a:
//            a, g

public class h extends a
{

    private UserDTO c;
    private b d;

    public h(o o, UserDTO userdto)
    {
        super(com.etermax.gamescommon.menu.a.a.g.b, o);
        c = userdto;
        d = new b();
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        l l1;
        if (view == null)
        {
            l1 = m.a(context);
        } else
        {
            l1 = (l)view;
        }
        l1.a(c);
        d.a(l1.getUserIcon(), c);
        return l1;
    }

    public UserDTO c()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        h h1;
        if (!super.equals(obj))
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        h1 = (h)obj;
        if (c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (h1.c == null) goto _L1; else goto _L3
_L3:
        return false;
        if (c.getId().equals(h1.c.getId())) goto _L1; else goto _L4
_L4:
        return false;
    }
}
