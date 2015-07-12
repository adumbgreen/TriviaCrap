// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.AsyncTask;

// Referenced classes of package com.admarvel.android.ads:
//            ab

class b
    implements Runnable
{

    final ab a;
    private String b;

    public void run()
    {
        (new <init>(a, b)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public (ab ab, String s)
    {
        a = ab;
        super();
        b = s;
    }
}
