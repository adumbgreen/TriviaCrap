// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.datasource.dto.ChatHeaderDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.menu.a.b.a;
import com.etermax.gamescommon.menu.a.o;

// Referenced classes of package com.etermax.gamescommon.menu.a.a:
//            a, g

public class b extends com.etermax.gamescommon.menu.a.a.a
{

    protected ChatHeaderDTO c;
    protected com.etermax.gamescommon.dashboard.b d;

    public b(o o, ChatHeaderDTO chatheaderdto)
    {
        super(com.etermax.gamescommon.menu.a.a.g.a, o);
        c = chatheaderdto;
        d = new com.etermax.gamescommon.dashboard.b();
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        a a1;
        if (view == null)
        {
            a1 = com.etermax.gamescommon.menu.a.b.b.a(context);
        } else
        {
            a1 = (a)view;
        }
        a1.a(c);
        d.a(a1.getUserIcon(), c.getUser());
        return a1;
    }

    public ChatHeaderDTO c()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        b b1;
        if (!super.equals(obj))
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        b1 = (b)obj;
        if (c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (b1.c == null) goto _L1; else goto _L3
_L3:
        return false;
        if (c.getUser().getId().equals(b1.c.getUser().getId())) goto _L1; else goto _L4
_L4:
        return false;
    }
}
