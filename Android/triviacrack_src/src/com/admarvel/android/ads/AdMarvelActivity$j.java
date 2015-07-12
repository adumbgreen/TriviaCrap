// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import com.admarvel.android.util.Logging;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelAd

class b
    implements Runnable
{

    final AdMarvelActivity a;
    private final AdMarvelAd b;

    public void run()
    {
        try
        {
            (new <init>(a, b)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        AdMarvelActivity.q(a).sendEmptyMessage(0);
    }

    public (AdMarvelActivity admarvelactivity, AdMarvelAd admarvelad)
    {
        a = admarvelactivity;
        super();
        b = admarvelad;
    }
}
