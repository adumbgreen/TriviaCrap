// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.os.AsyncTask;
import com.admarvel.android.b.c;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView

class b
    implements Runnable
{

    private WeakReference a;
    private String b;

    public void run()
    {
        if (com.admarvel.android.ads.AdMarvelView.c() != null)
        {
            com.admarvel.android.ads.AdMarvelView.c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else
        if (a.get() != null && b != null)
        {
            AdMarvelView.a(new c(b, (Activity)a.get()));
            com.admarvel.android.ads.AdMarvelView.c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            return;
        }
    }

    public (Activity activity, String s)
    {
        a = new WeakReference(activity);
        b = s;
    }
}
