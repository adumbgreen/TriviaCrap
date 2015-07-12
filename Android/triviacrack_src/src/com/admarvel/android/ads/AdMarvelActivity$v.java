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

class c
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private float c;

    public void run()
    {
        AdMarvelActivity admarvelactivity;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelactivity = (AdMarvelActivity)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelactivity == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        RelativeLayout relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
        if (relativelayout == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        p p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (p1 != null)
        {
            try
            {
                p1.seekTo((int)(1000F * c));
                return;
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
    }

    public View(AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview, float f)
    {
        a = new WeakReference(admarvelactivity);
        b = new WeakReference(admarvelinternalwebview);
        c = f;
    }
}
