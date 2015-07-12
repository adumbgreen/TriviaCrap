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
//            AdMarvelActivity, AdMarvelInternalWebView, p

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;

    public void run()
    {
        AdMarvelActivity admarvelactivity;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelactivity = (AdMarvelActivity)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelactivity == null) goto _L2; else goto _L1
_L1:
        if (admarvelinternalwebview == null)
        {
            return;
        }
        p p1 = (p)((RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (admarvelinternalwebview == null || p1 == null) goto _L4; else goto _L3
_L3:
        if (!admarvelactivity.d) goto _L6; else goto _L5
_L5:
        if (AdMarvelActivity.C(admarvelactivity) != null && AdMarvelActivity.C(admarvelactivity).length() > 0)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.C(admarvelactivity)).append("(").append((float)p1.getCurrentPosition() / 1000F).append(")").toString());
        }
_L4:
        try
        {
            AdMarvelActivity.f(admarvelactivity).postDelayed(AdMarvelActivity.z(admarvelactivity), 1000L);
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        return;
_L6:
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:AdApp.videoView().setCurrentTime(").append(p1.getCurrentPosition() / 1000).append(")").toString());
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (true) goto _L4; else goto _L2
_L2:
    }

    public iew(AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelactivity);
        b = new WeakReference(admarvelinternalwebview);
    }
}
