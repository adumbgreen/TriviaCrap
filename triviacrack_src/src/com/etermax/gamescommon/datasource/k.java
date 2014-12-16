// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            j

public final class k extends j
{

    private static k c;
    private Context b;

    private k(Context context)
    {
        b = context;
    }

    public static k a(Context context)
    {
        if (c == null)
        {
            c c1 = org.a.a.b.c.a(null);
            c = new k(context.getApplicationContext());
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
