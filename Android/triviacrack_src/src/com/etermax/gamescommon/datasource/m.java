// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            l

public final class m extends l
{

    private static m e;
    private Context d;

    private m(Context context)
    {
        d = context;
    }

    public static m a(Context context)
    {
        if (e == null)
        {
            c c1 = org.a.a.b.c.a(null);
            e = new m(context.getApplicationContext());
            e.c();
            org.a.a.b.c.a(c1);
        }
        return e;
    }

    private void c()
    {
        a = d;
        a();
    }
}
