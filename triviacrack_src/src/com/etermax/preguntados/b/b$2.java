// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.b;

import org.a.a.b;

// Referenced classes of package com.etermax.preguntados.b:
//            b, c

class a extends b
{

    final c a[];
    final com.etermax.preguntados.b.b b;

    public void a()
    {
        try
        {
            com.etermax.preguntados.b.b.a(b, a);
            return;
        }
        catch (Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
        }
    }

    tionHandler(com.etermax.preguntados.b.b b1, String s, int i, String s1, c ac[])
    {
        b = b1;
        a = ac;
        super(s, i, s1);
    }
}
