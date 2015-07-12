// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            ac, d

class b
    implements Runnable
{

    private final WeakReference a;
    private final File b;

    public void run()
    {
        Context context;
label0:
        {
            context = (Context)a.get();
            if (context != null)
            {
                if (ac.a() < 11)
                {
                    break label0;
                }
                (new d(context, b)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
            }
            return;
        }
        (new d(context, b)).execute(new Object[0]);
    }

    public (Context context, File file)
    {
        a = new WeakReference(context);
        b = file;
    }
}
