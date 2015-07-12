// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.os.AsyncTask;
import com.admarvel.android.b.c;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInterstitialAds

class b
    implements Runnable
{

    private WeakReference a;
    private String b;

    public void run()
    {
        if (AdMarvelInterstitialAds.access$000() != null)
        {
            AdMarvelInterstitialAds.access$000().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else
        if (a.get() != null && b != null)
        {
            c _tmp = AdMarvelInterstitialAds.access$002(new c(b, (Activity)a.get()));
            AdMarvelInterstitialAds.access$000().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            return;
        }
    }

    public (Activity activity, String s)
    {
        a = new WeakReference(activity);
        b = s;
    }
}
