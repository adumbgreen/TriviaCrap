// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.menu.a.b.j;
import com.etermax.gamescommon.menu.a.b.k;
import com.etermax.gamescommon.menu.a.o;

// Referenced classes of package com.etermax.gamescommon.menu.a.a:
//            a, g

public class f extends a
{

    public f(o o)
    {
        super(g.c, o);
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        j j1;
        if (view == null)
        {
            j1 = k.a(context);
        } else
        {
            j1 = (j)view;
        }
        j1.a(b());
        return j1;
    }
}
