// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import android.content.Context;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.gamescommon.promotion.PromotionsManager_;
import com.etermax.tools.a.a.i;
import com.etermax.tools.a.a.k;
import com.etermax.tools.j.c;
import com.etermax.tools.social.a.j;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d, c

public final class e extends com.etermax.preguntados.datasource.d
{

    private static e w;
    private Context v;

    private e(Context context)
    {
        v = context;
    }

    private void I()
    {
        c = new com.etermax.preguntados.datasource.c();
        s = v;
        a = d.b(v);
        u = i.a(v);
        t = c.a(v);
        b = b.a(v);
        i = com.etermax.preguntados.e.d.a(v);
        d = k.a(v);
        f = com.etermax.gamescommon.datasource.k.a(v);
        h = PromotionsManager_.getInstance_(v);
        e = com.etermax.gamescommon.resources.c.b(v);
        j = com.etermax.gamescommon.e.b.a(v);
        g = j.a(v);
        c();
    }

    public static e a(Context context)
    {
        if (w == null)
        {
            org.a.a.b.c c1 = org.a.a.b.c.a(null);
            w = new e(context.getApplicationContext());
            w.I();
            org.a.a.b.c.a(c1);
        }
        return w;
    }
}
