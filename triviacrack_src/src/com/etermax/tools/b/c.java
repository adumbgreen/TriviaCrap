// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.b;

import android.content.Context;
import com.etermax.tools.f.d;

// Referenced classes of package com.etermax.tools.b:
//            a

public final class c extends a
{

    private static c d;
    private Context c;

    private c(Context context)
    {
        c = context;
    }

    public static c a(Context context)
    {
        if (d == null)
        {
            org.a.a.b.c c1 = org.a.a.b.c.a(null);
            d = new c(context.getApplicationContext());
            d.b();
            org.a.a.b.c.a(c1);
        }
        return d;
    }

    private void b()
    {
        a = c;
        b = com.etermax.tools.f.d.c(c);
        a();
    }
}
