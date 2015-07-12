// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.menu.a.j;
import com.etermax.gamescommon.menu.a.n;

// Referenced classes of package com.etermax.gamescommon.menu:
//            a

public final class d extends a
{

    private Context j;

    private d(Context context)
    {
        j = context;
        f();
    }

    public static d a(Context context)
    {
        return new d(context);
    }

    private void f()
    {
        if (j instanceof FragmentActivity)
        {
            a = (FragmentActivity)j;
        } else
        {
            Log.w("SlidingMenusHelper_", (new StringBuilder()).append("Due to Context class ").append(j.getClass().getSimpleName()).append(", the @RootContext FragmentActivity won't be populated").toString());
        }
        b = n.a(j);
        e = com.etermax.tools.f.d.c(j);
        d = com.etermax.gamescommon.menu.a.j.a(j);
        c = i.a(j);
        a();
    }
}
