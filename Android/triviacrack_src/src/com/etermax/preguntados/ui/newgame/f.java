// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.content.Context;
import com.etermax.gamescommon.c.b;
import com.etermax.preguntados.datasource.e;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            e

public final class f extends com.etermax.preguntados.ui.newgame.e
{

    private Context d;

    private f(Context context)
    {
        d = context;
        b();
    }

    public static f a(Context context)
    {
        return new f(context);
    }

    private void b()
    {
        a = d;
        b = e.a(d);
        c = com.etermax.gamescommon.c.b.b(d);
    }
}
