// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            ad

class c
    implements Runnable
{

    final ad a;
    private final WeakReference b;
    private String c;

    public void run()
    {
        if (b.get() != null)
        {
            c c1 = new <init>(a, (ImageView)b.get());
            java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            String as[] = new String[1];
            as[0] = c;
            c1.executeOnExecutor(executor, as);
        }
    }

    public (ad ad, ImageView imageview, String s)
    {
        a = ad;
        super();
        b = new WeakReference(imageview);
        c = s;
    }
}
