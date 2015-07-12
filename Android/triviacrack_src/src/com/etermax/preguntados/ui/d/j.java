// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            i

public final class j extends i
{

    private static j b;
    private Context a;

    private j(Context context)
    {
        a = context;
    }

    private void a()
    {
    }

    public static j g(Context context)
    {
        if (b == null)
        {
            c c1 = c.a(null);
            b = new j(context.getApplicationContext());
            b.a();
            c.a(c1);
        }
        return b;
    }
}
