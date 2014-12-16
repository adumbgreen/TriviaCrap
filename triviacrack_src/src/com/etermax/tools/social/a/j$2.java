// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import org.a.a.b;

// Referenced classes of package com.etermax.tools.social.a:
//            j

class a extends b
{

    final j a;

    public void a()
    {
        try
        {
            j.a(a);
            return;
        }
        catch (Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
        }
    }

    ionHandler(j j1, String s, int i, String s1)
    {
        a = j1;
        super(s, i, s1);
    }
}
