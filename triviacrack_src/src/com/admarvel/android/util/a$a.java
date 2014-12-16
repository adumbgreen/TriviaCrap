// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import android.os.AsyncTask;
import android.util.Log;

// Referenced classes of package com.admarvel.android.util:
//            Logging, a

class c
    implements Runnable
{

    final a a;
    private final String b;
    private final int c;

    public void run()
    {
        try
        {
            c c1 = new <init>(a, b);
            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Integer ainteger[] = new Integer[1];
            ainteger[0] = Integer.valueOf(c);
            c1.executeOnExecutor(executor, ainteger);
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
    }

    public ing(a a1, String s, int i)
    {
        a = a1;
        super();
        b = s;
        c = i;
    }
}
