// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.content.Context;
import com.etermax.gamescommon.datasource.i;
import com.etermax.tools.f.d;

// Referenced classes of package com.etermax.gamescommon.social:
//            h, g

public final class j extends h
{

    private Context f;

    private j(Context context)
    {
        f = context;
        a();
    }

    public static j a(Context context)
    {
        return new j(context);
    }

    private void a()
    {
        e = f;
        a = com.etermax.tools.social.a.j.a(f);
        d = g.a(f);
        c = d.c(f);
        b = i.a(f);
    }
}
