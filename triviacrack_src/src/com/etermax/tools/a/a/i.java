// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.a;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.tools.a.a:
//            g

public final class i extends g
{

    private static i c;
    private Context b;

    private i(Context context)
    {
        b = context;
    }

    public static i a(Context context)
    {
        if (c == null)
        {
            c c1 = org.a.a.b.c.a(null);
            c = new i(context.getApplicationContext());
            c.d();
            org.a.a.b.c.a(c1);
        }
        return c;
    }

    private void d()
    {
        a = b;
        a();
    }
}
