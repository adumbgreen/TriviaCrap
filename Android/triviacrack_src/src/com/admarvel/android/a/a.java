// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.a;

import android.content.Context;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.a:
//            b, c, d

public class a
{

    private final b a;

    public com.admarvel.android.a.a(Context context)
    {
        a = new b(context);
        if (b() >= 11)
        {
            (new Handler()).post(new a());
            return;
        } else
        {
            c c1 = new c();
            Object aobj[] = new Object[1];
            aobj[0] = (Object)null;
            c1.execute(aobj);
            return;
        }
    }

    public static int b()
    {
        if (android.os.Build.VERSION.RELEASE.contains("1.5"))
        {
            return 3;
        } else
        {
            return d.a();
        }
    }

    public void a()
    {
        b b1 = a;
        Object aobj[] = new Object[1];
        aobj[0] = (Object)null;
        b1.execute(aobj);
    }

    private class a
        implements Runnable
    {

        final com.admarvel.android.a.a a;

        public void run()
        {
            c c1 = new c();
            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Object aobj[] = new Object[1];
            aobj[0] = (Object)null;
            c1.executeOnExecutor(executor, aobj);
        }

        private a()
        {
            a = com.admarvel.android.a.a.this;
            super();
        }

    }

}
