// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.AsyncTask;

// Referenced classes of package com.admarvel.android.ads:
//            h

class <init>
    implements Runnable
{

    public void run()
    {
        h h1 = new h();
        java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
        Object aobj[] = new Object[1];
        aobj[0] = (Object)null;
        h1.executeOnExecutor(executor, aobj);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
