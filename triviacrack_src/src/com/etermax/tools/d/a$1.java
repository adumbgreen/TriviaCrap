// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.d;

import java.util.concurrent.Callable;

// Referenced classes of package com.etermax.tools.d:
//            a

class a
    implements Callable
{

    final a a;

    public Void a()
    {
label0:
        {
            synchronized (a)
            {
                if (com.etermax.tools.d.a.a(a) != null)
                {
                    break label0;
                }
            }
            return null;
        }
        com.etermax.tools.d.a.b(a);
        if (com.etermax.tools.d.a.c(a))
        {
            com.etermax.tools.d.a.d(a);
            com.etermax.tools.d.a.a(a, 0);
        }
        a1;
        JVM INSTR monitorexit ;
        return null;
        exception;
        a1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object call()
    {
        return a();
    }

    lable(a a1)
    {
        a = a1;
        super();
    }
}
