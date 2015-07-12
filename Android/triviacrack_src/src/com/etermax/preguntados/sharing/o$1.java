// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import org.a.a.b;

// Referenced classes of package com.etermax.preguntados.sharing:
//            o, ShareView

class a extends b
{

    final ShareView a;
    final o b;

    public void a()
    {
        try
        {
            o.a(b, a);
            return;
        }
        catch (Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
        }
    }

    eView(o o1, String s, int i, String s1, ShareView shareview)
    {
        b = o1;
        a = shareview;
        super(s, i, s1);
    }
}
