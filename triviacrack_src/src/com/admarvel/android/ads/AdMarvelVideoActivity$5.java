// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class a
    implements Runnable
{

    final AdMarvelVideoActivity a;

    public void run()
    {
        a a1;
        try
        {
            a1 = (a)a.h.get();
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        a1.d();
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
