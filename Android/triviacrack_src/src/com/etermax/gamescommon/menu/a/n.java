// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            m

public final class n extends m
{

    private static n d;
    private Context c;

    private n(Context context)
    {
        c = context;
    }

    public static n a(Context context)
    {
        if (d == null)
        {
            c c1 = org.a.a.b.c.a(null);
            d = new n(context.getApplicationContext());
            d.c();
            org.a.a.b.c.a(c1);
        }
        return d;
    }

    private void c()
    {
    }
}
