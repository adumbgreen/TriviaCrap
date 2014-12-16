// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.util.Log;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, p

class a
    implements Runnable
{

    private final WeakReference a;

    public void run()
    {
        AdMarvelActivity admarvelactivity = (AdMarvelActivity)a.get();
        if (admarvelactivity == null)
        {
            return;
        }
        RelativeLayout relativelayout;
        p p1;
        admarvelactivity.c = false;
        relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
        p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (p1 == null)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        p1.a();
        relativelayout.removeView(p1);
        if (AdMarvelActivity.z(admarvelactivity) != null)
        {
            AdMarvelActivity.f(admarvelactivity).removeCallbacks(AdMarvelActivity.z(admarvelactivity));
            AdMarvelActivity.a(admarvelactivity, null);
            return;
        }
        break MISSING_BLOCK_LABEL_112;
        Exception exception;
        exception;
        Logging.log(Log.getStackTraceString(exception));
    }

    public (AdMarvelActivity admarvelactivity)
    {
        a = new WeakReference(admarvelactivity);
    }
}
