// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.content.Context;
import com.etermax.gamescommon.datasource.d;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.e.b;
import com.etermax.gamescommon.notification.e;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            d

public final class j extends com.etermax.gamescommon.menu.a.d
{

    private static j f;
    private Context e;

    private j(Context context)
    {
        e = context;
    }

    public static j a(Context context)
    {
        if (f == null)
        {
            c c1 = c.a(null);
            f = new j(context.getApplicationContext());
            f.m();
            c.a(c1);
        }
        return f;
    }

    private void m()
    {
        c = d.a(e);
        b = b.a(e);
        a = i.a(e);
        d = com.etermax.gamescommon.notification.e.a(e);
        a();
    }
}
