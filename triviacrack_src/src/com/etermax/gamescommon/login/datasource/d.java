// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource;

import android.content.Context;
import com.etermax.gamescommon.datasource.m;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.login.datasource.a.b;
import com.etermax.gamescommon.login.datasource.a.f;
import com.etermax.tools.a.a.i;
import com.etermax.tools.a.a.k;
import com.etermax.tools.social.a.j;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.login.datasource:
//            c, b

public final class d extends com.etermax.gamescommon.login.datasource.c
{

    private static d k;
    private Context j;

    private d(Context context)
    {
        j = context;
    }

    public static d b(Context context)
    {
        if (k == null)
        {
            c c1 = c.a(null);
            k = new d(context.getApplicationContext());
            k.h();
            c.a(c1);
        }
        return k;
    }

    private void h()
    {
        a = new com.etermax.gamescommon.login.datasource.a.d();
        b = new f();
        c = new b();
        s = j;
        t = com.etermax.tools.j.c.a(j);
        u = i.a(j);
        g = com.etermax.gamescommon.h.a(j);
        h = m.a(j);
        d = com.etermax.gamescommon.login.datasource.b.a(j);
        e = com.etermax.tools.social.a.j.a(j);
        f = com.etermax.tools.a.a.k.a(j);
        c();
    }
}
