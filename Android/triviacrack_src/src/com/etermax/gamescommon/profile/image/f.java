// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.content.Context;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.tools.b.c;
import com.etermax.tools.social.a.j;

// Referenced classes of package com.etermax.gamescommon.profile.image:
//            a

public final class f extends a
{

    private Context g;

    private f(Context context)
    {
        g = context;
        d();
    }

    public static f a(Context context)
    {
        return new f(context);
    }

    private void d()
    {
        a = i.a(g);
        c = c.a(g);
        b = j.a(g);
        d = com.etermax.gamescommon.login.datasource.d.b(g);
        e = b.a(g);
        f = com.etermax.tools.f.d.c(g);
    }
}
