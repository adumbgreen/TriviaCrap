// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            k, AdMarvelInternalWebView

class f
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private final String c;
    private final String d;
    private final int e;
    private final File f;

    public void run()
    {
        if (a.get() != null && b.get() != null)
        {
            k k1 = new k((Context)a.get(), (AdMarvelInternalWebView)b.get(), f);
            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Object aobj[] = new Object[3];
            aobj[0] = c;
            aobj[1] = d;
            aobj[2] = Integer.valueOf(e);
            k1.executeOnExecutor(executor, aobj);
        }
    }

    public bView(Context context, AdMarvelInternalWebView admarvelinternalwebview, String s, String s1, int i, File file)
    {
        a = new WeakReference(context);
        b = new WeakReference(admarvelinternalwebview);
        c = s;
        d = s1;
        e = i;
        f = file;
    }
}
