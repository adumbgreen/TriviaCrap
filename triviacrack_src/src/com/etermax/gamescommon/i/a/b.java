// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.a;

import android.content.Context;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.tools.b.c;

// Referenced classes of package com.etermax.gamescommon.i.a:
//            a

public final class b extends a
{

    private Context f;

    private b(Context context)
    {
        f = context;
        c();
    }

    public static b a(Context context)
    {
        return new b(context);
    }

    private void c()
    {
        d = f;
        c = d.b(f);
        b = com.etermax.tools.b.c.a(f);
        a = com.etermax.gamescommon.login.datasource.b.a(f);
        a();
    }
}
