// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            q, AdMarvelView

class l
    implements Runnable
{

    private final File a;
    private final WeakReference b;
    private final Map c;
    private final String d;
    private final String e;
    private final String f;
    private final int g;
    private final String h;
    private final WeakReference i;
    private final int j;
    private final String k;
    private final Handler l;

    public void run()
    {
        if (b.get() != null && i.get() != null)
        {
            q q1 = new q(a, (Context)b.get());
            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Object aobj[] = new Object[12];
            aobj[0] = c;
            aobj[1] = d;
            aobj[2] = e;
            aobj[3] = f;
            aobj[4] = Integer.valueOf(g);
            aobj[5] = h;
            aobj[6] = i.get();
            aobj[7] = Integer.valueOf(j);
            aobj[8] = k;
            aobj[9] = l;
            aobj[10] = Boolean.valueOf(((AdMarvelView)i.get()).b());
            aobj[11] = Boolean.valueOf(AdMarvelView.h((AdMarvelView)i.get()));
            q1.executeOnExecutor(executor, aobj);
        }
    }

    public (File file, Context context, Map map, String s, String s1, String s2, int i1, 
            String s3, AdMarvelView admarvelview, int j1, String s4, Handler handler)
    {
        b = new WeakReference(context);
        a = file;
        c = map;
        d = s;
        e = s1;
        f = s2;
        g = i1;
        h = s3;
        i = new WeakReference(admarvelview);
        j = j1;
        k = s4;
        l = handler;
    }
}
