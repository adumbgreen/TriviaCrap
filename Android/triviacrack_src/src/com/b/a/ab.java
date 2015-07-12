// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.b.a:
//            au, u, ah, af, 
//            am, aa, k, o, 
//            e, ad

public class ab
{

    private final Context a;
    private o b;
    private ExecutorService c;
    private e d;
    private ad e;
    private af f;
    private boolean g;
    private boolean h;

    public ab(Context context)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Context must not be null.");
        } else
        {
            a = context.getApplicationContext();
            return;
        }
    }

    public aa a()
    {
        Context context = a;
        if (b == null)
        {
            b = au.a(context);
        }
        if (d == null)
        {
            d = new u(context);
        }
        if (c == null)
        {
            c = new ah();
        }
        if (f == null)
        {
            f = af.a;
        }
        am am1 = new am(d);
        return new aa(context, new k(context, c, aa.a, b, d, am1), d, e, f, am1, g, h);
    }
}
