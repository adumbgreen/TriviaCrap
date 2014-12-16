// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.a;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.a:
//            a

public final class b extends a
{

    private static b c;
    private Context b;

    private b(Context context)
    {
        b = context;
    }

    public static b a(Context context)
    {
        if (c == null)
        {
            c c1 = org.a.a.b.c.a(null);
            c = new b(context.getApplicationContext());
            c.a();
            org.a.a.b.c.a(c1);
        }
        return c;
    }

    private void a()
    {
        a = b;
    }
}
