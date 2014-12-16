// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.content.Context;
import org.a.a.b.c;

// Referenced classes of package com.etermax.tools.social.twitter:
//            a

public final class d extends a
{

    private static d d;
    private Context c;

    private d(Context context)
    {
        c = context;
    }

    public static d a(Context context)
    {
        if (d == null)
        {
            c c1 = org.a.a.b.c.a(null);
            d = new d(context.getApplicationContext());
            d.c();
            org.a.a.b.c.a(c1);
        }
        return d;
    }

    private void c()
    {
        a = c;
        a();
    }
}
