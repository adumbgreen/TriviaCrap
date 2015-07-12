// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.notification:
//            d

public final class e extends d
{

    private static e b;
    private Context a;

    private e(Context context)
    {
        a = context;
    }

    public static e a(Context context)
    {
        if (b == null)
        {
            c c1 = c.a(null);
            b = new e(context.getApplicationContext());
            b.a();
            c.a(c1);
        }
        return b;
    }

    private void a()
    {
    }
}
