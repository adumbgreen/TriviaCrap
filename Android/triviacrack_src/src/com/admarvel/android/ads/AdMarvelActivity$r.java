// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

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
        if (admarvelactivity == null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        p p1 = (p)((RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (p1 != null)
        {
            try
            {
                if (p1.isPlaying())
                {
                    p1.pause();
                    if (admarvelactivity.d && AdMarvelActivity.B(admarvelactivity) != null && AdMarvelActivity.B(admarvelactivity).length() > 0)
                    {
                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.B(admarvelactivity)).append("()").toString());
                        return;
                    }
                }
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
    }

    public View(AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelactivity);
        b = new WeakReference(admarvelinternalwebview);
    }
}
