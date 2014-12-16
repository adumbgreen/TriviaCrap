// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.e;

import android.content.Context;
import com.etermax.gamescommon.datasource.k;
import com.etermax.gamescommon.login.datasource.d;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.e:
//            a

public final class b extends a
{

    private static b g;
    private Context f;

    private b(Context context)
    {
        f = context;
    }

    public static b a(Context context)
    {
        if (g == null)
        {
            c c1 = c.a(null);
            g = new b(context.getApplicationContext());
            g.b();
            c.a(c1);
        }
        return g;
    }

    private void b()
    {
        e = k.a(f);
        d = d.b(f);
    }
}
