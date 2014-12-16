// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.menu.a.b.d;
import com.etermax.gamescommon.menu.a.o;

// Referenced classes of package com.etermax.gamescommon.menu.a.a:
//            a, g

public class c extends a
{

    public c(o o)
    {
        super(com.etermax.gamescommon.menu.a.a.g.d, o);
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        if (view == null)
        {
            return d.a(context);
        } else
        {
            return (com.etermax.gamescommon.menu.a.b.c)view;
        }
    }
}
