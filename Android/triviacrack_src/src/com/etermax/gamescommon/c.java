// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import android.content.Context;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.tools.a.a.i;

// Referenced classes of package com.etermax.gamescommon:
//            b

public final class c extends com.etermax.gamescommon.b
{

    private Context e;

    private c(Context context)
    {
        e = context;
        d();
    }

    public static c a(Context context)
    {
        return new c(context);
    }

    private void d()
    {
        a = e;
        b = b.a(e);
        d = com.etermax.tools.j.c.a(e);
        c = i.a(e);
    }
}
