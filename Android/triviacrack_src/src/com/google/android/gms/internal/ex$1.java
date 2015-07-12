// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            ex, am, dt, fz, 
//            fa, gb, ak, fx, 
//            gc

final class e
    implements Runnable
{

    final Context a;
    final dt b;
    final fa c;
    final gc d;
    final String e;

    public void run()
    {
        fz fz1 = fz.a(a, new am(), false, false, null, b.k);
        fz1.setWillNotDraw(true);
        c.a(fz1);
        gb gb1 = fz1.f();
        gb1.a("/invalidRequest", c.a);
        gb1.a("/loadAdURL", c.b);
        gb1.a("/log", ak.g);
        gb1.a(d);
        fx.a("Loading the JS library.");
        fz1.loadUrl(e);
    }

    (Context context, dt dt1, fa fa1, gc gc, String s)
    {
        a = context;
        b = dt1;
        c = fa1;
        d = gc;
        e = s;
        super();
    }
}
