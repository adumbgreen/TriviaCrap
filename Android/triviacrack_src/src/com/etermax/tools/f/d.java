// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.f;

import android.content.Context;
import com.etermax.tools.f.b.c;

// Referenced classes of package com.etermax.tools.f:
//            a

public final class d extends a
{

    private static d c;
    private Context b;

    private d(Context context)
    {
        b = context;
    }

    private void b()
    {
        a = com.etermax.tools.f.b.c.c(b);
        a();
    }

    public static d c(Context context)
    {
        if (c == null)
        {
            org.a.a.b.c c1 = org.a.a.b.c.a(null);
            c = new d(context.getApplicationContext());
            c.b();
            org.a.a.b.c.a(c1);
        }
        return c;
    }
}
