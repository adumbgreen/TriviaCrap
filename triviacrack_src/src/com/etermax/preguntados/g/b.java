// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.g;

import android.content.Context;
import com.etermax.gamescommon.h;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.g:
//            a

public final class b extends a
{

    private static b H;
    private Context G;

    private b(Context context)
    {
        G = context;
    }

    public static b a(Context context)
    {
        if (H == null)
        {
            c c1 = org.a.a.b.c.a(null);
            H = new b(context.getApplicationContext());
            H.c();
            org.a.a.b.c.a(c1);
        }
        return H;
    }

    private void c()
    {
        b = G;
        a = h.a(G);
    }
}
