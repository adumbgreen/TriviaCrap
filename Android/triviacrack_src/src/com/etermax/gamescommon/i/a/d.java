// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.a;

import android.content.Context;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.tools.b.c;

// Referenced classes of package com.etermax.gamescommon.i.a:
//            c

public final class d extends com.etermax.gamescommon.i.a.c
{

    private Context f;

    private d(Context context)
    {
        f = context;
        e();
    }

    public static d a(Context context)
    {
        return new d(context);
    }

    private void e()
    {
        d = f;
        c = com.etermax.gamescommon.login.datasource.d.b(f);
        b = c.a(f);
        a = b.a(f);
        a();
    }
}
