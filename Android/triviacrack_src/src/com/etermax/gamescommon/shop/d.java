// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop;

import android.content.Context;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.login.datasource.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.shop:
//            c

public final class d extends com.etermax.gamescommon.shop.c
{

    private static d j;
    private Context i;

    private d(Context context)
    {
        i = context;
    }

    public static d b(Context context)
    {
        if (j == null)
        {
            c c1 = c.a(null);
            j = new d(context.getApplicationContext());
            j.f();
            c.a(c1);
        }
        return j;
    }

    private void f()
    {
        c = i;
        f = com.etermax.gamescommon.datasource.i.a(i);
        d = com.etermax.tools.f.d.c(i);
        e = com.etermax.gamescommon.login.datasource.b.a(i);
        g = com.etermax.tools.j.c.a(i);
        d();
    }
}
