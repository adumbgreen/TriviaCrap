// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class c
    implements Runnable
{

    final AdMarvelVideoActivity a;
    private final WeakReference b;
    private final WeakReference c;

    public void run()
    {
        if (c.get() != null && b.get() != null)
        {
            c c1 = new <init>(a, (ImageView)c.get());
            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            String as[] = new String[1];
            as[0] = (String)b.get();
            c1.executeOnExecutor(executor, as);
        }
    }

    public (AdMarvelVideoActivity admarvelvideoactivity, ImageView imageview, String s)
    {
        a = admarvelvideoactivity;
        super();
        b = new WeakReference(s);
        c = new WeakReference(imageview);
    }
}
