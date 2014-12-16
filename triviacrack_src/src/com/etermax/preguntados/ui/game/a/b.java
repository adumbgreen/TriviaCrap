// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.a;

import android.content.Context;
import com.etermax.gamescommon.datasource.k;
import com.etermax.gamescommon.h;
import com.etermax.preguntados.c.a.c;
import com.etermax.preguntados.datasource.e;

// Referenced classes of package com.etermax.preguntados.ui.game.a:
//            a

public final class b extends a
{

    private static b h;
    private Context g;

    private b(Context context)
    {
        g = context;
    }

    private void C()
    {
        b = k.a(g);
        d = com.etermax.gamescommon.h.a(g);
        c = com.etermax.gamescommon.login.datasource.b.a(g);
        a = e.a(g);
        e = c.a(g);
    }

    public static b a(Context context)
    {
        if (h == null)
        {
            org.a.a.b.c c1 = org.a.a.b.c.a(null);
            h = new b(context.getApplicationContext());
            h.C();
            org.a.a.b.c.a(c1);
        }
        return h;
    }
}
