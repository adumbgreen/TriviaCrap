// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a.a;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.chat.a.a:
//            d

public final class f extends d
{

    private static f c;
    private Context b;

    private f(Context context)
    {
        b = context;
    }

    public static f a(Context context)
    {
        if (c == null)
        {
            c c1 = org.a.a.b.c.a(null);
            c = new f(context.getApplicationContext());
            c.d();
            org.a.a.b.c.a(c1);
        }
        return c;
    }

    private void d()
    {
        a = b;
    }
}
