// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon:
//            e

public final class h extends e
{

    private static h c;
    private Context b;

    private h(Context context)
    {
        b = context;
    }

    public static h a(Context context)
    {
        if (c == null)
        {
            c c1 = org.a.a.b.c.a(null);
            c = new h(context.getApplicationContext());
            c.b();
            org.a.a.b.c.a(c1);
        }
        return c;
    }

    private void b()
    {
        a = b;
        a();
    }
}
