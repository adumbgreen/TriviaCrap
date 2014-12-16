// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;


// Referenced classes of package com.etermax.gamescommon.menu.a:
//            d, g, f

public class i
    implements Runnable
{

    String a;
    f b;
    final d c;

    public i(d d1, String s, f f)
    {
        c = d1;
        super();
        a = s;
        b = f;
    }

    public void run()
    {
        d.a(c, null);
        d.a(c, new g(c, a, b));
        d.e(c).a(d.d(c));
    }
}
