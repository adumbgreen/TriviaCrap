// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.tabs;

import android.content.Context;

// Referenced classes of package com.etermax.gamescommon.dashboard.tabs:
//            a

public final class c extends a
{

    private static c b;
    private Context a;

    private c(Context context)
    {
        a = context;
    }

    public static c a(Context context)
    {
        if (b == null)
        {
            org.a.a.b.c c1 = org.a.a.b.c.a(null);
            b = new c(context.getApplicationContext());
            b.a();
            org.a.a.b.c.a(c1);
        }
        return b;
    }

    private void a()
    {
    }
}
