// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.f;

import android.content.Context;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.tools.social.a.j;

// Referenced classes of package com.etermax.preguntados.f:
//            a

public final class c extends a
{

    private Context j;

    private c(Context context)
    {
        j = context;
        f();
    }

    public static c a(Context context)
    {
        return new c(context);
    }

    private void f()
    {
        i = j;
        d = b.a(j);
        c = d.b(j);
        e = h.a(j);
        h = com.etermax.tools.f.d.c(j);
        a = com.etermax.tools.b.c.a(j);
        b = com.etermax.tools.social.a.j.a(j);
        h = com.etermax.tools.f.d.c(j);
    }
}
