// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.c.a;

import android.content.Context;

// Referenced classes of package com.etermax.preguntados.c.a:
//            b

public final class c extends b
{

    private static c c;
    private Context b;

    private c(Context context)
    {
        b = context;
    }

    public static c a(Context context)
    {
        if (c == null)
        {
            org.a.a.b.c c1 = org.a.a.b.c.a(null);
            c = new c(context.getApplicationContext());
            c.b();
            org.a.a.b.c.a(c1);
        }
        return c;
    }

    private void b()
    {
    }
}
