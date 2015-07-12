// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.a;

import android.os.AsyncTask;

// Referenced classes of package com.admarvel.android.a:
//            c, a

class <init>
    implements Runnable
{

    final a a;

    public void run()
    {
        c c1 = new c();
        java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
        Object aobj[] = new Object[1];
        aobj[0] = (Object)null;
        c1.executeOnExecutor(executor, aobj);
    }

    private (a a1)
    {
        a = a1;
        super();
    }

    a(a a1, a a2)
    {
        this(a1);
    }
}
