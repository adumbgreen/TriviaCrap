// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.content.Context;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.tools.b.c;
import com.etermax.tools.social.a.j;

// Referenced classes of package com.etermax.gamescommon.social:
//            a

public final class g extends a
{

    private Context h;

    private g(Context context)
    {
        h = context;
        e();
    }

    public static g a(Context context)
    {
        return new g(context);
    }

    private void e()
    {
        b = j.a(h);
        c = d.b(h);
        d = b.a(h);
        f = com.etermax.tools.f.d.c(h);
        a = c.a(h);
        e = com.etermax.gamescommon.h.a(h);
    }
}
