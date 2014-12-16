// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui;

import org.a.a.b;

// Referenced classes of package com.etermax.preguntados.ui:
//            SplashActivity_

class a extends b
{

    final SplashActivity_ a;

    public void a()
    {
        try
        {
            SplashActivity_.a(a);
            return;
        }
        catch (Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
        }
    }

    (SplashActivity_ splashactivity_, String s, int i, String s1)
    {
        a = splashactivity_;
        super(s, i, s1);
    }
}
